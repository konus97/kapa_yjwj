
function openPopup(mode,count){
	
	
	var getItem = '';
	
	if(document.getElementById('selectedItemTit') != null || document.getElementById('selectedItemTit') != undefined){
	 getItem = document.getElementById('selectedItemTit').innerText;
	}
	
		
	if(count==0){
		alert("해당 데이터가 존재하지 않습니다.");
		return false;
	}else{
		if(mode=="land"){
			getLandInfo();
		}else if(mode=="goodsowner"){
			getGoodsowner();
		}else if(mode=="goodsownercheck"){
			if(getItem == '' || getItem == undefined || getItem == '선택된 항목 없음'){
					alert("항목을 선택해주세요.");
					return false;
				}else{
			getGoodsownerCheck();
			}
		}else if(mode=="landsowner"){
			getLandownerInfo();	
		}else if(mode=="landsownercheck"){
			if(getItem == '' || getItem == undefined || getItem == '선택된 항목 없음'){
					alert("항목을 선택해주세요.");
					return false;
				}else{
			getLandownerCheck();	
			}
		}else if(mode=="goods"){
			getGoodsInfo();
		}else if(mode=="checkbox"){			
			getCheckBox(count);
		}else if(mode=="checkbox2"){			
			getCheckBox2();
		}
	}
	
}

function closePopup(mode){
	
	if(mode=="land"){
		$("#landList").empty();
		$('#popupLand').removeClass("on");
	}else if(mode=="goodsowner"){
		$("#goodsownerList").empty();
		$('#popupGoodsowner').removeClass("on");
	}else if(mode=="goodsownercheck"){
		$("#goodsownerCheckList").empty();
		$('#popupGoodsownerCheck').removeClass("on");
	}else if(mode=="landsowner"){
		$("#landownerList").empty();
		$('#popupLandsowner').removeClass("on");
	}else if(mode=="landsownercheck"){
		$("#landownerListCheck").empty();
		$('#popupLandsownerCheck').removeClass("on");
	}else if(mode=="goods"){
		$("#goodsList").empty();
		$('#popupGoods').removeClass("on");
	}else if(mode=="checkbox"){
		$('#popupCheck').removeClass("on");
	}else if(mode=="checkbox2"){
		$('#popupCheck2').removeClass("on");
	}

}

function getCheckBox(ownerInfo){
	
	$(".opinion_check").prop("checked", false).attr("checked", false);
	
	let getSelect = $("#ownerInfo"+ownerInfo).attr("data-item");
	
	if(getSelect!=""){		
		const addSelect = getSelect.split(',');
		console.log(addSelect);
		
		for(let i = 0; i < addSelect.length; i++) {	
			$("#check"+addSelect[i]).prop("checked", true).attr("checked", true);
			
			let getType = $("#check"+addSelect[i]).attr("data-type");
			let getTitle = $("#check"+addSelect[i]).attr("data-title");
			
			let sub = new Object();
			sub['getType'] = getType;
			sub['getTitle'] = getTitle;
			
			opinionItemList.push(sub);			
		}
	}
	
	$('#popupCheck').attr("data-owner",ownerInfo);
	$('#popupCheck').addClass("on");
}

function getCheckBox2(){
	
	$(".opinion_check").prop("checked", false).attr("checked", false);
	
	$('#popupCheck2').addClass("on");
}

function getLandInfo() {

	let contextPath = $("#contextPath").val();
	let masterId = $("#masterId").val();
	
	let url = contextPath+"/api/implementer/info/land";

	$("#landList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"masterId":masterId,
		},
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {
				
				let rank = 1;
				
				for( let i = 0; i < list.length; i++) {
					makeLandInfoBlock(rank,list[i]);
					rank++;
				}
			}

			$('#popupLand').addClass("on");
			
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});

}

function getLandownerInfo() {

	let contextPath = $("#contextPath").val();
	let masterId = $("#masterId").val();
	
	let url = contextPath+"/api/implementer/info/land";

	$("#landownerList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"masterId":masterId,
		},
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {
				
				let rank = 1;
				
				for( let i = 0; i < list.length; i++) {
					makeLandOwnerInfoBlock(rank,list[i]);
					rank++;
				}
			}

			$('#popupLandsowner').addClass("on");
			
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});

}
function getLandownerInfoSunmit(chkValueArr) {

	let contextPath = $("#contextPath").val();
	let masterId = $("#masterId").val();
	
	let url = contextPath+"/api/implementer/info/land";

	$("#landownerList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"masterId":masterId,
		},
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {
				let rank = 1;
				for( let i = 0; i < chkValueArr.length; i++) {
					console.log(chkValueArr[i]);
					submitLandOwnr2(rank,list[chkValueArr[i]]);
					rank++;
				}
			}

		//	$('#popupLandsowner').addClass("on");
			
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});

}
function getLandownerCheck() {

	let contextPath = $("#contextPath").val();
	let masterId = $("#masterId").val();
	
	let url = contextPath+"/api/implementer/info/land";

	$("#landownerCheckList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"masterId":masterId,
		},
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {
				
				let rank = 1;
				
				for( let i = 0; i < list.length; i++) {
					makeLandOwnerCheckBlock(rank,list[i]);
					rank++;
				}
			}

			$('#popupLandsownerCheck').addClass("on");
			
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});

}

function getGoodsInfo() {

	let contextPath = $("#contextPath").val();
	let masterId = $("#masterId").val();
	
	let url = contextPath+"/api/implementer/info/goods";

	$("#goodsList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"masterId":masterId,
		},
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {
				
				let rank = 1;
				
				for( let i = 0; i < list.length; i++) {
					makeGoodsInfoBlock(rank,list[i]);
					rank++;
				}
			}

			$('#popupGoods').addClass("on");
			
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});

}



