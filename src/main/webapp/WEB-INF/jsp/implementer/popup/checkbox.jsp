<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"
	import="java.io.*"
	%>

 <div class="popup check" id="popupCheck" >
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">항목 선택
                    </h3>
                    <a href="#" class="p_close" onclick="closePopup('checkbox');return false;">
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
                                  <input type="checkbox" class="opinion_check" data-type="1" data-title="지연가산금" id="check1">
                                  <label for="check1">지연가산금</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  02
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="2" data-title="보상금 증액" id="check2">
                                  <label for="check2">보상금 증액</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  03
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="3" data-title="허가건축물 등 불법형질변경" id="check3">
                                  <label for="check3">허가건축물 등 불법형질변경</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  04
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="4" data-title="일단지  보상" id="check4">
                                  <label for="check4">일단지  보상</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  05
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check"  data-type="5" data-title="미지금 용지" id="check5">
                                  <label for="check5">미지금 용지</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  06
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="6" data-title="사도평가" id="check6">
                                  <label for="check6">사도평가</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  07
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="7" data-title="잔여지 매수청구" id="check7">
                                  <label for="check7">잔여지 매수청구</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  08
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="8" data-title="잔여지 가치하락" id="check8">
                                  <label for="check8">잔여지  가치하락</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  09
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="9" data-title="잔여건물 가치감소" id="check9">
                                  <label for="check9">잔여건물 가치감소</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  10
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="10" data-title="잔여건물 매수청구" id="check10">
                                  <label for="check10">잔여건물 매수청구</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  11
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="11" data-title="누락 물건 반영" id="check11">
                                  <label for="check11">누락 물건 반영</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  12
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="12" data-title="휴업보상(이전비)평가" id="check12">
                                  <label for="check12">휴업보상(이전비)평가</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  13
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="13" data-title="폐업보상" id="check13">
                                  <label for="check13">폐업보상 </label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  14
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="14" data-title="영농손실보상" id="check14">
                                  <label for="check14">영농손실보상</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  15
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="15" data-title="휴직(실직)보상" id="check15">
                                  <label for="check15">휴직(실직)보상</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  16
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="16" data-title="사업폐지(취소, 변경, 중단)" id="check16">
                                  <label for="check16">사업폐지(취소, 변경, 중단)
                                  </label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  17
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="17" data-title="이주대책 수립 " id="check17">
                                  <label for="check17">이주대책 수립
                                  </label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  18
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="18" data-title="이주정착금, 주거이전비, 이사비 " id="check18">
                                  <label for="check18">이주정착금, 주거이전비, 이사비</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  19
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="19" data-title="임료손실" id="check19">
                                  <label for="check19">임료손실</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  20
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="20" data-title="대토보상" id="check20">
                                  <label for="check20">대토보상</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  21
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="21" data-title="구분지상권" id="check21">
                                  <label for="check21">구분지상권</label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  22
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="22" data-title="10%이상 변동" id="check22">
                                  <label for="check22">10%이상 변동
                                </label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  23
                              </div>
                              <div class="check_input">
                                  <input type="checkbox"   class="opinion_check" data-type="23" data-title="기타(그 외)" id="check23">
                                  <label for="check23">기타(그 외)
                                </label>
                              </div>
                          </div>
                          <div class="checkbox div2">
                              <div class="check_num">
                                  24
                              </div>
                              <div class="check_input">
                                  <input type="checkbox" class="opinion_check" data-type="24" data-title="소유자 의견 없음" id="check24">
                                  <label for="check24">소유자 의견 없음
                                  </label>
                              </div>
                          </div>
                      </div>

                    </div>
                </div>
                <div class="p_foot">
                    <button class="btn h50 mr10" onclick="checkItem();return false;" >확인</button>
                    <a href="#" class="btn t1 h50" onclick="closePopup('checkbox');return false;">취소</a>
                </div>
            </div>
          </div>
    </div>