function storage(){
			
			const masterId = $('#masterId').val();   	
        	const locationSize = $('#locationSize').val();
        	const groupEstablishedDate = $('#il_date1').val();
        	const decisionReason = $('#decisionReason').val();
			let relation = document.getElementsByClassName('relationItem');        	
			
           	const relationArr = [];
           	
       		for (let i=0; i<relation.length; i++) {
      	    	const Relation_Target = {};
      	    	
      	    	let relationTitle = relation[i].children[0].children[0].value;
      	    	let relationContent = relation[i].children[1].children[0].value;
      	    	Relation_Target['relationTitle']= relationTitle;
      	    	Relation_Target['relationContent']= relationContent;

    	    	relationArr.push(Relation_Target);
       		}
       		
       		let dateItem = document.getElementsByClassName('dateItem');
            
           	const DateArr = [];
        		
       		for (let i=2; i<dateItem.length+2; i++) {
       	    	const ConsultationDateItem = {};
       	    	let consultationDate = $("#il_date"+i).val();
       	    	let consultationDateText = $("#il_date"+i+"_text").val();
       	    	if(consultationDate == null || consultationDate == "") {
       	    		alert("협의 날짜를 입력해주세요");
       	    		return false;
       	    	}
		
       	    	ConsultationDateItem['consultationDate']= consultationDate;   
       	    	ConsultationDateItem['consultationDateText']= consultationDateText;  
       	    	console.log(ConsultationDateItem);
       	    	
       	    	DateArr.push(ConsultationDateItem);
       		}
       		
			let targetCount = $('.targetItem').length;
        	
           	const targetArr = [];
           	
           	if(targetCount>0){
           		
        		for ( let i = 0; i < targetCount; i++) {
        			
        			let targetInfo = $(".targetInfo:eq("+i+")").val();
        			let bun1 = $(".bun1:eq("+i+")").val();
        			let bun2 = $(".bun2:eq("+i+")").val();     
        			let areaBeforeTranster = $(".areaBeforeTranster:eq("+i+")").val();
        			let areaAfterTranster = $(".areaAfterTranster:eq("+i+")").val();     			
           			let etc = $(".etc:eq("+i+")").val();
      
        			
        			let sub = new Object();
        			sub['TargetInfo'] = targetInfo;
        			sub['BUN1'] = bun1;
        			sub['BUN2'] = bun2;
        			sub['Area_Before_Transfer'] = areaBeforeTranster;
        			sub['Area_After_Transfer'] = areaAfterTranster;
        			sub['Etc'] = etc;
   				
        			targetArr.push(sub);
        		}            	
           }
           	
           	let inputBusinessOperator = document.getElementById('inputBusinessOperator').value;
         	let inputGovernor = document.getElementById('inputGovernor').value;
         	let inputLandowner = document.getElementById('inputLandowner').value;
         	let notReqReason = $('#notReqReason').val();
         	
         	let amountA = $('#amountA').val();
      	    let amountB = $('#amountB').val();
      	    let amountC = $('#amountC').val();
      	   
      	    let landCnt = $('#landCnt').val();
            let landArea = $('#landArea').val();
            let landPrice = $('#landPrice').val();
            let objCnt = $('#objCnt').val();
            let objPrice = $('#objPrice').val();
            let goodwillCnt = $('#goodwillCnt').val();
            let goodwillPrice = $('#goodwillPrice').val();
      	   
        	amountA=uncomma(amountA);
      	    amountB=uncomma(amountB);
      	    amountC=uncomma(amountC);
    	
      	    landCnt=uncomma(landCnt);
      	    landArea=uncomma(landArea);
	      	landPrice=uncomma(landPrice);
	      	objCnt=uncomma(objCnt);
	      	objPrice=uncomma(objPrice);
	      	goodwillCnt=uncomma(goodwillCnt);
	      	goodwillPrice=uncomma(goodwillPrice);
	      	
	      	
			const data = {
					masterID : masterId,
					groupEstablishedDate : groupEstablishedDate,
					decisionReason : decisionReason,
					businessOperator : inputBusinessOperator,
					governor : inputGovernor,
					landowner : inputLandowner,
					amountA : amountA,
					amountB : amountB,
					amountC : amountC,
					landCnt : landCnt,
					landArea : landArea,
					landPrice : landPrice,
					objCnt : objCnt,
					objPrice : objPrice,
					goodwillCnt : goodwillCnt,
					goodwillPrice : goodwillPrice,
					notReqReason : notReqReason,
					CityPlan : relationArr,
					DateArr : DateArr,
					Decision_Target : targetArr
				}
			
			const dataString = JSON.stringify(data);
			
			localStorage.setItem('dataList'+masterId, dataString);
			alert("완료되었습니다.");
        	
		}
		
		