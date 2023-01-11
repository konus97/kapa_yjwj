let targetFileCount = 2;

function addNewFileTarget(position) {

	let trCount = $(".fileInfo"+position).length;

	let addList = new Array();

	let fileListCount = document.getElementById('fileList'+position).children.length+1;
											
	addList.push("<div id=\"fileInfo"+position+"-"+fileListCount+"\" class=\"file_flex fileInfo"+position+" fileDiv\">  ");        
	//addList.push("	<div class=\"file_flex\">");
    addList.push("      <input class=\"input40 file_name fileLabel"+position+"\"  maxlength=\"50\"> ");
    addList.push("      <div class=\"file_btn_wrap\"> ");
    addList.push("           <div style=\"display: flex\"> ");
    addList.push("               <div id=\"fileText"+position+"-"+fileListCount+"\" class=\"input40 file_btn\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('"+position+"', this);return false;\">파일 없음</div> ");
    addList.push("               <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('"+position+"', this);return false;\"> ");
    addList.push("                   <i class=\"close icon white\"></i> ");
    addList.push("                   	삭제");
    addList.push("               </button>");
    addList.push("               <button class=\"btn nohover t4 small\" onclick=\"addNewFileTarget('"+position+"');return false;\">");
    addList.push("               	<i class=\"pluse icon white\"></i>추가");
    addList.push("               </button>");
    addList.push("          </div>");
    //addList.push("      </div>");
    addList.push("   </div>");
    addList.push("</div>");

    $("#fileList"+position).append(addList.join(''));

   const fileForm = document.getElementById('fileForm');
				const fileInput = makeFileInput();
				const input = makeInput();
                const div = document.getElementById('fileDiv'+position);
                const childrenLength = div.querySelectorAll('.fileInput').length;
                fileInput.id = 'fileInput'+position+'-'+childrenLength;
                input.id = 'input'+position+'-'+childrenLength; 
                
                fileInput.name = 'fileInput'+position+'-'+childrenLength;
                input.name = 'input'+position+'-'+childrenLength;
                fileInput.dataset.inputPosition = position;
                fileInput.dataset.inputId = childrenLength;
                div.appendChild(fileInput);
                div.appendChild(input);

	targetFileCount++;
	
	
}

            function makeFileInput() {
                const fileInput = document.createElement('input');
                fileInput.type = 'file';
                fileInput.name = 'name';
                fileInput.classList.add('fileInput');
                return fileInput;
            }
            
            function makeInput(){
            	const input = document.createElement('input');
            	input.type = 'text';
            	input.name = 'text';
            	input.classList.add('textInput');
            	return input;
            }
            


function removeFileTarget(position, arg){
	
	let trCount = $(".fileInfo"+position).length;
	const div = arg.closest('.fileDiv');
	
	if(div.parentNode.childElementCount>1){
	const id = div.id;  //fileInfo1-3
	div.parentElement.removeChild(div);
	
	const inputNumber = id.split('fileInfo')[1]; // 1-3
	let index = inputNumber.split('-'); // 1, 3
	const input = document.getElementById('fileInput'+index[0]+'-'+(Number(index[1])-1));
	console.log(index);
	console.log('fileInput'+index[0]+'-'+(Number(index[1])-1));
	console.log(input);
	input.parentElement.removeChild(input);
	const textInput = document.getElementById('input'+index[0]+'-'+(Number(index[1])-1));

	textInput.parentElement.removeChild(textInput);
	}
} 
