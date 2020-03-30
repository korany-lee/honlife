<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인성검사 문항</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){	
	
	$('#Sbtn').click(
			function() {

				var t = 0;
				for (t = 0; t <=9; t++) {
					var chkRadio2 = document
							.getElementsByName("personResponse["+t+"]");
					var selType2 = null;
					var isCheck = true
					for (var i = 0; i < chkRadio2.length; i++) {
						if (chkRadio2[i].checked == true) {
							isCheck = false;
							break;
						}
					}
					if (isCheck == true) {
						alert(t+1 + "번째 항목이 누락 되었습니다.");
						chkRadio2[0].focus();
						return false;
					}
				}
			});
	
});
</script>
</head>
<style type="text/css" >
    tr td { 
  			 background-color: #bfbcbc;   
    
  }


</style>
<body>
	<jsp:include page="../includer/careheader.jsp"/>
	<main>



<section class="animate-in-view">
	<div class="section-content clearfix">
	<form  method="post">
	<input type="hidden" value="${recNum }" name="recNum">
	<input type="hidden" value="" name="reciver" >
			<table style="table-layout: fixed; width: 900px; text-align: center;margin-left: 200px; ">
<colgroup>
<col style="width: 40px">
<col style="width: 450px">
<col style="width: 70px">
<col style="width: 60px">
<col style="width: 60px">
<col style="width: 60px">
<col style="width: 70px">
</colgroup>
  <tr>
    <td>번호</td>
    <td>문항</td>
    <td colspan="5">선택<br></td>
  </tr>
  <tr>
    <td >1</td>
    <td >처음 생각하고 판단한 것이 나중에 판단한 것 보다 옳다고 생각한다. </td>
    <td>매우 아니다<input type="radio" value="2" name="personResponse[0]" ></td>
    <td>아니다<input type="radio" value="4" name="personResponse[0]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[0]" ></td>
    <td>그렇다<input type="radio" value="8" name="personResponse[0]" ></td>
    <td>매우 그렇다<input type="radio" value="10" name="personResponse[0]" ></td>
  </tr>
  
  <tr>
    <td>2</td>
    <td>상대방과 의견이 다르면 설득하려고 노력한다. </td>
      <td>매우아니다<input type="radio" value="2" name="personResponse[1]" ></td>
    <td>아니다<input type="radio" value="4" name="personResponse[1]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[1]" ></td>
    <td>그렇다<input type="radio" value="8" name="personResponse[1]" ></td>
    <td>매우 그렇다<input type="radio" value="10" name="personResponse[1]" ></td>
  </tr>
  
  <tr>
    <td>3</td>
    <td>사건을 접하면 축소 해석하기보다는 확대 해석하는 편이다. </td>
     <td>매우 아니다<input type="radio" value="10" name="personResponse[2]" ></td>
    <td>아니다<input type="radio" value="8" name="personResponse[2]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[2]" ></td>
    <td>그렇다<input type="radio" value="4" name="personResponse[2]" ></td>
    <td>매우 그렇다<input type="radio" value="2" name="personResponse[2]" ></td>
  </tr>
  
  <tr>
    <td>4</td>
    <td>나를 화나게 하는 사람에게 물건을 집어 던진 적이 있다.</td>
      <td>매우 아니다<input type="radio" value="10" name="personResponse[3]" ></td>
    <td>아니다<input type="radio" value="8" name="personResponse[3]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[3]" ></td>
    <td>그렇다<input type="radio" value="4" name="personResponse[3]" ></td>
    <td>매우 그렇다<input type="radio" value="2" name="personResponse[3]" ></td>
  </tr>
  
  <tr>
    <td>5</td>
    <td>예상하지 못한 질문에도 쉽게 대답한다.</td>
   <td>매우 아니다<input type="radio" value="2" name="personResponse[4]" ></td>
    <td>아니다<input type="radio" value="4" name="personResponse[4]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[4]" ></td>
    <td>그렇다<input type="radio" value="8" name="personResponse[4]" ></td>
    <td>매우 그렇다<input type="radio" value="10" name="personResponse[4]" ></td>
  </tr>
  
  <tr>
    <td>6</td>
    <td>주어진 문제를 폭넓게 이해하는 편이다. </td>
      <td>매우 아니다<input type="radio" value="2" name="personResponse[5]" ></td>
    <td>아니다<input type="radio" value="4" name="personResponse[5]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[5]" ></td>
    <td>그렇다<input type="radio" value="8" name="personResponse[5]" ></td>
    <td>매우 그렇다<input type="radio" value="10" name="personResponse[5]" ></td>
  </tr>
  
  <tr>
    <td>7</td>
    <td>주위에 관심을 많이 기울인다. </td>
      <td>매우 아니다<input type="radio" value="2" name="personResponse[6]" ></td>
    <td>아니다<input type="radio" value="4" name="personResponse[6]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[6]" ></td>
    <td>그렇다<input type="radio" value="8" name="personResponse[6]" ></td>
    <td>매우 그렇다<input type="radio" value="10" name="personResponse[6]" ></td>
  </tr>
  
  <tr>
    <td>8</td>
    <td>문제가 생기면 나보다 상대의 입장을 생각한다. </td>
      <td>매우 아니다<input type="radio" value="2" name="personResponse[7]" ></td>
    <td>아니다<input type="radio" value="4" name="personResponse[7]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[7]" ></td>
    <td>그렇다<input type="radio" value="8" name="personResponse[7]" ></td>
    <td>매우 그렇다<input type="radio" value="10" name="personResponse[7]" ></td>
  </tr>
  
  <tr>
    <td>9</td>
    <td>다른 사람에게 없는 생각이나 신념을 갖고 있다. </td>
   <td>매우 아니다<input type="radio" value="2" name="personResponse[8]" ></td>
    <td>아니다<input type="radio" value="4" name="personResponse[8]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[8]" ></td>
    <td>그렇다<input type="radio" value="8" name="personResponse[8]" ></td>
    <td>매우 그렇다<input type="radio" value="10" name="personResponse[8]" ></td>
  </tr>
  
  <tr>
    <td>10</td>
    <td>일을 정확하게 처리하는 편이다. </td>
     <td>매우 아니다<input type="radio" value="2" name="personResponse[9]" ></td>
    <td>아니다<input type="radio" value="4" name="personResponse[9]" ></td>
    <td>보통<input type="radio" value="6" name="personResponse[9]" ></td>
    <td>그렇다<input type="radio" value="8" name="personResponse[9]" ></td>
    <td>매우 그렇다<input type="radio" value="10" name="personResponse[9]" ></td>
  </tr>
  <tr>

  </tr>
</table>
  			<div class="container-contact100-form-btn">
					<input id ="Sbtn" class="contact100-form-btn" type="submit"  value="검사내용접수" style="cursor:pointer; font-size: 25px; width: 900px">
				</div>

	 </form>
	
	
	
	



</div>
</section>

</main>
	
	
	
<jsp:include page="../includer/carefooter.jsp"/>
</body>
</html>