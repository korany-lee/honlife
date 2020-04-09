<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="list" class="table-body">
			<div class="table-rows">	
				<c:forEach items="${rev }" var="list" varStatus="status">
					<%-- <input type="hidden" value="${list.recruitNo }" id="recNum" name="recruitNo[$]"/> --%>
				
	
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
																					
									<div class="td">								
										<span>
									<input style="background-color: transparent; cursor:pointer;color: #9fa7a7 " class="boardList"  id="name" type="text" value="${list.roomRevNo}" readonly="readonly">	
										</span>
									</div>
									
									<div class="td">
									<span>${list.roomRevName }</span>
									</div>
									
									<div class="td">
									<!-- <td> -->
									<span>${list.roomNo }</span>
									</div>					
									<div class="td">
										<span >
											<input style="background-color: transparent; cursor:pointer; color: #9fa7a7" id="reciver" class="boardList" type="text" value="<fmt:formatDate value="${list.roomRevStartDate }" pattern="yyyy-MM-dd"/>" readonly="readonly">
										</span>
										
									</div>
										<div class="td">
										${list.roomRevState }
									</div>
									
								</div>
								<!-- �� ���� -->
								 <div class="tr-body">												
										<div class="col-left">										
											
										</div>				
									<div class="col-right" style="margin-right: 200px;">
										
									<table style="undefined;table-layout: fixed; width: 275px">
								<colgroup>
						<col style="width: 155px">
						<col style="width: 120px">
									</colgroup>
  									<tr>
    										<td>�����ڸ�</td>  									
   											<td>   											
   									${list.roomRevName } 											
   											</td>
  									</tr>
  									
  									<tr>
    									<td>�����ڸ�</td>
   									    <td>${list.roomLiveName }</td>
  									</tr>
  									<tr>
    									<td>������ ����ó</td>
   									    <td>${list.roomRevPh }</td>
  									</tr>
  									
  									
  								
  									<tr>
    									<td>������ �̸���</td>
    									<td>${list.roomRevEmail }</td>
                                    </tr>
                                    
 									 <tr>
   										 	<td>���ֳ�¥</td>
   										 	<td><fmt:formatDate value="${list.roomRevStartDate }" pattern="yyyy-MM-dd"/></td>
  									</tr>
  									
  									 <tr>
   										 	<td>��ǳ�¥</td>
   										 	<td><fmt:formatDate value="${list.roomRevStartDate }" pattern="yyyy-MM-dd"/></td>
  									</tr>
  									<tr>
   										 	<td>���� �����Ȳ</td>
   										 	<td>${list.roomRevFrevchk }</td>
  									</tr>
  									
  									
  									
  									
  									
  								
  								
</table>
								
									
										<button class="minimal-btn close-tr elem-line-after">�� �ݱ�</button> 
									
											
											<button class="minimal-btn close-tr2 " style="margin-right: 10px">| </button> 
											
											<c:if test="${list.roomRevState eq '�����' }">
											 <a href="#" class="minimal-btn close-tr2 " onclick="javascript:checkin('${list.roomRevNo }','${list.roomNo }')" style="margin-right: 10px">�Խ�ó�� </a>
											</c:if>
											<c:if test="${list.roomRevState eq '�����' }">
											 <a href="#" class="minimal-btn close-tr2 " onclick="javascript:checkout('${list.roomRevNo }','${list.roomNo }')" style="margin-right: 10px">���ó�� </a>
											</c:if>
										
											
										
							
																				
											
										
									</div>
										
											
											
								</div> 
							</div>
						</div>
				</c:forEach>

							
			</div>

		</div>


</body>
</html>