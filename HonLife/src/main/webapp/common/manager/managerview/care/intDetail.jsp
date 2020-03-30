<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
 $(function(){	
	$(document).ready(function(){	
		$.ajax({	        
	        type: "post",
	        url: "intMail",
	        data: "recNum="+$('#recNum').val()+"&reciver="+$('#reciver').val()+"&name="+$('#name').val(),						
	        dataType:"html",
	        success : function test(data){
	        	
	        		location.href="main"
	        		},
	        error : function error(){alert("error");}         
	 }); 
			
	});
}); 
</script> 

</head>




<body>
<img src="../common/member/image/mail.jpg" style="margin: 0px auto;display: block;" />
	<h1 style="font-size: 65px; text-align: center; "> 메일이 전송중입니다 잠시만 기다려주세요!! </h1>
	
			<input type="hidden" value="${one.recruitNo }" id="recNum"/>
			<input type="hidden" value="${one.recruitEmail }" id="reciver"/>
			<input type="hidden" value="${one.recruitName }" id="name"/>

</body>
</html>