<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<head>
<link rel="stylesheet" href="/resources/style/zootopia.css" type="text/css" />
</head>

<table style="margin-left:auto; margin-right:auto; width:80%; height:100%; text-align:center;">
	<tr>
		<td colspan="2" style="height:10%; vertical-align:middle;"><span style="font-size:1.5em;font-weight:bold;">입찰되었습니다!</span></td>
	</tr>
	<tr>
		<td colspan="2" style="height:15%; vertical-align:top;">경매내역은 Mypage에서 확인하세요.</td>
	</tr>
	<tr>
      <td id="bidding" style="height:10%;">상품 이름</td>
      <td id="bidding" style="text-align:right; !important">${auctionItem.item}</td>
   </tr>
   <tr style="border-bottom:2px solid #AAAAAA;">
      <td id="bidding" style="height:10%;">마감 시간</td>
      <td id="bidding" style="text-align:right; !important"><div id="deadLineForm"></div></td>
   </tr>
   <tr>
      <td id="bidding" style="height:10%;">현재가</td>
      <td id="bidding" style="text-align:right; !important">
      <span style="font-size:1.5em;font-weight:bold;">\ <fmt:formatNumber value="${auctionItem.currentPrice}" pattern="###,###" /></span></td>
   </tr>
   <tr>
   	<td colspan="2">
   	<button id="basic" style="margin-top:70px; padding:0.6em 1.5em; !important">창닫기 X</button>
	</table>

	
<script>
jQuery(document).ready(()=>{
   var dt = new Date("${auctionItem.deadLine.toGMTString()}");
   var deadLine = dt.getFullYear() + "년 " + dt.getMonth() + "월 " + dt.getDate() + "일 " + dt.getHours() + "시 " + dt.getMinutes() + "분";
   jQuery('#deadLineForm').html(deadLine);
})
jQuery('#basic').click(function(){
	window.opener.location.reload();
	window.close();
});

</script>