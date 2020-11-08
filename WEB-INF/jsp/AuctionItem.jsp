<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<head>
<script language="javascript">
function showPopup() { 
	   window.open("/shop/bidding/${auctionItem.auctionId}/newBidding.do", "입찰하기", "width=500, height=600, left=200, top=20");
	   window.reload();
	   }
</script></head>

<table style="margin-left:auto; margin-right:auto; width:80%;">
   <tr>
      <td id="left" colspan="4" style="height:100px; vertical-align:top; !important">
      	<img src="/resources/images/auction.png"> <a href="/shop/auction/newItem.do"><img src="/resources/images/sellitem.png"/></a>
      </td>
   </tr>
   <tr>
       <td id="left" style="text-align:center; width:50%;"rowspan="5">
 		<c:choose>
      	 <c:when test="${empty auctionItem.thumbnail}">
      	 	<img src="/resources/images/no_image.png" style="width:270px; height:270px; margin-right:100px;"/>
      	 </c:when>
      	 <c:otherwise>
         	<img src="/util/displayFile.do?fileName=${auctionItem.thumbnail}" style="width:270px; height:270px; margin-right:100px;"/>
         </c:otherwise>
        </c:choose>
      </td>
   </tr>
   <tr style="border-bottom:2px solid #AAAAAA;">
      <td id="left" colspan="2"><span style="font-size:1.5em; !important">${auctionItem.item}</span></td>
      <td id="right" style="width:30%; padding:0; !important">
<%-- 	      <c:if test="${update eq 'Y'} ">
	      	<img src="/resources/images/edit.png"/>
	      </c:if> --%>
	      &nbsp;
	      <c:if test="${delete eq 'Y'}">
	      	<div id="delete_btn">
	      	<img src="/resources/images/delete.png" />
	      	</div>
	      </c:if>
      </td>
   </tr>
   <tr>
     <td id="left">현재 가격</td>
      <td id="right"colspan="2"><span style="font-size:2em;font-weight:bold;">\
         <c:choose>
            <c:when test="${auctionItem.currentPrice eq 0}">
               <fmt:formatNumber value="${auctionItem.price}" pattern="###,###" />
            </c:when>
            <c:otherwise>
               <fmt:formatNumber value="${auctionItem.currentPrice}" pattern="###,###" />
            </c:otherwise>
         </c:choose>
      </span></td>
   </tr>
   <tr>
      <td id="left">남은 시간</td>
      <td id="right" colspan="2"><div id="deadLine"></div></td>
   </tr>
   <tr>
      <td id="left">배송 방법</td>
      <td id="right" colspan="2">택배</td>
   </tr>
   <tr>
      <td id="right" style="padding:0; !important" colspan="4" >
         <button id="submitBtn" class="btn-5" style="margin-right:0; padding:0.6em 1.5em; !important" onclick="showPopup();">입찰하기</button>
         </td>
   </tr>
   <tr>
      <td colspan="4" style="height:80px; vertical-align: middle; text-align:center; border-radius:2em; background-color:#F6F6F6; padding:30px">
  ${auctionItem.description}
      </td>
   </tr>
</table>
<script>
jQuery(document).ready(()=>{
	var deadLine = new Date("${auctionItem.deadLine.toGMTString()}");
	
	if(new Date() > deadLine){
		jQuery('#deadLine').html("<font color='grey'>경매 마감</font>");
		jQuery("#submitBtn")
		    .css("border-color","#555555")
		    .css("background","#555555")
		    .prop("disabled", true)
		    .text("경매 마감");
	}else{
		setInterval(() => {
			countDeadLine(deadLine);
		}, 1000);
	}
	
	jQuery('#delete_btn').click(()=>{
		var delete_c = confirm("정말 삭제 하시겠습니까");
		
		if(!delete_c){
			return false;
		}
		
		$.ajax({
			url:"/shop/auction/${auctionItem.auctionId}/delete.do",
			type:"post",
			data: {},
			dataType: "text",
			success: (data)=>{
				window.location.href = "/shop/auction/list.do";
			}
		});
			
	});
});

function countDeadLine (deadLine){
	var now = new Date();
	var gap = Math.round((deadLine.getTime() - now.getTime()) / 1000);
	 
	var D = Math.floor(gap / 86400);
	var H = Math.floor((gap - D * 86400) / 3600 % 3600);
	var M = Math.floor((gap - H * 3600) / 60 % 60);
	var S = Math.floor((gap - M * 60) % 60);
	var html;
	
	if(D == 0 && H == 0){
		html = '<font color="red"><B>' + D + '일 ' + H + '시간 ' + M + '분 ' + S + '초</B></font>';
	}else if(now < deadLine){
		html = D + '일 ' + H + '시간 ' + M + '분 ' + S + '초';
	}else{
		html = "<font color='grey'>경매 마감</font>";
		jQuery("#submitBtn")
		    .css("border-color","#555555")
		    .css("background","#555555")
		    .prop("disabled", true)
		    .text("경매 마감");
	}
	
	jQuery('#deadLine').html(html);
}
</script>
