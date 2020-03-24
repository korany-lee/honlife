
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>SIDE</title>



<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean" rel="stylesheet">
<link href="../common/manager/managercss/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
<link href="../common/manager/managercss/font-awesome.css" rel="stylesheet" type="text/css" />

<script src="../common/manager/managerjs/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="../common/manager/managerjs/jquery-accordion-menu.js" type="text/javascript"></script>

<style type="text/css">
*{box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box; }
body{background:#f0f0f0;}
.content{width:240px;}
.filterinput{
	background-color:rgba(249, 244, 244, 0);
	border-radius:15px;
	width:90%;
	height:30px;
	border:thin solid #FFF;
	text-indent:0.5em;
	font-weight:bold;
	color:#FFF;
}
#demo-list a{
	overflow:hidden;
	text-overflow:ellipsis;
	-o-text-overflow:ellipsis;
	white-space:nowrap;

}
</style>


<script type="text/javascript">
jQuery(document).ready(function () {
	jQuery("#jquery-accordion-menu").jqueryAccordionMenu();
	
});

$(function(){	
	
	$("#demo-list li").click(function(){
		$("#demo-list li.active").removeClass("active")
		$(this).addClass("active");
	})	
})	
</script>
</head>
<body>
<div class="content" >
	<div id="jquery-accordion-menu" class="jquery-accordion-menu red">
		<ul id="demo-list" style="font-size:25px; ">		    
		   	<li>
		   		<a href="#">회원관리 </a>
					<ul class="submenu">
						<li><a href="#">회원 리스트 </a>
								<span class="jquery-accordion-menu-label">count</span>
						</li>									
						<li><a href="#">회원 블랙리스트 </a> 
								<span class="jquery-accordion-menu-label">count</span>
						</li>
					</ul>
			</li>			
			<li>
			<a href="#">재고관리 </a>
				<ul class="submenu">
					<li><a href="../manager/cleanorder">청소 물품 발주 </a></li>
					<li><a href="../manager/cleanItemList">발주 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>						
					<li><a href="#">입고확인 </a></li>								
					<li><a href="#">청소 물품 반출 </a></li>
					<li><a href="#">반출 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
					</li>				
				</ul>
			</li>		
			<li>
			<a href="#">객실관리 </a>
				<ul class="submenu">
					<li><a href="../room/register">객실 등록 </a></li>
					<li><a href="../room/list">객실 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>
		  			<li><a href="#">객실 정비 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>
		  			<li><a href="#">객실 건의사항 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>
		  								
					
				</ul>
			</li>
			<li>
			<a href="#">가구관리 </a>
				<ul class="submenu">
					<li><a href="../funiture/register">가구 등록 </a></li>
					<li><a href="../funiture/list">가구 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>
		  			<li><a href="#">가구 정비 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>
		  			<li><a href="#">가구 건의사항 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>						
					
				</ul>
			</li>
			<li>
			<a href="#">자재관리 </a>
				<ul class="submenu">
					<li><a href="../material/register">자재 등록 </a></li>
					<li><a href="#">자재 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>
		  			<li><a href="#">자재 사용현황 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>						
					
				</ul>
			</li>	
			 <li>
				<a href="#">사원관리 </a>
				<ul class="submenu">
					<li><a href="recruit">지원자 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
						</li>
						<li><a href="#">사원 등록 </a></li>
						<li><a href="#">사원 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
						</li>
				</ul>
			</li>		
				<li><a href="#">예약관리 </a>
					<ul class="submenu">			
						<li><a href="#">청소 예약 내역</a>
							<span class="jquery-accordion-menu-label">count</span>
						</li>
						<li><a href="#">세탁 예약 내역 </a>
							<span class="jquery-accordion-menu-label">count</span>
						</li>
						<li><a href="#">객실 예약 내역 </a>
							<span class="jquery-accordion-menu-label">count</span>
						</li>
						<li><a href="#">가구 예약 내역 </a>
							<span class="jquery-accordion-menu-label">count</span>
						</li>					
				</ul>
				</li>	   
		</ul>
	</div>
</div>

<script type="text/javascript">

(function($) {
$.expr[":"].Contains = function(a, i, m) {
	return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
};


function filterList(header, list) {
	var form = $("<form>").attr({
		"class":"filterform",
		action:"#"
	}), input = $("<input>").attr({
		"class":"filterinput",
		type:"text"
	});
	$(form).append(input).appendTo(header);
	$(input).change(function() {
		var filter = $(this).val();
		if (filter) {
			$matches = $(list).find("a:Contains(" + filter + ")").parent();
			$("li", list).not($matches).slideUp();
			$matches.slideDown();
		} else {
			$(list).find("li").slideDown();
		}
		return false;
	}).keyup(function() {
		$(this).change();
	});
}
$(function() {
	filterList($("#form"), $("#demo-list"));
});
})(jQuery);	 
</script>


</body>
</html>
