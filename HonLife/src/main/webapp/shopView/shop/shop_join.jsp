<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>



<head>

<link rel="shortcut icon" type="image/x-icon"
	href="./main/images/WEB.png" />
<link href="./common/css/main.css" rel="stylesheet" type="text/css">
<link href="./common/css/common.css" rel="stylesheet" type="text/css">
<link href="./common/css/section1.css" rel="stylesheet" type="text/css">
<link href="./common/css/normalize.css" rel="stylesheet" type="text/css">
<title>HON SHOP :: 혼자서도 멋지게, 모두의 혼 샵</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){
	$("#form").submit(function(){
		if($("#pw").val() != $("#pwCon").val()){
			$("#pw").val("");
			$("#pwCon").val("");
			$("#pw").focus();
			alert("비밀번호가 다릅니다.");
			return false;
		}
		if($("#idDuplication").val() =="1"){
			alert("아이디 중복확인을 하세요");
			return false;
		}
	
	
	
	});
});

function inputIdChk(){
	$("#idDuplication").val("1");
}

function chkId() {
	if($("#memId").val() =="") {
		$("memId").focus();
		alert("아이디를 입력하세요");
		return false;
	}
	$("#idDuplication").val("0");
	
	window.open('userConfirm?userId='+$("#memId").val(),'아이디 중복확인','width=300 ,height=200');
	
}

</script>
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
							<!-- onsubmit="return chkForm2(this)" 되면 유효성 검사 진행 -->
								<form id="form" name="frmMember" method="post" action="shopJoinAccess">

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
												<td class="memberCols2">
													<input type="text" name="memId" id="memId" maxlength="16" 
													required fld_esssential option=regId label="아이디"
													placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" onkeydown="inputIdChk()"> 
													<input type="hidden" id="idDuplication" value="1"> 
													<a href="javascript:chkId()"><span class="bhs_button">중복확인</span></a>
													<p class="txt_guide">
														<span class="txt txt_case1">6자 이상의 영문 혹은 영문과 숫자를 조합</span>
														<span class="txt txt_case2">아이디 중복확인</span>
													</p>
												</td>
											</tr>
											<tr>
												<td class="memberCols1">비밀번호*</td>
												<td class="memberCols2">
													<input type=password name=password required fld_esssential option=regPass
													label="비밀번호" maxlength="16" id ="pw" class="reg_pw" placeholder="비밀번호를 입력해주세요">
													<p class="txt_guide">
														<span class="txt txt_case1">10자 이상 입력</span> 
														<span class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span> 
														<span class="txt txt_case3">동일한 숫자 3개 이상 연속 사용 불가</span>
													</p>
												</td>
											</tr>
											<tr class="member_pwd">
												<td class="memberCols1">비밀번호확인*</td>
												<td class="memberCols2"><input type=password name=password2 required fld_esssential option=regPass
													label="비밀번호" id="pwCon" maxlength="16" class="confirm_pw"	placeholder="비밀번호를 한번 더 입력해주세요">
													<p class="txt_guide">
														<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
													</p>
												</td>
											</tr>
											<tr>
												<td class="memberCols1">이름*</td>
												<td class="memberCols2">
													<input type="text" name=name id="name" required fld_esssential label="이름" placeholder="고객님의 이름을 입력해주세요">
												</td>
											</tr>

											<tr>
												<td class="memberCols1">이메일*</td>
												<td class="memberCols2">
													<input type="text" name=email id="email" size=30 required fld_esssential option=regEmail
													label="이메일" placeholder="예: hon@honlife.com">
													
												</td>
											</tr>


											<tr class="mobile">
												<td class="memberCols1">휴대폰*</td>
												<td class="memberCols2">
													<div class="phone_num">
														<input type="text" id="ph" pattern="[0-9]*"
															name="mobile" placeholder="숫자만 입력해주세요" class="inp">
													</div>

												</td>

											</tr>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;                
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

											<tr>
												<td class="memberCols1">배송 주소</td>
												<td class="memberCols2">
													<div class="field_address">
														<input type="text" name="zonecode" id="sample4_postcode" placeholder="우편번호" readonly> 
														<input type="text" name="roadAddress" id="sample4_roadAddress" placeholder="도로명주소" readonly>
															<span id="guide" style="color: #999; display: none"></span>
															<input type="text" name="detailAddress" placeholder="상세주소"> 
															<input type="hidden" name="dongAddress" id="sample4_extraAddress" placeholder="참고항목"> 
														<a href="javascript:sample4_execDaumPostcode()" id="btnAddressSearch">
															<span class="bhs_button" style="margin-left: 10px;"> 
																<span class="ico"></span> 
																<span class="txt">주소 검색</span>
															</span>
														</a>
														<p class="txt_guide">
															<span class="txt txt_case1">배송가능여부를 확인할 수 있습니다.</span>
														</p>
													</div>
												</td>
											</tr>

											<tr class="select_sex">
												<td class="memberCols1">성별</td>
												<td class="memberCols2">
													<div class="group_radio">
														<label class="label_radio"> 
															<input type=radio name=sex label="성별" value="m"> 
															<span class="text_position">남자</span>
														</label> 
														<label class="label_radio"> 
															<input type=radio name=sex label="성별" value="w"> 
															<span class="text_position">여자</span>
														</label> 
														<label class="label_radio"> 
															<input type=radio name=sex label="성별" value="n"> 
															<span class="text_position">선택안함</span>
														</label>															
													</div>
												</td>
											</tr>


											<tr class="birth field_birth">
												<td class="memberCols1">생년월일</td>
												<td class="memberCols2">
													<div class="birth_day">
														<input type="text" name=year  id="birth_year" pattern="[0-9]*" value="" 
															label="생년월일" size=4 maxlength=4 placeholder="YYYY"> 
															<span class="bar"><span>/</span></span>
														<input type="text" name=month id="birth_month" pattern="[0-9]*" value="" 
															label="생년월일" size=2 maxlength=2 placeholder="MM"> 
															<span class="bar"><span>/</span></span>
														<input type="text" name=day id="birth_day" pattern="[0-9]*" value="" 
															label="생년월일" size=2 maxlength=2 placeholder="DD">
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