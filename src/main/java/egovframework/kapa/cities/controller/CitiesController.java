package egovframework.kapa.cities.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.domain.Cites_File;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.domain.Notice_File;
import egovframework.kapa.file.domain.CitesFileVO;
import egovframework.kapa.file.domain.FileVO;
import egovframework.kapa.file.domain.NoticeFileVO;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.service.ImplementerService;

@Controller
@RequestMapping("/cities")
public class CitiesController {

	@Autowired
	DecisionService decisionService;
	
	@Autowired
	ImplementerService implementerService;
	
	/*
	 * cities
	 */
	@GetMapping("/announcement.do")
	public String citiesList(Model model) {
		
		//current page
		model.addAttribute("currentPage", "acceptance");
		
		return "cities/list";
	}
	
	@GetMapping("/announcement/view.do")
	public String citiesViewPage(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
        model.addAttribute("decisionId", decisionId);
        
        Decision decison = decisionService.getDecisionView(decisionId);
        System.out.println(decison);
        
        int masterId = decison.getMasterID();
        
		ApplicationList applicationVo = implementerService.getApplicationView(masterId);
        model.addAttribute("avo", applicationVo);
        
        Decision_Notice decisionNotice = decisionService.getDecisionNoticeView(decisionId);
        model.addAttribute("decisionNotice", decisionNotice);
        
        //찐 마스터 아이디
        int a = Integer.parseInt(String.valueOf(decisionService.getMasterId(decisionId)));
        
        List<Notice_File> noticeFiles = decisionService.getNoticeFileList(Long.valueOf(a));
        System.out.println(noticeFiles);
		List<NoticeFileVO> fileList = new ArrayList();
		for (int i=0; i<noticeFiles.size(); i++) {
			FileVO file = decisionService.getFileByDeicisionFileSeq(noticeFiles.get(i).getFileSeq());	
			NoticeFileVO fileVO = new NoticeFileVO();
			fileVO.setFileDescription(noticeFiles.get(i).getFileDescription());
			fileVO.setSeqNo(noticeFiles.get(i).getFileSeq());
			fileVO.setFileType(noticeFiles.get(i).getFileType());
			fileVO.setFileNameOri(file.getFileNameOri());
			fileList.add(fileVO);
		}	
		System.out.println("======================================");
		System.out.println("fileLength!");
		System.out.println(noticeFiles.size());
		System.out.println(noticeFiles);
		System.out.println("======================================");

        
        
		model.addAttribute("noticeFiles", fileList);
		
		
		  List<Cites_File> citesFiles = decisionService.getCitesFileList(Long.valueOf(a));
	        System.out.println(citesFiles);
			List<CitesFileVO> fileList2= new ArrayList();
			for (int i=0; i<citesFiles.size(); i++) {
				FileVO file = decisionService.getFileByDeicisionFileSeq(citesFiles.get(i).getFileSeq());	
				CitesFileVO fileVO = new CitesFileVO();
				fileVO.setFileDescription(citesFiles.get(i).getFileDescription());
				fileVO.setSeqNo(citesFiles.get(i).getFileSeq());
				fileVO.setFileType(citesFiles.get(i).getFileType());
				fileVO.setFileNameOri(file.getFileNameOri());
				fileList2.add(fileVO);
			}	
			System.out.println("======================================");
			System.out.println("cites fileLength!");
			System.out.println(citesFiles.size());
			System.out.println(citesFiles);
			System.out.println("======================================");

	        
	        
			model.addAttribute("citesFiles", fileList2);
		
		
        
		return "cities/view";
	}
	
	
	@GetMapping("/announcement/write.do")
	public String citiesWritePage(HttpServletRequest request,Model model) {
		System.out.println("======================================");
		System.out.println("citiesWritePage starts!!!");
		System.out.println("======================================");

		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
		//찐 마스터 아이디
		int a = Integer.parseInt(String.valueOf(decisionService.getMasterId(decisionId)));
		System.out.println(a);
        model.addAttribute("decisionId", decisionId);
        
        Decision decison = decisionService.getDecisionView(decisionId);
        System.out.println(decison);
        
        int masterId = decison.getMasterID();
        
		ApplicationList applicationVo = implementerService.getApplicationView(masterId);
        model.addAttribute("avo", applicationVo);
        
        Decision_Notice decisionNotice = decisionService.getDecisionNoticeView(decisionId);
        model.addAttribute("decisionNotice", decisionNotice);
        		
        
        List<Notice_File> noticeFiles = decisionService.getNoticeFileList(Long.valueOf(a));
        System.out.println(noticeFiles);
		List<NoticeFileVO> fileList = new ArrayList();
		for (int i=0; i<noticeFiles.size(); i++) {
			FileVO file = decisionService.getFileByDeicisionFileSeq(noticeFiles.get(i).getFileSeq());	
			NoticeFileVO fileVO = new NoticeFileVO();
			fileVO.setFileDescription(noticeFiles.get(i).getFileDescription());
			fileVO.setSeqNo(noticeFiles.get(i).getFileSeq());
			fileVO.setFileType(noticeFiles.get(i).getFileType());
			fileVO.setFileNameOri(file.getFileNameOri());
			fileList.add(fileVO);
		}	
		System.out.println("======================================");
		System.out.println("fileLength!");
		System.out.println(noticeFiles.size());
		System.out.println(noticeFiles);
		System.out.println("======================================");

        
        
		model.addAttribute("noticeFiles", fileList);

        
        
        
		return "cities/write";
	}
	
	
	


	
}
