
function openPopup(mode,count){
	
	if(count==0){
		alert("해당 데이터가 존재하지 않습니다.");
		return false;
	}else{
		if(mode=="land"){
			getLandInfo();
		}else if(mode=="goodsowner"){
			getGoodsowner();
		}else if(mode=="landsowner"){
			getLandownerInfo();	
		}else if(mode=="goods"){
			getGoodsInfo();
		}else if(mode=="checkbox"){			
			getCheckBox(count);
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
	}else if(mode=="landsowner"){
		$("#landownerList").empty();
		$('#popupLandsowner').removeClass("on");
	}else if(mode=="goods"){
		$("#goodsList").empty();
		$('#popupGoods').removeClass("on");
	}else if(mode=="checkbox"){
		$('#popupCheck').removeClass("on");
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