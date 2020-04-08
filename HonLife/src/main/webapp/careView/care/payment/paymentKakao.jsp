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

var IMP = window.IMP; // 생략가능
IMP.init('imp44470519');


IMP.request_pay({
    pg : 'kakaopay', 
    pay_method :'card', //card(신용카드), trans(실시간계좌이체), vbank(가상계좌), phone(휴대폰소액결제)
    merchant_uid :'${rev.cleanrevNo}', //상점에서 관리하시는 고유 주문번호를 전달
    name :'honCare / 청소서비스! ',
    amount :'${rev.revPay }',
    buyer_email :'${member.userEmail}',
    buyer_name :'${member.userName}',
    buyer_tel :'${member.userPh }', //누락되면 이니시스 결제창에서 오류
    buyer_addr :'${rev.cleanrevAddr}'
    }, function(rsp) {
    if ( rsp.success ) {
    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
    	jQuery.ajax({
    		url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
    		type: 'POST',
    		dataType: 'json',
    		data: {
	    		imp_uid : rsp.imp_uid
	    		//기타 필요한 데이터가 있으면 추가 전달
	    		
	    	
    		}
    	}).done(function(data) {
    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
    		if ( everythings_fine ) {
    			var msg = '예약이 완료되었습니다.';
    			msg += '예약 번호 : ' + rsp.imp_uid;
    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
    			msg += '\n결제 금액 : ' + rsp.paid_amount;
    			msg += '카드 승인번호 : ' + rsp.apply_num;
    			
    			alert(msg);
    		} else {
    			//[3] 아직 제대로 결제가 되지 않았습니다.
    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
    		}
    	});
    	
    location.href="../care/success?userNo="+'${userNo}'+"&revNo="+'${rev.cleanrevNo}' ;
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        
        alert(msg);
        location.href='revDel?revNo='+'${rev.cleanrevNo}'
        
    }
});

</script>

</body>
</html>