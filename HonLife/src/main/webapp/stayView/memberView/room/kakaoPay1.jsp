<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>




</head>

<body>
<input type="hidden" id="nick" value="abcd">


<script>
var url ="ws://192.168.4.172:8080/project/chat/";
var webSocket = null;
var msg = "";
url += $("#nick").val();
webSocket = new WebSocket(url); // 웹소켓 객체 생성
	
	//웹소켓 연결 됐을 떄
webSocket.onopen =function(e) {
	console.log(e);
}
	
	
webSocket.onclose = function(e){
	if(e.type=="close") {
			//monitor.innerHTML += "접속이 종료 되었습니다.<BR />";
		
		
	}
}
//메세지 수신
webSocket.onmessage = function(e){
		//monitor.innerHTML += e.data +"<br />";
	location.href="../room/reservationFinish";
} 
function disConn() {
	webSocket.close();
}
	//메세지 전송
function sendMsg() {
	msg += "revName:${rev.revName }"+"/";
	msg += "livingName:${rev.livingName }"+"/";
	msg += "ph:${rev.ph }"+"/";
	msg += "email:${rev.email }"+"/";
	msg += "price:${rev.price }"+"/";
	msg += "startDate:${rev.startDate }"+"/";
	msg += "endDate:${rev.endDate }"+"/";
	msg += "roomNo:${rev.roomNo }"+"/";
	msg += "userNo:${userNo}";
	
	webSocket.send(msg);
}
	

</script>



    <script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp44470519'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'Hon Life 통합 결제',
            amount :${rev.price},
          	 
                         /*   입주자 성함 : '${rev.livingName}', */
            buyer_postcode : '123-456',
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "/payment/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        
                        
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                //성공시 이동할 페이지
                //$("#frm").submit();
                sendMsg();
                //disConn();
                
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href='reservationFail?roomNo='+${rev.roomNo};
                alert(msg);
            }
            
        });
        
    });
    </script>
</body>



</html>