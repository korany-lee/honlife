<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="form-group--number">
                                            <a href="#" id="increaseQuantity">올림</a>
                                            <a href="#" id="decreaseQuantity">내림</a>
                                            <span id="numberUpDown" class="form-control">1</span>
                                        </div>                           
                                      
<!--                                          <div class="number">
<span id="numberUpDown">1</span>
<a href="#" id="increaseQuantity">수량 올림</a>
    <a href="#" id="decreaseQuantity">수량 내림</a>

</div> -->
                           	  <script src="http://code.jquery.com/jquery-latest.js"></script>
                                <script type="text/javascript">
                                $(function(){
                                	$('#decreaseQuantity').click(function(e){
                                	e.preventDefault();
                                	var stat = $('#numberUpDown').text();
                                	var num = parseInt(stat,10);
                                	num--;
                                	if(num<=0){
                                	alert('더이상 줄일수 없습니다.');
                                	num =1;
                                	}
                                	$('#numberUpDown').text(num);
                                	});
                                	$('#increaseQuantity').click(function(e){
                                	e.preventDefault();
                                	var stat = $('#numberUpDown').text();
                                	var num = parseInt(stat,10);
                                	num++;

                                	if(num>5){
                                	alert('더이상 늘릴수 없습니다.');
                                	num=5;
                                	}
                                	$('#numberUpDown').text(num);
                                	});
                                	});
       					</script>
</body>
</html>