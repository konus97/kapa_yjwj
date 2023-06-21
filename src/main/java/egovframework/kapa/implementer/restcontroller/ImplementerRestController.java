package egovframework.kapa.implementer.restcontroller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.decision.dto.AnnouncementDTO;
import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Decision_Opinion_Item;
import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.domain.Search;
import egovframework.kapa.file.domain.FileVO;
import egovframework.kapa.file.domain.OpinionFileVO;
import egovframework.kapa.file.service.FileService;
import egovframework.kapa.implementer.domain.ApplicationLand;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import egovframework.kapa.implementer.dto.ApplicationGoodsDTO;
import egovframework.kapa.implementer.dto.ApplicationLandDTO;
import egovframework.kapa.implementer.service.ImplementerService;
import egovframework.kapa.util.StrUtil;

@RestController
@RequestMapping("/api/implementer")
public class ImplementerRestController {

	@Autowired
	ImplementerService implementerService;

	@Autowired
	DecisionService decisionService;

	@Autowired
	FileService fileService;

	/*
	 * application List
	 */
	@RequestMapping(value = "/application/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getApplicationList(@RequestParam("cpage") String cpage, Authentication auth) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();
		
		Search search = new Search();
		String userId = auth.getName(); // 유저 아이디
		String userAuth = auth.getAuthorities().toString(); // 유저 권한
		userAuth = userAuth.replace("[","").replace("]",""); 

		// page cpage
		int pageNum = 1;
		int rowItem = 10;

		try {
			pageNum = Integer.parseInt(cpage);
			System.out.println("getApplicationList::::::" + pageNum);
			search.setUserAuthority(userAuth);
			search.setUserId(userId);
			
			// 페이징 계산
			int listCnt = implementerService.getImplementerCnt(search);
			System.out.println("listCnt : " + listCnt);
			search.pageInfo(pageNum, rowItem, listCnt);
			System.out.println("초기 search : " + search);
			// 값 넣기
			List<ApplicationList> pagingResult = implementerService.getImplementerList(search);
			System.out.println("리스트 컨트롤러 첫번째 리스트:::::::::::" + pagingResult);
			List<ApplicationDTO> formatterList = implementerService.getImplementerListFormatter(pagingResult);
			System.out.println("LIST!" + formatterList);
			resultFinal.put("list", formatterList);
			resultFinal.put("totalPage", search.getPageCnt());
			resultFinal.put("allCount", listCnt);
		} catch (Exception e) {

			pageNum = 1;

			System.out.println("\n\ne.getMessage()\n" + e.getMessage());
			System.out.println("\n\ne.toString()\n" + e.toString());
			System.out.println("\n\ne.printStackTrace()");
			e.printStackTrace();
		}

		return resultFinal;

	}

