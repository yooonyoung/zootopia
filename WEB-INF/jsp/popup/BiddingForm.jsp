<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<head>
<link rel="stylesheet" href="/resources/style/zootopia.css" type="text/css" />
</head>


<form:form commandName="newBidding" method="post">
  <form:errors cssClass="error" />
<table id="bidding" style="margin-right:auto; margin-left:auto; width:80%; height:80%;">
   <tr>
      <td id="bidding" colspan="2" style="height:20%; text-align:left; text-align:top; !important">
      <span style="font-size:1.5em;font-weight:bold;">입찰하기</span></td>
   </tr>
   <tr>
      <td id="bidding">상품 이름</td>
      <td id="bidding" style="text-align:right; !important">${auctionItem.item}</td>
   </tr>
   <tr style="border-bottom:2px solid #AAAAAA;">
      <td id="bidding">마감 시간</td>
      <td id="bidding" style="text-align:right; !important"><div id="deadLineForm"></div></td>
   </tr>
   <tr>
      <td id="bidding">현재가</td>
      <td id="bidding" style="text-align:right; !important">
      <span style="font-size:1.5em;font-weight:bold;">\ <fmt:formatNumber value="${auctionItem.currentPrice}" pattern="###,###" /></span></td>
   </tr>
   <tr>
      <td id="bidding" style="height:5%;">희망 입찰가</td>
      <td id="bidding" style="height:5%; text-align:right; !important">
      \<form:input path="bidding.biddingPrice" id="biddingPrice" name="price" size="13"/></td>
   </tr>
   <tr>
      <td colspan="2" style="padding-right:17px;text-align:right; !important">
      <font size="1"><fmt:formatNumber value="${auctionItem.currentPrice+1000}" pattern="###,###" />원부터 입찰 가능합니다.</font></td>
   </tr>
   <tr>
      <td id="bidding" colspan="2" style="height:30%; text-align:center; !important">
      <button id="basic" onclick="submit" style="padding:0.6em 1.5em; !important">입찰하기</button>
      </td>
   </tr>
   </table>
</form:form> 
   
<script>
jQuery(document).ready(()=>{
   var dt = new Date("${auctionItem.deadLine.toGMTString()}");
   var deadLine = dt.getFullYear() + "년 " + dt.getMonth() + "월 " + dt.getDate() + "일 " + dt.getHours() + "시 " + dt.getMinutes() + "분";
   jQuery('#deadLineForm').html(deadLine);
})

jQuery('#basic').click(function(){
	var price = jQuery('#biddingPrice').val();
	
	if(price < ${auctionItem.currentPrice + 1000}){
		alert("최저 입찰 가능가보다 낮은 가격으로 입찰하실 수 없습니다.");
		return false;
		}
	else{
	jQuery("biddingForm").submit();
	}
});



</script>
   