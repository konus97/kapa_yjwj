package egovframework.kapa.file.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.decision.mapper.DecisionMapper;
import egovframework.kapa.file.domain.FileVO;
import egovframework.kapa.file.mapper.FileMapper;

@Service
public class FileService {

	@Autowired
	FileMapper fileMapper;


	public Long fileUpload(HttpServletRequest request, FileVO fileVO, Boolean isLocal) throws Exception{
		
		Long getFileSeq = 0L;
		
		//String filePath = request.getServletContext().getRealPath(File.separator)+ "file" + File.separator + "download";
		String filePath = "download/";
		System.out.println("=============================================");
		System.out.println("FILE PATH ::" + filePath);
		System.out.println("=============================================");

		File fileFileSaveDir = new File(
			//	request.getServletContext().getRealPath(File.separator)+ "file"
				filePath
				);
		if (!fileFileSaveDir.exists()) {
			fileFileSaveDir.mkdir();
		} 
		
		File fileSaveDir = new File(filePath);
		if (!fileSaveDir.exists()) {
			 
		} 
		
		MultipartFile file = fileVO.getMpfile();
		String orgFileNm = file.getOriginalFilename();		
		//orgFileNm = new String(file.getOriginalFilename().getBytes("8859_1"), "UTF-8"); //한글꺠짐 방지
		
		fileVO.setFileNameOri(orgFileNm);
		//계속 빈값이 넘어와 에러를 발생시켜서 막아놓음
		if(orgFileNm.trim().isEmpty()) {
			return null;
		}
		String fileExt = orgFileNm.substring(orgFileNm.lastIndexOf('.')+1);
		String fileName = orgFileNm.substring(0, orgFileNm.lastIndexOf('.'));
		String fullFileName =fileName +"_"+ new SimpleDateFormat("yyyyMMddhhmm").format(new Date()) + "." + fileExt;
		
		try {
			file.transferTo(new File(filePath + File.separator + fullFileName));
			fileVO.setFileNameChange(fullFileName);
			fileVO.setFileNameExtension(fileExt);
			fileVO.setFileFolder(filePath);
			fileVO.setDelCheck(0);
			fileVO.setRegdate(LocalDateTime.now());
			fileVO.setUptdate(LocalDateTime.now());
			
			getFileSeq=fileMapper.save(fileVO);
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return getFileSeq;
	}

	
	
	
	
	public FileVO getFileInfo(Long viewSeq) {
		return fileMapper.getFileInfo(viewSeq);
	}
    
	


}