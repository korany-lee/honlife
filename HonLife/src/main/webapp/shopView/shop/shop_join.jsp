<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="./../common/css/main.css" rel="stylesheet" type="text/css">
<link href="./../common/css/common.css" rel="stylesheet" type="text/css">
<link href="./../common/css/section1.css" rel="stylesheet" type="text/css">
<link href="./../common/css/normalize.css" rel="stylesheet" type="text/css">
<title>HON SHOP :: 혼자서도 멋지게, 모두의 혼 샵</title>

</head>

<body>



<jsp:include page="../includer/header.jsp"></jsp:include>
	<div id="wrap" class="">
		<div id="container">

				
			<div id="main">
				<div id="content">

					<!-- 퀵 메뉴 -->
					
					<div class="page_aticle">
						<!-- Start indiv -->

						<div class="page_location"></div>
						<div class="head_section head_join">
							<h2 class="tit">회원가입</h2>
						</div>

						<div class="member_join">
							<!-- 회원가입일때만 스타일 적용 -->

							<div class="">
								<form id="form" name="frmMember" method="post"
									action="/shop/member/indb.php" onsubmit="return chkForm2(this)">
									<input type=hidden name=mode value="joinMember"> <input
										type="hidden" name="check_mobile" value="" /> <input
										type="hidden" name="auth_finish_code" value="" /> <input
										type=hidden name=rncheck value=""> <input type=hidden
										name=dupeinfo value=""> <input type=hidden name=pakey
										value=""> <input type=hidden name=foreigner value="">
									<input type=hidden name=passwordSkin value="Y">
									<!-- 비밀번호 작성 규칙 보완 스킨패치 여부 -->

									<input type=hidden name=private2 value=""> <input
										type=hidden name=private3 value=""> <input type=hidden
										name='return_url' value="">

									<!-- 네이버체크아웃(회원연동) -->


									<div class="field_head head_type1">
										<h3 class="tit">
											<span class="screen_out">기본정보</span>
										</h3>
										<p class="sub">*필수입력사항</p>
									</div>

									<div class="boardWrite">
										<table class="tbl_comm">
											<tr>
												<td class="memberCols1">아이디*</td>
												<td class="memberCols2"><input type="text" name="m_id"
													value="" maxlength="16" required fld_esssential
													option=regId label="아이디"
													placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"> <input
													type="hidden" name="chk_id" required fld_esssential
													label="아이디중복체크" value=""> 
													<a href="javascript:chkId()"><span class="bhs_button">중복확인</span></a>
													<p class="txt_guide">
														<span class="txt txt_case1">6자 이상의 영문 혹은 영문과 숫자를 조합</span>
														<span class="txt txt_case2">아이디 중복확인</span>
													</p></td>
											</tr>
											<tr>
												<td class="memberCols1">비밀번호*</td>
												<td class="memberCols2"><input type=password
													name=password required fld_esssential option=regPass
													label="비밀번호" maxlength="16" class="reg_pw"
													placeholder="비밀번호를 입력해주세요">
													<p class="txt_guide">
														<span class="txt txt_case1">10자 이상 입력</span> <span
															class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개
															이상 조합</span> <span class="txt txt_case3">동일한 숫자 3개 이상 연속
															사용 불가</span>
													</p></td>
											</tr>
											<tr class="member_pwd">
												<td class="memberCols1">비밀번호확인*</td>
												<td class="memberCols2"><input type=password
													name=password2 required fld_esssential option=regPass
													label="비밀번호" maxlength="16" class="confirm_pw"
													placeholder="비밀번호를 한번 더 입력해주세요">
													<p class="txt_guide">
														<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
													</p></td>
											</tr>
											<tr>
												<td class="memberCols1">이름*</td>
												<td class="memberCols2"><input type="text" name=name
													value="" required fld_esssential label="이름"
													placeholder="고객님의 이름을 입력해주세요"></td>
											</tr>

											<tr>
												<td class="memberCols1">이메일*</td>
												<td class="memberCols2"><input type="text" name=email
													value="" size=30 required fld_esssential option=regEmail
													label="이메일" placeholder="예: honshop@honlife.com">
													<input type=hidden name=chk_email required fld_esssential
													label="이메일중복체크"> <a href="javascript:void(0)"
													onClick="chkEmail()"><span class="bhs_button">이메일
															중복확인</span></a></td>
											</tr>


											<tr class="mobile">
												<td class="memberCols1">휴대폰*</td>
												<td class="memberCols2">
													<div class="phone_num">
														<input type="text" value="" pattern="[0-9]*"
															name="mobileInp" placeholder="숫자만 입력해주세요" class="inp">
														<input type="hidden" name="mobile[]" id="mobile0" value=""
															required fld_esssential option=regNum label="휴대폰">
														<input type="hidden" name="mobile[]" id="mobile1" value=""
															required fld_esssential option=regNum label="휴대폰">
														<input type="hidden" name="mobile[]" id="mobile2" value=""
															required fld_esssential option=regNum label="휴대폰">
													</div>

												</td>
											</tr>

											<tr>
												<td class="memberCols1">배송 주소</td>
												<td class="memberCols2">
													<div class="field_address">
														<input type="hidden" name="zonecode" id="zonecode"
															size="5" readonly value="" label="주소를 선택해 주세요.">
														<input type="hidden" name=zipcode[] id="zipcode0" size=3
															readonly value="" label="주소를 선택해 주세요."> <input
															type="hidden" name=zipcode[] id="zipcode1" size=3
															readonly value="" label="주소를 선택해 주세요."> <input
															type="hidden" name=address id="address" readonly value=""
															label="주소를 선택해 주세요."> <input type="hidden"
															name="road_address" id="road_address" value=""> <a
															href="javascript:void(0)" id="btnAddressSearch"
															onClick="javascript:popup('../proc/popup_address.php',530,500)">
															<span class="bhs_button"> <span class="ico"></span>
																<span class="txt">주소 검색</span>
														</span>
														</a>
														<p class="txt_guide">
															<span class="txt txt_case1">배송가능여부를 확인할 수 있습니다.</span>
														</p>
														<div id="addressView">
															<div class="view_address"></div>
														</div>
													</div>

													<div class="field_address lst">
														<input type="text" name="address_sub" id="address_sub"
															value="" onkeyup="SameAddressSub(this)"
															oninput="SameAddressSub(this)" label="세부주소"
															placeholder="세부주소를 입력해주세요." class="byteTotext">
														<p class="txt_guide">
															<span class="txt"> <span id="div_road_address"></span>
																<span id="div_road_address_sub"></span>
															</span>
														</p>

														<div class="bytes_wrapper chk_bytes">
															<span class="bytes">0</span>자 / <span class="limit">50</span>자
														</div>
													</div>
												</td>
											</tr>


											<tr class="select_sex">
												<td class="memberCols1">성별</td>
												<td class="memberCols2">
													<div class="group_radio">
														<label class="label_radio"> 
														<input type=radio name=sex_option label="성별" value="m"> 
															<span class="text_position">남자</span>
														</label> 
														<label class="label_radio"> 
														<input type=radio name=sex_option label="성별" value="w"> 
															<span class="text_position">여자</span>
														</label> 
														<label class="label_radio"> 
														<input type=radio name=sex_option label="성별" value="n"> 
														<span class="text_position">선택안함</span>
														</label> 
														<input type="hidden" type=radio name=sex label="성별"
															value="">
													</div>
												</td>
											</tr>
											

											<tr class="birth field_birth">
												<td class="memberCols1">생년월일</td>
												<td class="memberCols2">
													<div class="birth_day">
														<input type="text" name=birth_year id="birth_year"
															pattern="[0-9]*" value="" label="생년월일" size=4 maxlength=4
															placeholder="YYYY"> <span class="bar"><span>/</span></span>
														<input type="text" name=birth[] id="birth_month"
															pattern="[0-9]*" value="" label="생년월일" size=2 maxlength=2
															placeholder="MM"> <span class="bar"><span>/</span></span>
														<input type="text" name=birth[] id="birth_day"
															pattern="[0-9]*" value="" label="생년월일" size=2 maxlength=2
															placeholder="DD">
													</div>
													<p class="txt_guide">
														<span class="txt bad"></span>
													</p>

												</td>
											</tr>
										</table>

									</div>
									<div id="avoidDbl">
										<button type="submit" class="btn_submit">가입하기</button>
									</div>
								</form>
							</div>

						</div>

						
					</div>
					<!-- End indiv -->

				</div>
				<!-- #content -->
			</div>
			<!-- #main -->


		</div>
		<!-- #container -->
	</div>
	<!-- #wrap  -->

	<jsp:include page="../includer/footer.jsp"></jsp:include>

	
</body>
</html>