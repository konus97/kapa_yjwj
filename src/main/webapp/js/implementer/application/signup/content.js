let targetCount = 0;
let targetCount2 = 0;
let targetCount3 = 2;

function addNewTarget(position) {

	let trCount = $('.targetItem').length;

    if(trCount==0){
        $("#targetList").empty();
    }

	let addList = new Array();

	addList.push("<tr class=\"targetItem\" id=\"targetInfo"+targetCount+"\"  >");
    addList.push("   <td>");
    addList.push("        <input  type=\"text\" class=\"input40 targetInfo\" id=\"targetAddr"+targetCount+"\" maxlength=\"25\" />");
    addList.push("   </td>");
    addList.push("   <td>");
    addList.push("        <input  type=\"text\" class=\"input40 bun1\" id=\"targetMainBun"+targetCount+"\" maxlength=\"25\" />");
    addList.push("   </td>");
    addList.push("   <td>");
    addList.push("        <input  type=\"text\" class=\"input40 bun2\" id=\"targetSubBun"+targetCount+"\" maxlength=\"25\" />");
    addList.push("   </td>");
    addList.push("   <td>");
    addList.push("        <input  type=\"text\" class=\"input40 areaBeforeTranster\" id=\"targetBefore"+targetCount+"\" maxlength=\"25\" />");
    addList.push("   </td>");				 
    addList.push("   <td>");
    addList.push("        <input  type=\"text\" class=\"input40 areaAfterTranster\"  id=\"targetAfter"+targetCount+"\" maxlength=\"25\" />");
    addList.push("   </td>");		
    addList.push("   <td>");
    addList.push("        <input  type=\"text\" class=\"input40 etc\" id=\"targetBigo"+targetCount+"\" maxlength=\"25\" />");
    addList.push("   </td>");                                                                                                          
    addList.push("  <td>"); 
    addList.push("      <a href=\"#!\" class=\"btn small03 t4 nohover h30\" onclick=\"addNewTarget();return false;\" >추가</a>"); 
    addList.push("      <a href=\"#!\" class=\"btn small03 nohover t1 h30\" onclick=\"removeTarget('"+targetCount+"');return false;\" >삭제</a>"); 
    addList.push("  </td>");
    addList.push("</tr>");

	$("#targetList").append(addList.join(''));
	targetCount++;
	
}

function removeTarget(viewSeq){
	
	let trCount = $('.targetItem').length;

	if(trCount>1){
		$("#targetInfo"+viewSeq+"").remove();
	}else{

        let addList = new Array();

       addList.push(" <tr>");
       addList.push("    <td colSpan=\"7\">");
       addList.push("             주요쟁점에 건축물이 있는 경우");
       addList.push("    </td>");
       addList.push("</tr>   ");

       $("#targetList").empty();
       $("#targetList").append(addList.join(''));

    }
	
}

function addNewRelation(){
	
	let trCount = $('.relationItem').length;

    if(trCount==0){
        $("#relationList").empty();
    }

	let addList = new Array();

	addList.push("<tr class=\"relationItem\" id=\"relationInfo"+targetCount2+"\"  >");
    addList.push("   <td>");
    addList.push("        <input type=\"text\" class=\"input40 relationTitle\" id=\"relationTitle"+targetCount2+"\" maxlength=\"50\" />");
    addList.push("   </td>");
    addList.push("   <td>");
    addList.push("        <input type=\"text\" class=\"input40 relationContent\" id=\"relationContent"+targetCount2+"\" maxlength=\"50\" />");
    addList.push("   </td>");                                                                                                       
    addList.push("  <td>"); 
    addList.push("      <a href=\"#!\" class=\"btn small03 t4 nohover h30\" onclick=\"addNewRelation();return false;\" >추가</a>"); 
    addList.push("      <a href=\"#!\" class=\"btn small03 nohover t1 h30\" onclick=\"removeRelation('"+targetCount2+"');return false;\" >삭제</a>"); 
    addList.push("  </td>");
    addList.push("</tr>");

	$("#relationList").append(addList.join(''));
	targetCount2++;
	

}

function removeRelation(viewSeq){
	
	let trCount = $('.relationItem').length;

	if(trCount>1){
		$("#relationInfo"+viewSeq+"").remove();
	}else{

        let addList = new Array();

       addList.push(" <tr>");
       addList.push("    <td colSpan=\"3\">");
       addList.push("       도시계획 [사업인정]관계 추가");
       addList.push("    </td>");
       addList.push("</tr>   ");

       $("#relationList").empty();
       $("#relationList").append(addList.join(''));

    }
	
}

function addNewDate() {
    let trCount = $('.dateItem').length;

    if (trCount == 0) {
        $("#dateList").empty();
    }

    let addList = [];

    addList.push("<tr class=\"dateItem\" id=\"dateInfo" + targetCount3 + "\"  >");
    addList.push("   <td>");

    addList.push("		<span class=\"w320\">");
    addList.push("			<span class=\"consultationDate\"><label for=\"il_date" + targetCount3 + 
							 "\" class=\"blind\"></label><input type=\"text\" name=\"il_date" + 
						     targetCount3 + "\" id=\"il_date" + targetCount3 + 
		  				     "\" class=\"datepicker input40 t1 consultationDate\" placeholder=\"협의일\" required /><input type=\"text\" name=\"il_date" + 
							 targetCount3 + "_text\" id=\"il_date" + targetCount3 + "_text\" class=\"input40 t1 consultationDateText\" placeholder=\"내용\" required /></span>  ");
    addList.push("		</span>");

    addList.push("   </td>");
    addList.push("  <td>");
    addList.push("      <a href=\"#!\" class=\"btn small03 t4 nohover h30\" onclick=\"addNewDate();return false;\" >추가</a>");
    addList.push("      <a href=\"#!\" class=\"btn small03 nohover t1 h30\" onclick=\"removeDate('" + targetCount3 + "');return false;\" >삭제</a>");
    addList.push("  </td>");
    addList.push("</tr>");

    $("#dateList").append(addList.join(''));
    targetCount3++;

    $(".datepicker").datepicker({
        ignoreReadonly: true,
        format: 'yyyy-mm-dd', // 날짜 형식을 연도-월-일로 설정
        todayHighlight: true, // 오늘 날짜에 하이라이트 효과 부여
		changeYear: true, // 년도 선택 가능하도록 설정
		yearRange: '1960:' + new Date().getFullYear(), // 선택 가능한 년도 범위 설정
        autoclose: true, // 날짜 선택 후 자동으로 닫힘
        beforeShow: function (input, inst) {
            let value = $(input).val();
            if (value === '') {
                let currentDate = new Date();
                let year = currentDate.getFullYear(); // 현재 년도 가져오기
                let month = currentDate.getMonth(); // 현재 월 가져오기
                $(this).datepicker('setDate', new Date(year, month, currentDate.getDate())); // 년도와 월을 설정하여 날짜 선택창에 표시
            }
        }
    });
}



function removeDate(viewSeq){
	
	let trCount = $('.dateItem').length;
	
	if(trCount>1){
		$("#dateInfo"+viewSeq+"").remove();
	}else{

        let addList = new Array();

       addList.push(" <tr>");
       addList.push("    <td colSpan=\"2\">");
       addList.push("      협의 날짜 추가			");
       addList.push("    </td>");
       addList.push("</tr>   ");

       $("#dateList").empty();
       $("#dateList").append(addList.join(''));

    }
	
}


