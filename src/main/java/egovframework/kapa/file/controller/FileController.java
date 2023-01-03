package egovframework.kapa.file.controller;

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

	@RequestMapping(value = "/uploadContentFile/decision", method = RequestMethod.POST)
	public String uploadDecisionFile(MultipartHttpServletRequest req) throws Exception {
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
					// DecisionId가 없어서 임시 값 넣어둠.
					decisionFile.setDecisionId(masterId);
					decisionFile.setFileType(Integer.parseInt(typeAndRank.split("-")[0]));
					decisionFile.setFileSeq((int) (getFileInfo.getSeqNo()));
					decisionFile.setDelCheck(0);
					decisionFile.setRank(Integer.parseInt(typeAndRank.split("-")[1]));
					decisionFile.setRegdate(LocalDate.now().toString());
					decisionFile.setFileDescription(map.get(typeAndRank));
					decisionService.insertDecisionFile(decisionFile);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return "redirect:/implementer/application.do";
	}

	@GetMapping("/file/download")
	public void download(HttpServletResponse response, @RequestParam Long seqNo) throws Exception {
		try {
			FileVO getFileInfo = fileService.getFileInfo(seqNo);
			String path = getFileInfo.getFileFolder() + File.separator + getFileInfo.getFileNameChange();
			File file = new File(path);
			response.setHeader("Content-Disposition", "attachment;filename=" + file.getName()); // 다운로드 되거나 로컬에 저장되는 용도로
																								// 쓰이는지를 알려주는 헤더
			FileInputStream fileInputStream = new FileInputStream(path); // 파일 읽어오기
			OutputStream out = response.getOutputStream();

			int read = 0;
			byte[] buffer = new byte[1024];
			while ((read = fileInputStream.read(buffer)) != -1) { // 1024바이트씩 계속 읽으면서 outputStream에 저장, -1이 나오면 더이상 읽을
																	// 파일이 없음
				out.write(buffer, 0, read);
			}
			fileInputStream.close();
			out.close();
		} catch (Exception e) {
			throw new Exception("download error");
		}
	}

	@GetMapping("/file")
	@ResponseBody
	public String readFile(@RequestParam Long seqNo) throws Exception {
		String url = new String();

		try {
			FileVO getFileInfo = fileService.getFileInfo(seqNo);

			url = getFileInfo.getFileFolder() + File.separator + getFileInfo.getFileNameChange();

		} catch (Exception e) {
			throw new Exception("download error");
		}

		return url;
	}

}
