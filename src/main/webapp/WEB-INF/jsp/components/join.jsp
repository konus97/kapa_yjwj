<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>

 <!-- join popup S -->
        <div id="loginPopup" class="popup reg">
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">MEMBERSHIP LOGIN</h3>
                    <a
                        href="#"
                        class="p_close"
                        onclick="closePopupUserReg();return false;"
                        ><span class="blind">닫기</span></a
                    >
                </div>
                <div class="p_body">
                    <form id="join_user" class="on">
                        <fieldset>
                            <div class="form join">
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

<!--                                                  <li>
                                                    <span class="radio">
                                                        <input
                                                            type="radio"
                                                            name="lu_radio1"
                                                            id="lu_radio1_2"
                                                        />
                                                        <label for="lu_radio1_2"
                                                            ><i></i
                                                            ><span class="text"
                                                                >시·군·구</span
                                                            ></label
                                                        >
                                                    </span>
                                                </li>
                                               

                                                <li>
                                                    <span class="radio">
                                                        <input
                                                            type="radio"
                                                            name="lu_radio1"
                                                            id="lu_radio1_3"
                                                        />
                                                        <label for="lu_radio1_3"
                                                            ><i></i
                                                            ><span class="text"
                                                                >감정평가사</span
                                                            ></label
                                                        >
                                                    </span>
                                                </li> -->
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title">
                                            <label for="lu_name"
                                                >사건번호</label
                                            >
                                        </div>
                                        <div class="ff_wrap">
                                            <input
                                                type="text"
                                                id="caseNo"
                                                name="lu_name"
                                                class="input"
                                                placeholder="사건번호를 입력하세요"
                                                required
                                            />
                                        </div>
                                    </div>
                                </div>

                                <div class="f_btn">
                                    <button class="btn join" type="button" id="join">
                                        	확인
                                    </button>
                                    <a
                                        href="#"
                                        class="btn t1"
                                        onclick="closePopupUserReg();return false;"
                                        >취소</a
                                    >
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <!-- join popup E -->