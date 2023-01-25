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
	let areaUnit = info.areaUnit;
	let befUnitCost = info.befUnitCost;
    
	let ownrNnm = info.ownrNnm;
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
    addList.push("      <span>"+areaAmot+""+areaUnit+"</span>");
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
    
	let ownrNnm = info.ownrNnm;
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
    addList.push("      <span>"+areaAmot+""+areaUnit+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    

    addList.push("</tr>");

	$("#landownerList").append(addList.join(''));
}

function makeLandOwnerCheckBlock(startNumber,info) {

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
    
	let ownrNnm = info.ownrNnm;
	let landShre = info.landShre;
	
	addList.push("<tr>");
	
	addList.push("   <td>");
	addList.push("		 <input type=\"checkbox\">");
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
    addList.push("      <span>"+areaAmot+""+areaUnit+"</span>");
    addList.push("   </td>");
    
    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    

    addList.push("</tr>");

	$("#landownerCheckList").append(addList.join(''));
}

function makeGoodsInfoBlock(startNumber,info) {

	console.log(info);
	
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
    addList.push("      <span>"+areaAmot+""+areaUnit+"</span>");
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

	console.log(info);
	
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
    addList.push("      <span>"+areaAmot+""+areaUnit+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    


    addList.push("</tr>");

	$("#goodsownerList").append(addList.join(''));
}

function makeGoodsownerCheckBlock(startNumber,info) {

	console.log(info);
	
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
	addList.push("		 <input type=\"checkbox\">");
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
    addList.push("      <span>"+areaAmot+""+areaUnit+"</span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("       <strong>단가</strong>");
    addList.push("      <span>"+befUnitCost+"</span>");
    addList.push("    </td>");
    


    addList.push("</tr>");

	$("#goodsownerCheckList").append(addList.join(''));
}