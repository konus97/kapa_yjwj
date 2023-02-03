//************************************************
//Make LandInfo block
// ************************************************

function makeLandInfoBlock(startNumber,info) {

	console.log(info);
	
	let addList = new Array();
	
	let reptAddr = info.reptAddr;

	let sidoGunguCd = info.sidoGunguCd;
	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm;
	
	let areaAmot = info.areaAmot;
	//let areaUnit = info.areaUnit;
	let befUnitCost = info.befUnitCost;
    
	let ownrNnm = info.ownrNm;
	let landShre = info.landShre;
	
	addList.push("<tr>");
    addList.push("   <td>");
    addList.push("		 <strong>연번</strong>");
    addList.push("		 <span>"+startNumber+"</span>");
    addList.push("   </td>");
    addList.push("   <td>");
    addList.push("      <strong>소재지</strong>");
    addList.push("      <span>"+reptAddr+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>지번</strong>");
    addList.push("       <span>"+sidoGunguCd+"</span>");
    addList.push("   </td>");
   
    addList.push("   <td>");
    addList.push("      <strong>본번</strong>");
    addList.push("      <span>"+mainStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>부번</strong>");
    addList.push("      <span>"+subStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>공</strong>");
    addList.push("      <span>"+obstStuc1Nm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>잡</strong>");
    addList.push("      <span>"+obstStuc2Nm+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>면적</strong>");
    addList.push("      <span>"+areaAmot+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소유자</strong>");
    addList.push("      <span>"+ownrNnm+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>지분</strong>");
    addList.push("      <span>"+landShre+"</span>");
    addList.push("    </td>");


    addList.push("</tr>");

	$("#landList").append(addList.join(''));
}

function makeLandOwnerInfoBlock(startNumber,info) {

	console.log(info);
	
	let addList = new Array();
	
	let reptAddr = info.reptAddr;

	let sidoGunguCd = info.sidoGunguCd;
	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm;
	
	let areaAmot = info.areaAmot;
	let areaUnit = info.areaUnit;
	let befUnitCost = info.befUnitCost;
    
	let ownrNnm = info.ownrNm;
	let landShre = info.landShre;
	
	addList.push("<tr>");
    addList.push("   <td>");
    addList.push("		 <strong>연번</strong>");
    addList.push("		 <span>"+startNumber+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소유자</strong>");
    addList.push("      <span>"+ownrNnm+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>지분</strong>");
    addList.push("      <span>"+landShre+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소재지</strong>");
    addList.push("      <span>"+reptAddr+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>지번</strong>");
    addList.push("       <span>"+sidoGunguCd+"</span>");
    addList.push("   </td>");
   
    addList.push("   <td>");
    addList.push("      <strong>본번</strong>");
    addList.push("      <span>"+mainStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>부번</strong>");
    addList.push("      <span>"+subStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>공</strong>");
    addList.push("      <span>"+obstStuc1Nm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>잡</strong>");
    addList.push("      <span>"+obstStuc2Nm+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>면적</strong>");
    addList.push("      <span>"+areaAmot+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    

    addList.push("</tr>");

	$("#landownerList").append(addList.join(''));
}

function makeLandOwnerCheckBlock(startNumber,info) {
	
	//console.log(info);
	
	let addList = new Array();
	
	let reptAddr = info.reptAddr;

	let sidoGunguCd = info.sidoGunguCd;
	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm;
	
	let areaAmot = info.areaAmot;
	let areaUnit = info.areaUnit;
	let befUnitCost = info.befUnitCost;
    
	let ownrNm = info.ownrNm;
	let landShre = info.landShre;
	
	addList.push("<tr>");
	
	addList.push("   <td>");
	addList.push("		 <input type=\"checkbox\" name=\"checkbox_land\" value=\""+startNumber+"\" id=\""+startNumber+"\" data-seq=\""+startNumber+"\">");
	addList.push("   </td>");
	let test = $('#'+startNumber).data('seq');
	//console.log(test);
	addList.push("   <td>");
	addList.push("		 <strong>연번</strong>");
	addList.push("		 <span>"+startNumber+"</span>");
	addList.push("   </td>");
	
    addList.push("   <td>");
    addList.push("      <strong>소유자</strong>");
    addList.push("      <span>"+ownrNm+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>지분</strong>");
    addList.push("      <span>"+landShre+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소재지</strong>");
    addList.push("      <span>"+reptAddr+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>지번</strong>");
    addList.push("       <span>"+sidoGunguCd+"</span>");
    addList.push("   </td>");
   
    addList.push("   <td>");
    addList.push("      <strong>본번</strong>");
    addList.push("      <span>"+mainStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>부번</strong>");
    addList.push("      <span>"+subStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>공</strong>");
    addList.push("      <span>"+obstStuc1Nm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>잡</strong>");
    addList.push("      <span>"+obstStuc2Nm+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>면적</strong>");
    addList.push("      <span>"+areaAmot+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    

    addList.push("</tr>");

	$("#landownerCheckList").append(addList.join(''));
}


function makeLandOwnerCheckBlock2(startNumber,info, getItem, reptSeqArr, reptSeqOwnrArr) {

let decisionId = $('#decisionId').val();
let csrfToken = $("meta[name='_csrf']").attr("content");
let csrfHeader = $("meta[name='_csrf_header']").attr("content");    	        
let contextPath = $('#contextPath').val();
let url = contextPath+"/api/implementer/opinion/landview2";

	$.ajax({
		url : url,
		type : "POST",
		dataType : "json",
		async: false,
		data : {
			"type":getItem,
			"reptSeq":reptSeqArr[0],
			"reptOwnrSeq":reptSeqOwnrArr[0],
			"decisionId" : decisionId
		},
		beforeSend : function(xhr){
        xhr.setRequestHeader(csrfHeader, csrfToken);
        },
		success : function(data) {

			let list = data.list;
			//console.log('landview2');
			
			
			if(list.length !=0){
					for(let j=0; j<list.length; j++){
	let listReptSeq = list[j].reptSeq;
	let listReptOwnrSeq = list[j].reptOwnrSeq;
				
				
			
				
				let addList = new Array();
	let reptAddr = info.reptAddr;

	let sidoGunguCd = info.sidoGunguCd;
	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm;
	
	let areaAmot = info.areaAmot;
	let areaUnit = info.areaUnit;
	let befUnitCost = info.befUnitCost;
    
	let ownrNm = info.ownrNnm;
	let landShre = info.landShre;

	let getSeq = info.reptSeq;
	let reptOwnrSeq  = info.reptOwnrSeq;
	
	if(reptSeqArr.includes(getSeq) && reptSeqOwnrArr.includes(reptOwnrSeq) && listReptSeq == getSeq &&  listReptOwnrSeq ==reptOwnrSeq){
		
	
	

	addList.push("<tr>");
	
/*	addList.push("   <td>");
	addList.push("		 <input type=\"checkbox\" name=\"checkbox_land\" value=\""+startNumber+"\" id=\""+startNumber+"\" data-seq=\""+startNumber+"\">");
	addList.push("   </td>");
*/
	addList.push("   <td>");
	addList.push("		 <strong>연번</strong>");
	addList.push("		 <span>"+startNumber+"</span>");
	addList.push("   </td>");
	
    addList.push("   <td>");
    addList.push("      <strong>소유자</strong>");
    addList.push("      <span>"+ownrNm+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>지분</strong>");
    addList.push("      <span>"+landShre+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소재지</strong>");
    addList.push("      <span>"+reptAddr+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>지번</strong>");
    addList.push("       <span>"+sidoGunguCd+"</span>");
    addList.push("   </td>");
   
    addList.push("   <td>");
    addList.push("      <strong>본번</strong>");
    addList.push("      <span>"+mainStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>부번</strong>");
    addList.push("      <span>"+subStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>공</strong>");
    addList.push("      <span>"+obstStuc1Nm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>잡</strong>");
    addList.push("      <span>"+obstStuc2Nm+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>면적</strong>");
    addList.push("      <span>"+areaAmot+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    
	addList.push("<td>");     
	addList.push("          <a href=\"#\" id=\"opinionTitle"+getSeq+"-"+getItem+"\" onclick=\"openOpinionPopup2('"+getSeq+"','"+getItem+"','"+reptOwnrSeq+"','"+ownrNm+"');return false;\" class=\"item_result_wr__btn item_result_wr__btn--write\">보기</a>");
	addList.push("</td>");
	

    addList.push("</tr>");

	$("#ownerLandItemList"+getItem).append(addList.join(''));
	}
	else{
		//console.log("makeBlock getSeq :::" + getSeq);
		//console.log("include check reptSeq :::" + reptSeqArr);
		
		//console.log("makeBlock reptSeqOwnrArr :::" + reptOwnrSeq);
		//console.log("include check reptSeqOwnrArr :::" + reptSeqOwnrArr);
	}
				
			}
			}
		},
		error : function(xhr, status, error) {
		}
	});
	

	
	
}

function makeGoodsInfoBlock(startNumber,info) {

	//console.log(info);
	
	let addList = new Array();
	
	let reptAddr = info.reptAddr;

	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let strtOther = info.strtOther;
	
	let obstKindNm = info.obstKindNm; //물건종류
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm; //지장물에서는 안쓰임
	
	let areaAmot = info.areaAmot;
	let befUnitCost = info.befUnitCost;
	let areaUnit = info.areaUnit;
	
	let ownrNnm = info.ownrNm;
	let landShre = info.landShre;
	
	let getSeq = info.reptSeq;
	let reptOwnrSeq  = info.reptOwnrSeq;
	
	
	addList.push("<tr>");
    addList.push("   <td>");
    addList.push("		 <strong>연번</strong>");
    addList.push("		 <span>"+startNumber+"</span>");
    addList.push("   </td>");
    addList.push("   <td>");
    addList.push("      <strong>소재지</strong>");
    addList.push("      <span>"+reptAddr+"</span>");
    addList.push("   </td>");
   
    addList.push("   <td>");
    addList.push("      <strong>본번</strong>");
    addList.push("      <span>"+mainStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>부번</strong>");
    addList.push("      <span>"+subStrtNo+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>부번2</strong>");
    addList.push("      <span>"+strtOther+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>물건종류</strong>");
    addList.push("      <span>"+obstStuc1Nm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>물건구조</strong>");
    addList.push("      <span>"+obstKindNm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>면적/수량</strong>");
    addList.push("      <span>"+areaAmot+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소유자</strong>");
    addList.push("      <span>"+ownrNnm+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>지분</strong>");
    addList.push("      <span>"+landShre+"</span>");
    addList.push("    </td>");




    addList.push("</tr>");

	$("#goodsList").append(addList.join(''));
}

function makeGoodsownerBlock(startNumber,info) {
	

	//console.log(info);
	
	let addList = new Array();
	
	let reptAddr = info.reptAddr;

	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let strtOther = info.strtOther;
	if(strtOther == null){
		strtOther = "";
	}
	
	let obstKindNm = info.obstKindNm;
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm;
	
	let areaAmot = info.areaAmot;
	let befUnitCost = info.befUnitCost;
	let areaUnit = info.areaUnit;
	
	let ownrNnm = info.ownrNm;
	let landShre = info.landShre;
	
	addList.push("<tr>");
    addList.push("   <td>");
    addList.push("		 <strong>연번</strong>");
    addList.push("		 <span>"+startNumber+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소유자</strong>");
    addList.push("      <span>"+ownrNnm+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>지분</strong>");
    addList.push("      <span>"+landShre+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소재지</strong>");
    addList.push("      <span>"+reptAddr+"</span>");
    addList.push("   </td>");
   
    addList.push("   <td>");
    addList.push("      <strong>본번</strong>");
    addList.push("      <span>"+mainStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>부번</strong>");
    addList.push("      <span>"+subStrtNo+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>부번2</strong>");
    addList.push("      <span>"+strtOther+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>물건종류</strong>");
    addList.push("      <span>"+obstStuc1Nm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>물건구조</strong>");
    addList.push("      <span>"+obstKindNm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>면적/수량</strong>");
    addList.push("      <span>"+areaAmot+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    


    addList.push("</tr>");

	$("#goodsownerList").append(addList.join(''));
}

function makeGoodsownerBlock2(startNumber,info, getItem, reptSeqArr, reptSeqOwnrArr) {
	let decisionId = $('#decisionId').val();
	let csrfToken = $("meta[name='_csrf']").attr("content");
	let csrfHeader = $("meta[name='_csrf_header']").attr("content");    	        
	let contextPath = $('#contextPath').val();
	let url = contextPath+"/api/implementer/opinion/landview2";
	console.log(reptSeqArr);
	console.log(reptSeqOwnrArr);
	
	$.ajax({
			url : url,
			type : "POST",
			dataType : "json",
			async: false,
			data : {
				"type":getItem,
				"reptSeq":reptSeqArr,
				"reptOwnrSeq":reptSeqOwnrArr,
				"decisionId" : decisionId
			},
			beforeSend : function(xhr){
			xhr.setRequestHeader(csrfHeader, csrfToken);
			},
			success : function(data) {
	
	let list = data.list;
	
	console.log(list);
				
				
	if(list.length !=0){
	for(let j=0; j<list.length; j++){
	let listReptSeq = list[j].reptSeq;
	let listReptOwnrSeq = list[j].reptOwnrSeq;
	
	
	let addList = new Array();
	
	let reptAddr = info.reptAddr;

	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let strtOther = info.strtOther;
	
	let obstKindNm = info.obstKindNm;
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm;
	
	let areaAmot = info.areaAmot;
	let befUnitCost = info.befUnitCost;
	let areaUnit = info.areaUnit;
	
	let ownrNnm = info.ownrNnm;
	let landShre = info.landShre;
	
	let getSeq = info.reptSeq;
	let reptOwnrSeq  = info.reptOwnrSeq;
	if(reptSeqArr.includes(getSeq) && reptSeqOwnrArr.includes(reptOwnrSeq) && listReptSeq == getSeq &&  listReptOwnrSeq ==reptOwnrSeq){
					//console.log('goodsview2');

	addList.push("<tr>");
    addList.push("   <td>");
    addList.push("		 <strong>연번</strong>");
    addList.push("		 <span>"+startNumber+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소유자</strong>");
    addList.push("      <span>"+ownrNnm+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>지분</strong>");
    addList.push("      <span>"+landShre+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소재지</strong>");
    addList.push("      <span>"+reptAddr+"</span>");
    addList.push("   </td>");
   
    addList.push("   <td>");
    addList.push("      <strong>본번</strong>");
    addList.push("      <span>"+mainStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>부번</strong>");
    addList.push("      <span>"+subStrtNo+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>부번2</strong>");
    addList.push("      <span>"+strtOther+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>물건종류</strong>");
    addList.push("      <span>"+obstStuc1Nm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>물건구조</strong>");
    addList.push("      <span>"+obstKindNm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>면적/수량</strong>");
    addList.push("      <span>"+areaAmot+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    
	addList.push("<td>");     
	addList.push("          <a href=\"#\" id=\"opinionTitle"+getSeq+"-"+getItem+"\" onclick=\"openOpinionPopup2('"+getSeq+"','"+getItem+"','"+reptOwnrSeq+"','"+ownrNnm+"');return false;\" class=\"item_result_wr__btn item_result_wr__btn--write\">보기</a>");
	addList.push("</td>");

    addList.push("</tr>");

	$("#ownerGoodsItemList"+getItem).append(addList.join(''));
	}else{
		//console.log('no matching item');
	}
				}
				
	}				

					
				},
				error : function(xhr, status, error) {
			}
		}); //ajax end
		
				
	
	
}

function makeGoodsownerCheckBlock(startNumber,info) {

	//console.log(info);
	
	let addList = new Array();
	
	let reptAddr = info.reptAddr;

	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let strtOther = info.strtOther;
	
	let obstKindNm = info.obstKindNm;
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm;
	
	let areaAmot = info.areaAmot;
	let befUnitCost = info.befUnitCost;
	let areaUnit = info.areaUnit;
	
	let ownrNnm = info.ownrNnm;
	let landShre = info.landShre;
	
	addList.push("<tr>");
	
	addList.push("   <td>");
	addList.push("		 <input type=\"checkbox\" name=\"checkbox_goods\" value=\""+startNumber+"\" id=\""+startNumber+"\" data-seq=\""+startNumber+"\">");
	addList.push("   </td>");
	
    addList.push("   <td>");
    addList.push("		 <strong>연번</strong>");
    addList.push("		 <span>"+startNumber+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소유자</strong>");
    addList.push("      <span>"+ownrNnm+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>지분</strong>");
    addList.push("      <span>"+landShre+"</span>");
    addList.push("    </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>소재지</strong>");
    addList.push("      <span>"+reptAddr+"</span>");
    addList.push("   </td>");
   
    addList.push("   <td>");
    addList.push("      <strong>본번</strong>");
    addList.push("      <span>"+mainStrtNo+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>부번</strong>");
    addList.push("      <span>"+subStrtNo+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>부번2</strong>");
    addList.push("      <span>"+strtOther+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>물건종류</strong>");
    addList.push("      <span>"+obstStuc1Nm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>물건구조</strong>");
    addList.push("      <span>"+obstKindNm+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("      <strong>면적/수량</strong>");
    addList.push("      <span>"+areaAmot+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    


    addList.push("</tr>");

	$("#goodsownerCheckList").append(addList.join(''));
}