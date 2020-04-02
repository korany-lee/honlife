<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		if($('#num').val() == "1"){
			$(opener.document).find("#memId").val($("#userId").val());
			window.close();
		}else{
			alert("중복되는 아이디 입니다");
			return false;
		}
		
	});
	
	
});
</script>
</head>
<body>

<form action="idCheckAction" method="post" name="frm" id="frm" >
 <input type="text" name = "userId" value="${memId }" id ="userId"/>
 <div>${msg }</div>
 <input type="hidden" value="${num }" id="num" />
 <input type = "submit" value="아이디확인" /> 
 <input type="button" value="사용하기"  id = "btn"/>
</form>
</body>


</html>