	/*
	 * application List Search
	 */
	@RequestMapping(value = "/application/searchlist", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getApplicationListSearch(@RequestParam Map<Object, Object> paramMap) {
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		System.out.println("LTIS 입력정보 조회 SEARCH PARAM :::" + paramMap);
		// 검색 조건값 정의
		Search search = new Search();
		// 검색 조건값 세팅
		search.setNumOrname(paramMap.get("numOrname").toString());
		search.setStartDate(paramMap.get("startDate").toString());
		search.setEndDate(paramMap.get("endDate").toString());
		search.setSubject(paramMap.get("subject").toString());
		search.setCode(paramMap.get("code").toString());
		search.setPart(paramMap.get("part").toString());
		search.setName(paramMap.get("name").toString());
		search.setCheckvalue(paramMap.get("checkvalue").toString());

		System.out.println("search ::: " + search);
		// 페이징 설정
		int pageNum = 1;
		int rowItem = 10;

		try {

			// 페이징 계산
			pageNum = Integer.parseInt(paramMap.get("cpage").toString());
			int listCnt = implementerService.getImplementerCnt(search);

			search.pageInfo(pageNum, rowItem, listCnt);

			// 검색 결과
			List<ApplicationList> pagingResult = implementerService.getImplementerList(search);
			List<ApplicationDTO> formatterList = implementerService.getImplementerListFormatter(pagingResult);

			// 재결 진행 상황 체크할 경우
			if (!search.getCheckvalue().equals("") || search.getCheckvalue() == null) {

				String[] checkValue = search.getCheckvalue().split(",");
				System.out.println(checkValue);
				List<ApplicationDTO> formatterList2 = new ArrayList<ApplicationDTO>();

				for (int i = 0; i < checkValue.length; i++) {
					for (int k = 0; k < formatterList.size(); k++) {
						if (Integer.parseInt(checkValue[i]) == formatterList.get(k).getDecisionState()) {
							formatterList2.add(formatterList.get(k));
						}

					}
				}

				pageNum = Integer.parseInt(paramMap.get("cpage").toString());
				int listCnt2 = formatterList2.size();

				search.pageInfo(pageNum, rowItem, listCnt2);

				resultFinal.put("list", formatterList2);
				resultFinal.put("totalPage", search.getPageCnt());
				resultFinal.put("allCount", listCnt2);
			} else {
				resultFinal.put("list", formatterList);
				resultFinal.put("totalPage", search.getPageCnt());
				resultFinal.put("allCount", listCnt);
			}

		} catch (Exception e) {
			pageNum = 1;

			System.out.println("\n\ne.getMessage()\n" + e.getMessage());
			System.out.println("\n\ne.toString()\n" + e.toString());
			System.out.println("\n\ne.printStackTrace()");
			e.printStackTrace();
		}

		return resultFinal;

	}

	/*
	 * application List
	 */
	@RequestMapping(value = "/opinion/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getOpinionList(@RequestParam("cpage") String cpage) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();

		// page cpage
		int pageNum = 1;
		int rowItem = 10;

		try {
			pageNum = Integer.parseInt(cpage);
			System.out.println("getOpinionList::::::" + pageNum);

			// 페이징 계산
			int listCnt = implementerService.getOpinionCnt(search);
			search.pageInfo(pageNum, rowItem, listCnt);

			// 값 넣기
			List<Decision> pagingResult = implementerService.getOpinionList(search);
			List<AnnouncementDTO> formatterList = implementerService.getOpinionFormatter(pagingResult);

			resultFinal.put("list", formatterList);
			resultFinal.put("totalPage", search.getPageCnt());
			resultFinal.put("allCount", listCnt);

		} catch (Exception e) {
			pageNum = 1;

			System.out.println("\n\ne.getMessage()\n" + e.getMessage());
			System.out.println("\n\ne.toString()\n" + e.toString());
			System.out.println("\n\ne.printStackTrace()");
			e.printStackTrace();
		}

		return resultFinal;

	}

	/*
	 * 재결 접수
	 */
	@RequestMapping(value = "/decision", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity decisionSave(@RequestBody String data) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();
		JSONObject json = new JSONObject(data);

		try {
			System.out.println("saveStart!");
			implementerService.saveDecision(data);
			System.out.println("saveEnd!");
			resultFinal.put("msg", "Complete");
		} catch (Exception e) {
			System.out.println("\n\ne.getMessage()\n" + e.getMessage());
			System.out.println("\n\ne.toString()\n" + e.toString());
			System.out.println("\n\ne.printStackTrace()");
			e.printStackTrace();
		}
		System.out.println("return1111");
		return ResponseEntity.ok(resultFinal);
	}

	@RequestMapping(value = "/opinion", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity opinionComplete(@RequestBody String data) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();
		JSONObject json = new JSONObject(data);

		try {
			implementerService.completeOpinion(data);
			implementerService.insertRegister(data);
			resultFinal.put("msg", "Complete");
		} catch (Exception e) {
			System.out.println("\n\ne.getMessage()\n" + e.getMessage());
			System.out.println("\n\ne.toString()\n" + e.toString());
			System.out.println("\n\ne.printStackTrace()");
			e.printStackTrace();
		}
		System.out.println("return1111");
		return ResponseEntity.ok(resultFinal);

	}

	// 재결의견작성 완료 소유자의견 / 사업시행자 의견 리스트 불러오기
	@RequestMapping(value = "/opinion/landview", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity opinionLandview(@RequestBody Long decisionId) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();

		resultFinal.put("list", decisionService.getDecisionOpinionList(decisionId));
		System.out.println("=================landView======================");
		System.out.println(decisionService.getDecisionOpinionList(decisionId));
		System.out.println("===================================================");

		return ResponseEntity.ok(resultFinal);

	}

	// 재결의견작성 완료 - 의견 작성된 필지 / 지장물 만 불러오기
	@RequestMapping(value = "/opinion/landview2", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity opinionLandview2(@RequestParam Map<String, Object> paramMap) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();

		System.out.println("=============================★=============================");
		System.out.println(paramMap);
		System.out.println("=============================★=============================");

		Long decisionId = Long.parseLong(paramMap.get("decisionId").toString());
		int type = Integer.parseInt(paramMap.get("type").toString());

		/*
		 * Long reptSeq = Long.parseLong(paramMap.get("reptSeq").toString()); Long
		 * reptOwnrSeq = Long.parseLong(paramMap.get("reptOwnrSeq").toString());
		 */

		Decision_Opinion_Item decision_Opinion_Item = new Decision_Opinion_Item();
		decision_Opinion_Item.setDecisionId(decisionId);
		/*
		 * decision_Opinion_Item.setReptOwnrSeq(reptOwnrSeq);
		 * decision_Opinion_Item.setReptSeq(reptSeq);
		 */
		decision_Opinion_Item.setOpinionType(type);

		List<Decision_Opinion_Item> dopList = decisionService.getDecisionOpinionItemList2(decision_Opinion_Item);

		resultFinal.put("list", dopList);
		// resultFinal.put("list2", dopList2);
		System.out.println("=============================★★★★=============================");
		System.out.println(dopList);
		System.out.println("=============================★★★★=============================");

		return ResponseEntity.ok(resultFinal);

	}

	// 재결의견작성 완료 소유자의견 / 사업시행자 의견 리스트 불러오기
	@RequestMapping(value = "/opinion/landviewNew", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity opinionLandviewNew(@RequestBody Long decisionId) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();
		System.out.println("=================landView======================");
		System.out.println(decisionService.getDecisionOpinionList(decisionId));
		System.out.println("===================================================");

		List<Decision_Opinion> resultList = new ArrayList<>();

		List<Decision_Opinion> getDecisionOpinionList = decisionService.getDecisionOpinionList(decisionId);
		System.out.println("굿?" + getDecisionOpinionList);

		ApplicationLand result = new ApplicationLand();

		for (Decision_Opinion item : getDecisionOpinionList) {

			Long reptSeq = item.getReptSeq();
			Long reptOwnrSeq = item.getReptOwnrSeq();
			int landCheck = decisionService.getLandCheck(reptSeq, reptOwnrSeq);
			int objCheck = decisionService.getObjectsCheck(reptSeq, reptOwnrSeq);

			if (landCheck == 1) {
				result = decisionService.getLandOpinionInfo(reptSeq, reptOwnrSeq);
				item.setLandObjCheck(1);
				System.out.println("result :::::::굿1? " + result);
			} else if (objCheck == 1) {
				result = decisionService.getGoodsOpinionInfo(reptSeq, reptOwnrSeq);
				item.setLandObjCheck(2);
				System.out.println("result :::::::굿2? " + result);

			}
			item.setApplicationLand(result);

			resultList.add(item);
		}
		System.out.println("hi :: " + resultList);
		resultFinal.put("list", resultList);

		return ResponseEntity.ok(resultFinal);

	}

	// 재결의견작성 완료 - 팝업, pdf, 이미지 정보 세팅
	@RequestMapping(value = "/opinion/item", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> opinionItemView(@RequestParam Map<Object, Object> paramMap) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Long decisionId = Long.parseLong(paramMap.get("decisionId").toString());

		Long reptSeq = Long.parseLong(paramMap.get("reptSeq").toString());
		Long reptOwnrSeq = Long.parseLong(paramMap.get("reptOwnrSeq").toString());

		int type = Integer.parseInt(paramMap.get("type").toString());

		Decision_Opinion_Item decision_Opinion_Item = new Decision_Opinion_Item();
		decision_Opinion_Item.setDecisionId(decisionId);

		decision_Opinion_Item.setReptOwnrSeq(reptOwnrSeq);
		decision_Opinion_Item.setReptSeq(reptSeq);

		decision_Opinion_Item.setOpinionType(type);
		decision_Opinion_Item.setFileType(type);

		// resultFinal.put("opinionListF",
		// decisionService.getDecisionOpinionList3(decision_Opinion_Item));

		resultFinal.put("opinionList", decisionService.getDecisionOpinionItemList3(decision_Opinion_Item));

		// 첨부파일 (이미지)
		List<OpinionFileVO> opinionFileList = decisionService.getDecisionOpinionItemFiles(decision_Opinion_Item);
		// resultFinal.put("opinionFileList", opinionFileList);

		List<FileVO> fileList = new ArrayList<FileVO>();
		for (int i = 0; i < opinionFileList.size(); i++) {
			int opinionFileSeq = opinionFileList.get(i).getFileSeq();
			FileVO file = fileService.getFileInfo(Long.parseLong(String.valueOf(opinionFileSeq)));

			fileList.add(file);

			System.out.println("======================fileList=============================");
			System.out.println(fileList);
			System.out.println("===================================================");

		}

		System.out.println("==============================○==============================");
		System.out.println(decisionService.getDecisionOpinionItemList3(decision_Opinion_Item));
		// Decision_Opinion_Item(seqNo=393, decisionId=342, reptSeq=12439137,
		// reptOwnrSeq=7567803, opinionType=9, opinionTitle=ㅇㅇㅇ, opinionContent=ㅇㅇㅇㅇ,
		// opinionItemFile=0, rank=1, delCheck=0,
		// regdate=2023-02-03T18:59:23.119887500, fileNameChange=null, fileFolder=null,
		// fileNameExtension=null, fileDescription=null, fileSeq=null, fileType=0)]
		System.out.println(opinionFileList);

		System.out.println("==============================○==============================");
		resultFinal.put("file", fileList);

		return resultFinal;

	}

	@RequestMapping(value = "/target", method = RequestMethod.POST)
	public void targetSave(Decision_Target target) {
		implementerService.saveTarget(target);
	}

	/*
	 * info land List
	 */
	@RequestMapping(value = "/info/land", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getLandInfo(@RequestParam("masterId") int masterId) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();

		try {

			// 값 넣기
			List<ApplicationLand> landList = implementerService.getLandInfo(masterId);

			List<ApplicationLandDTO> formatterList = implementerService.getLandListFormatter(landList);
			System.out.println("☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆");
			System.out.println(landList);
			System.out.println("☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆");
			resultFinal.put("list", formatterList);

		} catch (Exception e) {

			System.out.println("\n\ne.getMessage()\n" + e.getMessage());
			System.out.println("\n\ne.toString()\n" + e.toString());
			System.out.println("\n\ne.printStackTrace()");
			e.printStackTrace();
		}

		return resultFinal;

	}

	/*
	 * info Goods List
	 */
	@RequestMapping(value = "/info/goods", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getGoodsInfo(@RequestParam("masterId") int masterId) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();

		try {

			// 값 넣기
			List<ApplicationLand> landList = implementerService.getGoodsInfo(masterId);
			System.out.println("=========================♡============================");
			System.out.println(landList);
			System.out.println("=========================♡============================");
			if (landList.size() == 0 || landList == null) {
				resultFinal.put("list", "noData");
			} else {
				List<ApplicationGoodsDTO> formatterList = implementerService.getGoodsListFormatter(landList);
				resultFinal.put("list", formatterList);

			}

		} catch (Exception e) {

			System.out.println("\n\ne.getMessage()\n" + e.getMessage());
			System.out.println("\n\ne.toString()\n" + e.toString());
			System.out.println("\n\ne.printStackTrace()");
			e.printStackTrace();
		}

		return resultFinal;

	}

	@RequestMapping(value = "/info/downExcelGoods", method = RequestMethod.GET, produces = "text/csv")
	@ResponseBody
	public void downExcelGoods(HttpServletResponse response, String encoding, int masterId) {
		response.setContentType("text/csv");
		response.addHeader("Content-Disposition", "attachment; filename=\"GoodsList.csv\"");
		if (encoding != null && !"".equals(encoding)) {
			response.setCharacterEncoding(encoding);
		} else {
			response.setCharacterEncoding("EUC-KR");
		}
		try {

			List<ApplicationLand> landList = implementerService.getGoodsInfo(masterId);
			List<ApplicationGoodsDTO> formatterList = implementerService.getGoodsListFormatter(landList);

			CSVPrinter csvPrinter = new CSVPrinter(response.getWriter(), CSVFormat.DEFAULT);
			csvPrinter.printRecord("연번", "소재지", "본번", "부번", "부번2", "물건종류", "물건구조", "면적/수량", "단가", "소유자", "지분");

			for (int i = 0; i < formatterList.size(); i++) {
				List<String> result = new ArrayList();
				result.add(Integer.toString(i + 1));
				result.add(formatterList.get(i).getReptAddr());
				result.add(formatterList.get(i).getMainStrtNo());
				result.add(formatterList.get(i).getSubStrtNo());
				result.add(formatterList.get(i).getStrtOther());
				result.add(formatterList.get(i).getObstStuc1Nm());
				result.add(formatterList.get(i).getObstKindNm());
				// 면적/수량
				String temp = formatterList.get(i).getAreaAmot();
				// temp += formatterList.get(i).getAreaUnit();
				result.add(temp);

				result.add(formatterList.get(i).getBefUnitCost());
				result.add(formatterList.get(i).getOwnrNm());
				result.add(formatterList.get(i).getLandShre());
				csvPrinter.printRecord(result);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/info/downExcelLands", method = RequestMethod.GET, produces = "text/csv")
	@ResponseBody
	public void downExcelLands(HttpServletResponse response, String encoding, int masterId) {
		response.setContentType("text/csv");
		response.addHeader("Content-Disposition", "attachment; filename=\"LandsList.csv\"");
		if (encoding != null && !"".equals(encoding)) {
			response.setCharacterEncoding(encoding);
		} else {
			response.setCharacterEncoding("EUC-KR");
		}
		try {

			List<ApplicationLand> landList = implementerService.getLandInfo(masterId);
			List<ApplicationLandDTO> formatterList = implementerService.getLandListFormatter(landList);

			CSVPrinter csvPrinter = new CSVPrinter(response.getWriter(), CSVFormat.DEFAULT);
			csvPrinter.printRecord("연번", "소재지", "지번", "본번", "부번", "공", "실", "면적", "단가", "소유자", "지분");

			for (int i = 0; i < formatterList.size(); i++) {
				List<String> result = new ArrayList();
				result.add(Integer.toString(i + 1));
				result.add(formatterList.get(i).getReptAddr());
				result.add(formatterList.get(i).getSidoGunguCd());
				result.add(formatterList.get(i).getMainStrtNo());
				result.add(formatterList.get(i).getSubStrtNo());
				result.add(formatterList.get(i).getObstStuc1Nm());
				result.add(formatterList.get(i).getObstStuc2Nm());
				// 면적
				String areaAmot = Integer.toString(formatterList.get(i).getAreaAmot());
				// areaAmot += formatterList.get(i).getAreaUnit();
				result.add(areaAmot);

				result.add(formatterList.get(i).getBefUnitCost());
				result.add(formatterList.get(i).getOwnrNm());
				result.add(formatterList.get(i).getLandShre());
				csvPrinter.printRecord(result);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/info/downExcelGoodsOwners", method = RequestMethod.GET, produces = "text/csv")
	@ResponseBody
	public void downExcelGoodsOwners(HttpServletResponse response, String encoding, int masterId) {
		response.setContentType("text/csv");
		response.addHeader("Content-Disposition", "attachment; filename=\"GoodsOwnersList.csv\"");
		if (encoding != null && !"".equals(encoding)) {
			response.setCharacterEncoding(encoding);
		} else {
			response.setCharacterEncoding("EUC-KR");
		}
		try {

			List<ApplicationLand> landList = implementerService.getGoodsInfo(masterId);
			List<ApplicationGoodsDTO> formatterList = implementerService.getGoodsListFormatter(landList);

			CSVPrinter csvPrinter = new CSVPrinter(response.getWriter(), CSVFormat.DEFAULT);
			csvPrinter.printRecord("연번", "소유자", "지분", "소재지", "본번", "부번", "부번2", "물건종류", "물건구조", "면적/수량", "단가");

			for (int i = 0; i < formatterList.size(); i++) {
				List<String> result = new ArrayList();
				result.add(Integer.toString(i + 1));
				result.add(formatterList.get(i).getOwnrNm());
				result.add(formatterList.get(i).getLandShre());
				result.add(formatterList.get(i).getReptAddr());
				result.add(formatterList.get(i).getMainStrtNo());
				result.add(formatterList.get(i).getSubStrtNo());
				result.add(formatterList.get(i).getStrtOther());
				result.add(formatterList.get(i).getObstStuc1Nm());
				result.add(formatterList.get(i).getObstKindNm());
				// 면적/수량
				String temp = formatterList.get(i).getAreaAmot();
				// temp += formatterList.get(i).getAreaUnit();
				result.add(temp);
				result.add(formatterList.get(i).getBefUnitCost());
				csvPrinter.printRecord(result);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/info/downExcelLandsOwners", method = RequestMethod.GET, produces = "text/csv")
	@ResponseBody
	public void downExcelLandsOwners(HttpServletResponse response, String encoding, int masterId) {
		response.setContentType("text/csv");
		response.addHeader("Content-Disposition", "attachment; filename=\"LandsOwnersList.csv\"");
		if (encoding != null && !"".equals(encoding)) {
			response.setCharacterEncoding(encoding);
		} else {
			response.setCharacterEncoding("EUC-KR");
		}
		try {

			List<ApplicationLand> landList = implementerService.getLandInfo(masterId);
			List<ApplicationLandDTO> formatterList = implementerService.getLandListFormatter(landList);

			CSVPrinter csvPrinter = new CSVPrinter(response.getWriter(), CSVFormat.DEFAULT);
			csvPrinter.printRecord("연번", "소유지", "지분", "소재지", "지번", "본번", "부번", "공", "실", "면적", "단가");

			for (int i = 0; i < formatterList.size(); i++) {
				List<String> result = new ArrayList();
				result.add(Integer.toString(i + 1));
				result.add(formatterList.get(i).getOwnrNm());
				result.add(formatterList.get(i).getLandShre());
				result.add(formatterList.get(i).getReptAddr());
				result.add(formatterList.get(i).getSidoGunguCd());
				result.add(formatterList.get(i).getMainStrtNo());
				result.add(formatterList.get(i).getSubStrtNo());
				result.add(formatterList.get(i).getObstStuc1Nm());
				result.add(formatterList.get(i).getObstStuc2Nm());
				// 면적
				String areaAmot = Integer.toString(formatterList.get(i).getAreaAmot());
				// areaAmot += formatterList.get(i).getAreaUnit();
				result.add(areaAmot);

				result.add(formatterList.get(i).getBefUnitCost());
				csvPrinter.printRecord(result);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/landData", method = RequestMethod.GET)
	public Map<String, Object> getLandData(@RequestParam("masterId") int masterId) {
		Map<String, Object> data = new HashMap<>();

		int landCount = implementerService.getApplicationLandCount(masterId);
		data.put("landCount", landCount);

		int landRightCount = implementerService.getApplicationLandRightCount(masterId);
		data.put("landRightCount", landRightCount);

		int objectCount = implementerService.getApplicationObjectCount(masterId);
		data.put("objectCount", objectCount);

		int objectRightCount = implementerService.getApplicationObjectRightCount(masterId);
		data.put("objectRightCount", objectRightCount);

		int totalAreaAmot = 0;
		int totalCost = 0;

		
		if (landCount > 0) {
			List<ApplicationLand> landList = implementerService.getLandInfo(masterId);

			for (ApplicationLand applicationLand : landList) {
				int area_amot = applicationLand.getArea();
				Long bef_unit_cost = applicationLand.getPriceK();

				totalAreaAmot += area_amot;
				totalCost += bef_unit_cost;
			}
		}
		 

		data.put("totalAreaAmot", totalAreaAmot);

		
		if (objectCount > 0) {
			List<ApplicationLand> goodsList = implementerService.getGoodsInfo(masterId);

			for (ApplicationLand applicationLand : goodsList) {
				Long bef_unit_cost = applicationLand.getPriceK();
				totalCost += bef_unit_cost;
			}
		}
		 

		String totalHitsStr = "";

		if (totalCost > 0) {
			totalHitsStr = Integer.toString(totalCost);
			totalHitsStr = StrUtil.convertToDecimalFormat(totalHitsStr);
		}

		data.put("totalCost", totalHitsStr);

		return data;
	}

}