function getGoodsowner() {

	let contextPath = $("#contextPath").val();
	let masterId = $("#masterId").val();
	
	let url = contextPath+"/api/implementer/info/goods";

	$("#goodsownerList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"masterId":masterId,
		},
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {
				
				let rank = 1;
				
				for( let i = 0; i < list.length; i++) {
					makeGoodsownerBlock(rank,list[i]);
					rank++;
				}
			}

			$('#popupGoodsowner').addClass("on");
			
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});


}
function getGoodsownerInfoSunmit(chkValueArr) {

	let contextPath = $("#contextPath").val();
	let masterId = $("#masterId").val();
	
	let url = contextPath+"/api/implementer/info/goods";

	$("#goodsownerList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"masterId":masterId,
		},
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {
				
				let rank = 1;
				
				for( let i = 0; i < chkValueArr.length; i++) {
					console.log(chkValueArr[i]);
					submitGoodsOwnr2(rank,list[chkValueArr[i]]);
					rank++;
				}
			}

			//$('#popupGoodsowner').addClass("on");
			
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});


}

function getGoodsownerCheck() {

	let contextPath = $("#contextPath").val();
	let masterId = $("#masterId").val();
	
	let url = contextPath+"/api/implementer/info/goods";

	$("#goodsownerCheckList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"masterId":masterId,
		},
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {
				
				let rank = 1;
				
				for( let i = 0; i < list.length; i++) {
					makeGoodsownerCheckBlock(rank,list[i]);
					rank++;
				}
			}

			$('#popupGoodsownerCheck').addClass("on");
			
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});


}


function checkItem(){
	
	let ownerSeq = $('#popupCheck').attr("data-owner");
	let addSelect = new Array();
	
	let addList = new Array();
	
	addList.push("<option value=\"\" >항목선택</option>	  ");          
	
	for(let i = 0; i < opinionItemList.length; i++) {	
		addSelect.push(opinionItemList[i].getType);
		addList.push("<option value=\""+opinionItemList[i].getType+"\" data-title=\""+opinionItemList[i].getTitle+"\" >"+opinionItemList[i].getTitle+"</option>	  ");          
	}

	$("#ownerInfo"+ownerSeq).attr("data-item",addSelect.toString());
	
	$(".ownerItem"+ownerSeq).empty();
	$(".ownerItem"+ownerSeq).append(addList.join(''));
	
	$('#popupCheck').attr("data-owner",'');
	
	opinionItemList = new Array();
	closePopup('checkbox');
	
}

function checkItem2(){
	var ele = document.getElementsByName('opinion_radio');
	var selectedItemTxt = document.getElementById('selectedItemTit')
	var selectedItemNum
	var selectedItemTit
	
	for(i = 0; i < ele.length; i++) {
		if(ele[i].checked){
			console.log(ele[i])
			selectedItemNum = ele[i].getAttribute('data-type')
			selectedItemTit = ele[i].getAttribute('data-title')
		}
	}

	selectedItemTxt.innerHTML = '선택된 항목 : '+ selectedItemNum +'.'+ selectedItemTit
	closePopup('checkbox2');
}

function submitLandOwnr(){
	var chkValueArr = new Array();
	var list = $("input[name='checkbox_land']");
	for(var i=0; i<list.length; i++){
		if(list[i].checked){
		chkValueArr.push(list[i].value-1);
		}
	}
	getLandownerInfoSunmit(chkValueArr);
	
}
function submitLandOwnr2(rank,info){
	

	
	var getItem = document.getElementById('selectedItemTit').innerText;
		getItem = getItem.split('.')[0].split(': ')[1];		

	addLandOpinion(rank,info,getItem);
	closePopup('landsownercheck');
}

function submitGoodsOwnr(){
	var chkValueArr = new Array();
	var list = $("input[name='checkbox_goods']");
	for(var i=0; i<list.length; i++){
		if(list[i].checked){
		chkValueArr.push(list[i].value-1);
		}
	}
	getGoodsownerInfoSunmit(chkValueArr);
	
}

function submitGoodsOwnr2(rank,info){
	
	var getItem = document.getElementById('selectedItemTit').innerText;
		getItem = getItem.split('.')[0].split(': ')[1];		
		console.log(getItem);
	addGoodsOpinion(rank,info,getItem);
	closePopup('goodsownercheck');
}


//내용 없는 항목 또는 테이블 확인 후 숨기기
function checkResultWrTbody(){
	const resultWr = document.querySelectorAll('.item_result_wr')

	resultWr.forEach(function(target){
		resultWrCon = target.lastElementChild // '.item_result_wr__con' 두 table 태그(필지,지장물)의 부모 태그
		resultWrTable1 = resultWrCon.firstElementChild
		resultWrTable2 = resultWrCon.lastElementChild
	
		if(resultWrTable1.lastElementChild.innerHTML == 0){
			resultWrTable1.style.display = "none"
		} else {
			resultWrTable1.style.display = "table"
		}
	
		if(resultWrTable2.lastElementChild.innerHTML == 0){
			resultWrTable2.style.display = "none"
		} else {
			resultWrTable2.style.display = "table"
		}
	
		if(resultWrTable1.lastElementChild.innerHTML == 0 && resultWrTable2.lastElementChild.innerHTML == 0){
			target.style.display = "none"
		} else {
			target.style.display = "flex"
		}
	
	})


}