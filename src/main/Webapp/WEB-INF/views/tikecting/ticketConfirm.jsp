<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>예매 확인 후 결제</title>
</head>
<body>
<%@ include file="../inc/header.jsp" %>
<style>
.card-smtitle{font-size:12px;color:#999;margin-bottom:4px}
.card-date{font-size:14px;color:#000}
.input_type01{border: 0;}
</style>



<div id="wrapper" class="confirm-cancel-wrap mgt50" >
	<h3 class="mgb20">예매 확인 및 취소</h3>
	 <form action="ticketDelete" method="get" >
        <ul class="mgt8">
		 <c:forEach items="${ticketConfirmList}" var="ticketRev">
			<li>
				<div class="card" style="width: 18rem;">
				  <div class="card-body">
				    <h5 class="card-smtitle">예매번호 : <input class="input_type01" type="text" name="snum" value="${ticketRev.snum }" readonly="readonly"></h5>
				    <h5 class="card-title"><input class="input_type01"  name="stitle" value="${ticketRev.stitle }" readonly="readonly"></h5>
				    <h5 class="card-date">공연 날짜 : <input class="input_type01"  name="sdday" value="${ticketRev.sdday }" readonly="readonly"></h5>
				    <p class="card-count">매수 : <input class="input_type01"  name="count" value="${ticketRev.count  }" readonly="readonly"></p>
				    <p class="card-price">구매한 총 가격 : <input class="input_type01"   name="sprice" value="${ticketRev.sprice *ticketRev.count  }" readonly="readonly"></p>
				    <input class="btn btn-outline-dark mgt8" type="button" value="예매취소" onclick="script:window.location='ticketDelete?snum=${ ticketRev.snum}'">
				    <input class="btn btn-warning mgt8" type="button" value="리뷰남기기" onclick="/">
				  </div>
				</div>
			</li>
			</c:forEach>
		</ul>
	</form>
</div>

<%@ include file="../inc/footer.jsp" %>
</body>
