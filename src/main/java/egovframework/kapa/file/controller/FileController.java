package egovframework.kapa.file.controller;

import java.io.File;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.domain.Decision_File;
import egovframework.kapa.domain.Opinion_File;
import egovframework.kapa.file.domain.FileVO;
import egovframework.kapa.file.service.FileService;

@Controller
public class FileController {

	@Autowired
	FileService fileService;

	@Autowired
	DecisionService decisionService;
	
	//일반 첨부파일 업로드 시
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
	
	
		// 열람공고 등록 첨부파일 업로드
		@RequestMapping(value = "/uploadContentFile/열람공고", method = RequestMethod.POST)
		public String uploadAnnouncementFile(MultipartHttpServletRequest req) throws Exception {
			 System.out.println("===============열람공고 등록 첨부파일 업로드===============");
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
				
				System.out.println("masterId :" +  masterId);
				
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
						// decisionFile -> 열람공고 바라보는 파일 확인 해야함 
						
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}	
			return "redirect:/implementer/application.do";
		}
		
		
		//재결의견작성 첨부파일 업로드
		@RequestMapping(value = "/uploadContentFile/opinion", method = RequestMethod.POST)
		@ResponseBody
		public  Map<String,Object> uploadOpinionFile(MultipartHttpServletRequest req) throws Exception {
			 System.out.println("===============재결의견작성 첨부파일 업로드===============");
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
					
					System.out.println(nextElement);
					
					if (nextElement.trim().length() > 0 && nextElement.equals("_csrf") == false && nextElement.equals("masterId") == false) {
						map.put(nextElement.substring(5), req.getParameter(nextElement));
					}
					if(nextElement.equals("masterId")){
						masterId = Long.parseLong(req.getParameter("masterId"));
					}
				}
				System.out.println("재결의견작성 ::: " + masterId);
				while (fileNames.hasNext()) {
					String fileName = fileNames.next();
					if (req.getFile(fileName) != null && req.getFile(fileName).getSize() > 0) {
						FileVO fileVO = new FileVO();
						fileVO.setRegdate(LocalDateTime.now());
						MultipartFile mpf = req.getFile(fileName);
						fileVO.setMpfile(mpf);
						Long newFileInfo = fileService.fileUpload(req, fileVO, isLocal);
						String typeAndRank = fileName.substring(9);
						System.out.println("typeAndRank :::"+typeAndRank);

						FileVO getFileInfo = fileService.getFileInfo(newFileInfo);
						Opinion_File opinionFile = new Opinion_File();

						opinionFile.setDecisonId(masterId);
						opinionFile.setFileType(Integer.parseInt(typeAndRank.split("-")[0]));
						opinionFile.setRank(Integer.parseInt(typeAndRank.split("-")[1]));
						if(typeAndRank.split("-")[2] != null || ! (typeAndRank.split("-")[2].equals(""))) {
							opinionFile.setFileDescription((typeAndRank.split("-")[2]));
						}else {
							opinionFile.setFileDescription("pdf");
						}
						
						opinionFile.setReptOwnrSeq(Integer.parseInt(typeAndRank.split("-")[3]));
						opinionFile.setReptSeq(Integer.parseInt(typeAndRank.split("-")[4]));


						opinionFile.setFileSeq((int) (getFileInfo.getSeqNo()));
						opinionFile.setDelCheck(0);
						opinionFile.setRegdate(LocalDate.now().toString());

						resultFinal.put("seqNo", Integer.parseInt(typeAndRank.split("-")[0]));
						resultFinal.put("fileNameOri", getFileInfo.getFileNameOri());
						System.out.println("====================================");
						System.out.println(getFileInfo.getFileNameOri());
						System.out.println("====================================");
						
						decisionService.insertOpinionFile(opinionFile);

					}
				}
			
			
			} catch (Exception e) {
				resultFinal.put("msg", "fail");

				e.printStackTrace();
			}	
			return resultFinal;
		}
	
	


	
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
       originalFileName = new String(originalFileName.getBytes("UTF-8"), "ISO-8859-1");
       response.setHeader("Content-Disposition", "attachment;filename="+originalFileName+"");
       response.setContentType("application/octet-stream");
       response.setCharacterEncoding("utf-8");
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
