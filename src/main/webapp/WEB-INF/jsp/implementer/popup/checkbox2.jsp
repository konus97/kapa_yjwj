<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"
	import="java.io.*"
	%>

 <div class="popup check" id="popupCheck2" >
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">항목 선택
                    </h3>
                    <a href="#" class="p_close" onclick="closePopup('checkbox2');return false;">
                    	<span class="blind">닫기</span>
                    </a>
                </div>
                <div class="p_body">
                    <div class="wrap">
                      <div class="check_wrap">
                        <div class="check_inner">
                          <div class="checkbox div2">
                              <div class="check_num">
                                  01
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="1" data-title="지연가산금(재결신청 청구)" id="opinion_radio1" name="opinion_radio">
                                  <label for="opinion_radio1">지연가산금(재결신청 청구)</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  02
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="2" data-title="보상금 증액" id="opinion_radio2" name="opinion_radio">
                                  <label for="opinion_radio2">보상금 증액</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  03
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="3" data-title="협의 미이행(불이행,미준수)" id="opinion_radio3" name="opinion_radio">
                                  <label for="opinion_radio3">협의 미이행(불이행,미준수)</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  04
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="4" data-title="사업폐지(취소,중단,변경,보류,제외)" id="opinion_radio4" name="opinion_radio">
                                  <label for="opinion_radio4">사업폐지(취소,중단,변경,보류,제외)</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  05
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio"  data-type="5" data-title="재결 보류" id="opinion_radio5" name="opinion_radio">
                                  <label for="opinion_radio5">재결 보류</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  06
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="6" data-title="무허가건물 부지면적 보상" id="opinion_radio6" name="opinion_radio">
                                  <label for="opinion_radio6">무허가건물 부지면적 보상</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  07
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="7" data-title="잔여지/잔여건물 가치 하락" id="opinion_radio7" name="opinion_radio">
                                  <label for="opinion_radio7">잔여지/잔여건물 가치 하락</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  08
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="8" data-title="잔여지/잔여건물 매수 청구(확대보상)" id="opinion_radio8" name="opinion_radio">
                                  <label for="opinion_radio8">잔여지/잔여건물 매수 청구(확대보상)</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  09
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="9" data-title="사도평가 적정성" id="opinion_radio9" name="opinion_radio">
                                  <label for="opinion_radio9">사도평가 적정성</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  10
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="10" data-title="일단지 보상" id="opinion_radio10" name="opinion_radio">
                                  <label for="opinion_radio10">일단지 보상</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  11
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="11" data-title="미지급 용지" id="opinion_radio11" name="opinion_radio">
                                  <label for="opinion_radio11">미지급 용지</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  12
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="12" data-title="영업보상(이전비) 적정성" id="opinion_radio12" name="opinion_radio">
                                  <label for="opinion_radio12">영업보상(이전비) 적정성</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  13
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="13" data-title="누락 물건 반영" id="opinion_radio13" name="opinion_radio">
                                  <label for="opinion_radio13">누락 물건 반영</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  14
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="14" data-title="폐업 보상" id="opinion_radio14" name="opinion_radio">
                                  <label for="opinion_radio14">폐업 보상</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  15
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="15" data-title="영농손실보상" id="opinion_radio15" name="opinion_radio">
                                  <label for="opinion_radio15">영농손실보상</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  16
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="16" data-title="휴직(실직)보상" id="opinion_radio16" name="opinion_radio">
                                  <label for="opinion_radio16">휴직(실직)보상
                                  </label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  17
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="17" data-title="이주대책 수립 " id="opinion_radio17" name="opinion_radio">
                                  <label for="opinion_radio17">이주대책 수립
                                  </label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  18
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="18" data-title="이주정착금, 주거이전비, 이사비 " id="opinion_radio18" name="opinion_radio">
                                  <label for="opinion_radio18">이주정착금, 주거이전비, 이사비</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  19
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="19" data-title="구분지상권" id="opinion_radio19" name="opinion_radio">
                                  <label for="opinion_radio19">구분지상권</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  20
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="20" data-title="10% 변동 내역" id="opinion_radio20" name="opinion_radio">
                                  <label for="opinion_radio20">10% 변동 내역</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  21
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="21" data-title="기타(임료손실,대토보상 등)" id="opinion_radio21" name="opinion_radio">
                                  <label for="opinion_radio21">기타(임료손실,대토보상 등)</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  22
                              </div>
                              <div class="check_input">
                                  <input type="radio" class="opinion_radio" data-type="22" data-title="소유자 의견 없음" id="opinion_radio22" name="opinion_radio">
                                  <label for="opinion_radio22">소유자 의견 없음
                                </label>
                              </div>
                          </div>
                      </div>

                    </div>
                </div>
                <div class="p_foot">
                    <button class="btn h50 mr10" onclick="checkItem2();return false;" >다음</button>
                    <a href="#" class="btn t1 h50" onclick="closePopup('checkbox2');return false;">취소</a>
                </div>
            </div>
          </div>
    </div>