<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
alert('예약이 불가능한 날짜입니다. 날짜를 다시 설정하세요.');
window.location.href='detail?roomNo='+${roomNo};
</script>
</body>
</html>