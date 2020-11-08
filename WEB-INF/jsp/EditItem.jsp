<script src="/resources/plugins/js/cookie.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<form:form id="editItem" commandName="editItem" method="post">
  <form:errors cssClass="error" /> <br><br>
<table style="margin-left:auto; margin-right:auto; width:80%;">
   <tr>
      <td id="left" colspan="4" style="height:100px; vertical-align:top; !important">
         <img src="/resources/images/auction.png"> <img src="/resources/images/sellitem.png"/>
      </td>
   </tr>
   <tr>
       <td id="left" style="text-align:center; width:50%;"rowspan="5">
       <c:choose>
          <c:when test="${empty product.description}">
             <img src="/resources/images/no_image.png" style="width:270px; height:270px; margin-right:100px;"/>
          </c:when>
          <c:otherwise>
            <img src="${product.description}" style="width:270px; height:270px; margin-right:100px;"/>
         </c:otherwise>
        </c:choose>
      </td>
   </tr> 
   <tr style="border-bottom:2px solid #AAAAAA;">
      <td id="left" colspan="2"><span style="font-size:1.5em; !important">

      <form:input type="text" path="item.name" name="name" value="${item.name}"/>
      
      </span></td>
      <td id="right" style="width:30%; padding:0; !important">
      <c:choose>
      	<c:when test="${update eq 'Y' }">
      		<input type="submit" value=" 수정완료  " class="submit_btn" id="submit"/>
      	</c:when>
      	<c:otherwise>
      		<input type="submit" value=" 등록완료  " class="submit_btn" id="submit"/>
      	</c:otherwise>
      </c:choose>
      
      </td>
   </tr>
   <tr>
      <td id="left">수량</td>
      <td id="right" colspan="2">
      <c:choose>
      	<c:when test="${update eq 'N'}">
      		<font size="2">
	      	  <form:input type="text" path="item.quantity" name="quantity" value="${item.quantity}"/>
	        </font>
      	</c:when>
      	<c:otherwise>
      	<c:if test="${item.quantity <= 0}">
	        <font color="red" size="3"><b>품절</b></font>
	        <form:input type="text" path="item.quantity" name="quantity" value="품절"/>
	      </c:if> 
	      <c:if test="${item.quantity > 0}">
	        <font size="2">
	        <form:input type="text" path="item.quantity" name="quantity" value="${item.quantity}"/>
	        </font>
	      </c:if>
      	</c:otherwise>
      </c:choose>
      
      </td>
   </tr>
   
   <tr>
      <td id="left">가격</td>
      <td id="right"colspan="2"><span style="font-size:2em;font-weight:bold;">
      <form:input type="text" path="item.listPrice" name="listPrice" value="${item.listPrice}"/> </span>
      </td>
   </tr>
   <tr>
      <td id="left">배송 방법</td>
      <td id="right" colspan="2">직거래</td>
   </tr>
  <!--  <tr>
      <td id="right" style="padding:0; !important" colspan="4" >
         /<button id="submitBtn" class="btn-5" style="margin-right:0; padding:0.6em 1.5em; !important" onclick="showPopup();">내 카트에 담기</button>
         </td>
   </tr> -->
   <tr>
      <td colspan="4" style="height:80px; vertical-align: middle; text-align:center; border-radius:2em; background-color:#F6F6F6; padding:30px">
      <form:textarea path="item.attribute2" name="attribute2" cols="100" rows="30"></form:textarea>
      </td>
   </tr>
   
</table>
</form:form>
</br>
</div> --%>

<script>


</script>