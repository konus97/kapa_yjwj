package egovframework.kapa.file.controller;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.domain.Decision_File;
import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.file.domain.FileVO;
import egovframework.kapa.file.domain.SignUpFileDTO;
import egovframework.kapa.file.service.FileService;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class FileController {

	@Autowired
	FileService fileService;

	@Autowired
	DecisionService decisionService;

	@RequestMapping("/uploadContentFile")
	@ResponseBody
	public Map<String, Object> uploadContentFile(MultipartHttpServletRequest req) throws Exception {

		System.out.println("1");

		HashMap<String, Object> resultFinal = new HashMap<String, Object>();

		System.out.println("파일 업로드 시작");
		Iterator<String> itr = req.getFileNames();

		boolean isLocal = false;

		FileVO fileVO = new FileVO();
		fileVO.setRegdate(LocalDateTime.now());

		String requestUrl = new String(req.getRequestURL());
		System.out.println(requestUrl);

		if (requestUrl.contains("localhost") || requestUrl.contains("127.0.0.1")) {
			isLocal = true;
		}

		while (itr.hasNext()) {
			MultipartFile mpf = req.getFile(itr.next());

			fileVO.setMpfile(mpf);
			Long newFileInfo = fileService.fileUpload(req, fileVO, isLocal);
			FileVO getFileInfo = fileService.getFileInfo(newFileInfo);
			System.out.println("new!!!");
			System.out.println(newFileInfo);
			// System.out.println(newFileInfo);
			resultFinal.put("fileInfo", getFileInfo);
		}

		return resultFinal;
	}

	//LTIS 입력정보 확인 첨부파일 업로드
	@RequestMapping(value = "/uploadContentFile/decision", method = RequestMethod.POST)
	public String uploadDecisionFile(MultipartHttpServletRequest req) throws Exception {
		 System.out.println("===============LTIS 입력정보 확인 첨부파일 업로드===============");
		req.setCharacterEncoding("UTF-8");
		HashMap<String, Object> resultFinal = new HashMap<String, Object>();
		Map<String, String> map = new HashMap();
		boolean isLocal = false;
		String requestUrl = new String(req.getRequestURL());
		Long masterId = 6050133L;
		if (requestUrl.contains("localhost") || requestUrl.contains("127.0.0.1")) {
			isLocal = true;
		}

		try {
			Iterator<String> fileNames = req.getFileNames();
			Enumeration<String> parameters = req.getParameterNames();
			
			
			while (parameters.hasMoreElements()) {
				String nextElement = parameters.nextElement();
				if (nextElement.trim().length() > 0 && nextElement.equals("_csrf") == false && nextElement.equals("masterId") == false) {
					map.put(nextElement.substring(5), req.getParameter(nextElement));
				}
				if(nextElement.equals("masterId")){
					masterId = Long.parseLong(req.getParameter("masterId"));
				}
			}
			System.out.println("masterId 바뀌었나요 " + masterId);
			while (fileNames.hasNext()) {
				String fileName = fileNames.next();
				if (req.getFile(fileName) != null && req.getFile(fileName).getSize() > 0) {
					FileVO fileVO = new FileVO();
					fileVO.setRegdate(LocalDateTime.now());
					MultipartFile mpf = req.getFile(fileName);
					fileVO.setMpfile(mpf);
					Long newFileInfo = fileService.fileUpload(req, fileVO, isLocal);
					
					String typeAndRank = fileName.substring(9);
					FileVO getFileInfo = fileService.getFileInfo(newFileInfo);
					Decision_File decisionFile = new Decision_File();

					decisionFile.setDecisionId(masterId);
					decisionFile.setFileType(Integer.parseInt(typeAndRank.split("-")[0]));
					decisionFile.setFileSeq((int) (getFileInfo.getSeqNo()));
					decisionFile.setDelCheck(0);
					decisionFile.setRank(Integer.parseInt(typeAndRank.split("-")[1]));
					decisionFile.setRegdate(LocalDate.now().toString());
					String description = map.get(typeAndRank);
					System.out.println("====================================================================");
					System.out.println(new String(description.getBytes("8859_1"),"utf-8"));
					System.out.println("====================================================================");

					decisionFile.setFileDescription(new String(description.getBytes("8859_1"),"utf-8"));
					decisionService.insertDecisionFile(decisionFile);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return "redirect:/implementer/application.do";
	}

//	@GetMapping("/file/download")
//	public void download(HttpServletResponse response, @RequestParam Long seqNo) throws Exception {
//		System.out.println("실행이된다!");
//		try {
//			FileVO getFileInfo = fileService.getFileInfo(seqNo);
//			System.out.println(getFileInfo);
//			System.out.println(URLEncoder.encode(getFileInfo.getFileNameOri(),"UTF-8"));
//				
//			byte fileByte[] = FileUtils.readFileToByteArray(new File(getFileInfo.getFileFolder()+getFileInfo.getFileNameChange()+getFileInfo.getFileNameExtension()));
//			System.out.println("여기를 돈다");
//			System.out.println("sda"+ fileByte.length);
//			response.setContentType("application/octet-stream");
//			response.setContentLength(fileByte.length);
//			response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(getFileInfo.getFileNameOri(),"UTF-8")+"\";");
//			response.setHeader("Content-Transfer-Encoding", "binary");
//			response.getOutputStream().write(fileByte);
//			
//			response.getOutputStream().flush();
//			response.getOutputStream().close();
//		}
//			
//		 catch (Exception e) {
//			throw new Exception("download error");
//		}
//	}
	
	@RequestMapping(value = "/file/download")
    public void downFile(@RequestParam Long seqNo, HttpServletResponse response, HttpServletRequest request) throws Exception{
       
		FileVO getFileInfo = fileService.getFileInfo(seqNo);
		String storedFileName = getFileInfo.getFileNameChange();
		String originalFileName = getFileInfo.getFileNameOri();
		//String path = getFileInfo.getFileFolder();
		/*
		 * String filePath = request.getServletContext().getRealPath(File.separator)+
		 * "files" + File.separator + "download"; String filePath2 =
		 * "C:\\Users\\pc\\Desktop\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\kapa_seoulfiles\\download\\";
		 */
		String filePath = request.getServletContext().getRealPath(File.separator)+ "file" + File.separator + "download"+"\\";

       byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File(filePath+storedFileName));
       
       response.reset();
       response.setHeader("Content-Disposition", "attachment;filename="+originalFileName+"");
       response.setContentType("application/octet-stream");
       response.setContentLength(fileByte.length);
       response.getOutputStream().write(fileByte);
       response.getOutputStream().flush();
       response.getOutputStream().close();
       
    }

	@GetMapping("/file")
	@ResponseBody
	public String readFile(@RequestParam Long seqNo) throws Exception {
		String url = new String();
		System.out.println("실행이되었다~");	
		try {
			FileVO getFileInfo = fileService.getFileInfo(seqNo);

			url = getFileInfo.getFileFolder() + File.separator + getFileInfo.getFileNameChange();

		} catch (Exception e) {
			throw new Exception("download error");
		}

		return url;
	}

}
