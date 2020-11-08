<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.Date" %> 
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="/resources/images/auction.png"> 
<a href="/shop/auction/newItem.do"><img src="/resources/images/sellitem.png"/></a>
<br>
<div style="text-align:center;padding-top:5%;">  
<div id="content" >
<c:forEach var="item" items="${auctionList}">
<table class="n23" style="display:inline; margin-left: auto; margin-right:auto;">
   <tr>
      <td rowspan="3" width="20px"></td>
     <td><a href='<c:url value="/shop/auction/${item.auctionId}/item.do"></c:url>'>
     		<c:choose>
	      	 <c:when test="${empty item.thumbnail}">
	      	 	<img src="/resources/images/no_image.png" width="230px" height="230px"/>
	      	 </c:when>
	      	 <c:otherwise>
	         	<img src="/util/displayFile.do?fileName=${item.thumbnail}" style="width:230px; height:230px;"/>
	         </c:otherwise>
	        </c:choose>
        </a></td>
    </tr>
    <tr>
     <td align="center" >${item.item}</td>
    </tr>
     <tr>
     <td align="center" width="180px"><div id="deadLine"> 
   	  <c:choose>
	   	 <c:when test="${now.compareTo(item.deadLine) lt 0}">
	   	 	<font color="#ffcc39">${item.deadLine.toLocaleString()} 마감</font>
	   	 </c:when>
	   	 <c:otherwise>
	      	<font color='grey'>경매 종료</font>
	      </c:otherwise>
	     </c:choose>
     
     </div></td>
     <td rowspan="3" width="20px"></td>
     </tr> 
     <tr><td colsapn="2"><br><br></td></tr>
     <%-- <td>
       <a href='<c:url value="/shop/addItemToCart.do">
         <c:param name="workingItemId" value="${item.itemId}"/></c:url>'>
           <img border="0" src="../images/button_add_to_cart.gif" alt="" />
       </a></td>
   </tr> --%>
   </table> 
   
 </c:forEach>
 </div>
 </div>


