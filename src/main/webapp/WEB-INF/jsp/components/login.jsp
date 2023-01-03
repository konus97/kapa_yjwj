<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>

<!-- 팝업, 로그인 S -->
   <div class="popup login">
       <div class="p_box">
           <div class="p_head">
               <h3 class="p_title">MEMBERSHIP LOGIN</h3>
               <a href="#!" class="p_close"
                   ><span class="blind">닫기</span></a
               >
           </div>
           <div class="p_body">
               <form id="login_user" class="on">
                   <fieldset>
                       <legend>검색폼</legend>
                       <div class="tab div2">
                           <ul>
                               <li class="on">
                                   <button type="button" class="l_user">
                                     	  핸드폰로그인
                                   </button>
                               </li>
                               <li>
                                   <button type="button" class="l_admin">
                                       	계정로그인
                                   </button>
                               </li>
                           </ul>
                       </div>
                       <div class="form login">
                           <div class="f_wrap">
                               <div class="f_field">
                                   <div class="ff_title">
                                       <label for="lu_call"
                                           >핸드폰번호</label
                                       >
                                   </div>
                                   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                   <div class="ff_wrap">
                                       <span class="ff_group tel">
                                           <label
                                               for="lu_call_0"
                                               class="blind"
                                               >선택</label
                                           >
                                           <select
                                               name="lu_call"
                                               id="lu_call_0"
                                               title="전화번호 첫번째 자리 선택"
                                               class="input"
                                               required
                                           >
                                               <option value="010">
                                                   010
                                               </option>
                                               <option value="011">
                                                   011
                                               </option>
                                               <option value="017">
                                                   017
                                               </option>
                                               <option value="018">
                                                   018
                                               </option>
                                               <option value="019">
                                                   019
                                               </option>
                                           </select>
                                       </span>
                                       <span class="ff_group tel">
                                           <input
                                               type="text"
                                               id="lu_call_1"
                                               name="lu_call"
                                               class="input"
                                               maxlength="4"
                                               required
                                           />
                                       </span>
                                       <span class="ff_group tel">
                                           <input
                                               type="text"
                                               id="lu_call_2"
                                               name="lu_call"
                                               class="input"
                                               maxlength="4"
                                               required
                                           />
                                       </span>
                                   </div>
                               </div>
                           </div>
                           <div class="f_wrap">
                               <div class="f_field">
                                   <div class="ff_title">
                                       <label for="lu_name">비밀번호</label>
                                   </div>
                                   <div class="ff_wrap">
                                       <input
                                           type="password"
                                           id="lu_name"
                                           name="lu_name"
                                           class="input"
                                           placeholder="비밀번호"
                                           required
                                       />
                                   </div>
                               </div>
                           </div>
                           <div class="f_wrap">
                               <div class="f_field">
                                   <div class="ff_title">
                                       <label for="lu_agency"
                                           >기관구분</label
                                       >
                                   </div>
                                   <div class="ff_wrap">
                                       <ul>
                                           <li>
                                               <span class="radio">
                                                   <input
                                                       type="radio"
                                                       name="lu_radio1"
                                                       id="lu_radio1_1"
                                                       checked
                                                   />
                                                   <label for="lu_radio1_1"
                                                       ><i></i
                                                       ><span class="text"
                                                           >사업시행자</span
                                                       ></label
                                                   >
                                               </span>
                                           </li>
                                           <li>
                                               <span class="radio">
                                                   <input
                                                       type="radio"
                                                       name="lu_radio1"
                                                       id="lu_radio1_2"
                                                   />
                                                   <label for="lu_radio1_2"
                                                       ><i></i
                                                       ><span class="text"
                                                           >감정평가사</span
                                                       ></label
                                                   >
                                               </span>
                                           </li>
                                       </ul>
                                   </div>
                               </div>
                           </div>
                           <div class="f_btn">
                               <button class="btn" onclick='userLogin()' type='button'>
                                   	로그인
                               </button>
                               <a
                                   class="btn join t1"
                                   href="#"
                                   >회원가입</a
                               >
                           </div>
                       </div>
                   </fieldset>
               </form>

               <form id="login_admin" action='${pageContext.request.contextPath}/api/login' method="post">
                   <fieldset>
                       <legend>검색폼</legend>
                       <div class="tab div2">
                           <ul>
                               <li>
                                   <button type="button" class="l_user">
                                       	핸드폰로그인
                                   </button>
                               </li>
                               <li class="on">
                                   <button type="button" class="l_admin">
                                       	계정로그인
                                   </button>
                               </li>
                           </ul>
                       </div>
                       <div class="form login">
                           <div class="f_wrap">
                               <div class="f_field">
                                   <div class="ff_title">
                                       <label for="lu_id">아이디</label>
                                   </div>
                                   <div class="ff_wrap">
                                       <input
                                           type="text"
                                           id="lu_id"
                                           name="loginId"
                                           class="input"
                                           placeholder="아이디"
                                           required
                                       />
                                   </div>
                               </div>
                           </div>
                           <div class="f_wrap">
                               <div class="f_field">
                                   <div class="ff_title">
                                       <label for="lu_password"
                                           >비밀번호</label
                                       >
                                   </div>
                                   <div class="ff_wrap">
                                       <input
                                           type="password"
                                           id="lu_password"
                                           name="loginPwd"
                                           class="input"
                                           placeholder="비밀번호"
                                           required
                                       />
                                   </div>
                                   
                                   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                   
                               </div>
                           </div>
                           <div class="f_wrap">
                               <div class="f_field">
                                   <div class="ff_title">
                                       <label for="lu_agency" >기관구분</label>
                                   </div>
                                   <div class="ff_wrap">
                                       <ul>
                                           <li>
                                               <span class="radio">
                                                   <input
                                                       type="radio"
                                                       name="lu_radio2"
                                                       id="lu_radio2_1"
                                                       checked
                                                   />
                                                   <label for="lu_radio2_1" ><i></i><span class="text" >시·군·구</span></label>
                                               </span>
                                           </li>
                                           <li>
                                               <span class="radio">
                                                   <input
                                                       type="radio"
                                                       name="lu_radio2"
                                                       id="lu_radio2_2"
                                                   />
                                                   <label for="lu_radio2_2"><i></i><span class="text">재결관</span></label>
                                               </span>
                                           </li>
                                           <li>
                                               <span class="radio">
                                                   <input
                                                       type="radio"
                                                       name="lu_radio2"
                                                       id="lu_radio2_3"
                                                   />
                                                   <label for="lu_radio2_3"><i></i><span class="text">심위의원</span></label>
                                               </span>
                                           </li>
                                       </ul>
                                   </div>
                               </div>
                           </div>
                           <div class="f_btn">
                               <button class="btn" type="submit">
                                  	 로그인
                               </button>
                           </div>
                       </div>
                   </fieldset>
               </form>
               <p class="text tiny bold cb">
                   * 로그인 하시면 재결감정평가서정보지원센터 시스템의 모든
                 	  정보를 이용하실 수 있습니다.
               </p>
               <ul class="member_find">
                   <li><a href="#">아이디 찾기</a></li>
                   <li><a href="#">비밀번호 찾기</a></li>
               </ul>
           </div>
       </div>
   </div>
   <!-- 팝업, 로그인 E -->
        
    <script src="${pageContext.request.contextPath}/lib/jquery.3.1.0.min.js"></script>
      
    <script type="text/javascript">
    
    let url = '${pageContext.request.contextPath}/api/login';
    var csrfToken = $("meta[name='_csrf']").attr("content");
    var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	    function submitLogin() {
	    	
	        let loginId = $('#lu_id').val();
	        let loginPwd = $('#lu_password').val();
	
	        if (loginId == "") {
	            alert('아이디를 입력해주세요');
	            return false;
	        }
	
	        if (loginPwd == "") {
	            alert('비밀번호를 입력해주세요');
	            return false;
	        }
	
	        $.ajax({
	            url: url,
	            type: 'post',
	            contentType: 'application/json',
	            async: false,
	            data: JSON.stringify({
	                'loginId': loginId,
	                'loginPwd': loginPwd,
	            }),
	            success: function (data) {
	            	
	            	location.href="${pageContext.request.contextPath}/";
	                
	            },
	            error: function (xhr, status, error) {
	                //로그인 실패
	                console.log(xhr);
	                console.log(status);
	                console.log(error);
	            }
	        });
	    }
	    
	    
	    function userLogin(){
	    	let call0 = document.getElementById('lu_call_0').value;
	    	let call1 = document.getElementById('lu_call_1').value;
	    	let call2 = document.getElementById('lu_call_2').value;
	    	let pwd = document.getElementById('lu_name').value;
	    	let loginId = call0 + call1 + call2
	    	
	    	console.log("들어오긴함?")
	    	
	    	
	    	let loginForm = document.createElement('form');
	    	loginForm.setAttribute("charset", "UTF-8");
	    	loginForm.setAttribute("method", "POST");  //Post 방식
	    	loginForm.setAttribute("action", url); //요청 보낼 주소
	        
	         let inputId = document.createElement("input");
	         inputId.setAttribute("type", "hidden");
	         inputId.setAttribute("name", "loginId");
	         inputId.setAttribute("value", loginId);
	         loginForm.appendChild(inputId);
	         let inputPwd = document.createElement("input");
	         inputPwd.setAttribute("type", "hidden");
	         inputPwd.setAttribute("name", "loginPwd");
	         inputPwd.setAttribute("value", pwd);
	         loginForm.appendChild(inputPwd);
	         
	         let csrf = document.createElement("input");
	         var csrfToken = $("meta[name='_csrf']").attr("content");
	         var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	         console.log('token', csrfToken)
	         console.log('csrfHeader', csrfHeader)
	         csrf.setAttribute("type", "hidden");
	         csrf.setAttribute("name", '_csrf');
	         csrf.setAttribute("value", csrfToken);
	         loginForm.appendChild(csrf);
	         
	         document.body.appendChild(loginForm);
	         loginForm.submit();
	    }
	    
    </script>
     