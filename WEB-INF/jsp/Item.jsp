<script src="/resources/plugins/js/cookie.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<script>
window.onload = addCookie('${item.itemId}');
function addMyCart() { 
    location.href='<c:url value="/shop/addItemToCart.do"><c:param name="workingItemId" value="${item.itemId}"/></c:url>';
    
}
</script>

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
      <td id="left" colspan="2"><span style="font-size:1.5em; !important">${item.name}</span></td>
      <td id="right" style="width:30%; padding:0; !important">
      <c:if test="${supp eq 'Y' }">
    	<a href='<c:url value="/shop/editItem.do"> <c:param name="itemId" value="${item.itemId}"/></c:url>'>수정</a>
      	<a href='<c:url value="/shop/deleteItem.do"> <c:param name="itemId" value="${item.itemId}"/></c:url>'>삭제</a>
      </c:if>
      </td>
   </tr>
   <tr> 
      <td id="left">수량</td>
      <td id="right" colspan="2"><c:if test="${item.quantity <= 0}">
        <font color="red" size="3"><b>품절</b></font>
      </c:if> 
      <c:if test="${item.quantity > 0}">
        <font size="2"><fmt:formatNumber value="${item.quantity}" /></font>
      </c:if>
      </td>
   </tr>
   
   <tr>
      <td id="left">가격</td>
      <td id="right"colspan="2"><span style="font-size:2em;font-weight:bold;">\ <fmt:formatNumber value="${item.listPrice}" pattern="###,###" /></span></td>
   </tr>
   <tr>
      <td id="left">배송 방법</td>
      <td id="right" colspan="2">직거래</td>
   </tr>
   <tr>
      <td id="right" style="padding:0; !important" colspan="4" >
         
        <button id="submitBtn" class="btn-5" style="margin-right:8%; padding:0.6em 1.5em; !important" onclick="location.href='/shop/addItemToCart.do?workingItemId=${item.itemId}'">내 카트에 담기</button>
         </td>
   </tr>
   <tr>
      <td colspan="4" style="height:80px; vertical-align: middle; text-align:center; border-radius:2em; background-color:#F6F6F6; padding:30px">
      <pre>${item.attribute2}</pre>
      </td>
   </tr>
   
</table>
</br>
<%-- <table border="3" id="main-menu">
  <tr>
    <td>
      <a href='<c:url value="/shop/viewProduct.do">
        <c:param name="productId" value="${product.productId}"/></c:url>'>
        <b><font color="black" size="2">
          &lt;&lt; <c:out value="${product.name}" /></font></b></a>
    </td>
  </tr>
</table>
<p>
<div align="center">
  <table border="3" id="item">
    <tr>
      <td bgcolor="#FFFFFF">
      <img src="${product.description}" escapeXml="false" /></td>
    </tr>
    <tr>
      <td width="100%" bgcolor="#CCCCCC"><b><c:out value="${item.itemId}" /></b></td>
    </tr>
    <tr>
      <td><b><font size="4"> 
        <c:out value="${item.attribute1}" />
        <c:out value="${item.attribute2}" /> 
        <c:out value="${item.attribute3}" />
        <c:out value="${item.attribute4}" /> 
        <c:out value="${item.attribute5}" />
        <c:out value="${product.name}" />
        </font></b></td>
    </tr>
    <tr>
      <td><font size="3"><i><c:out value="${product.name}" /></i></font></td>
    </tr>
    <tr>
      <td>
      <c:if test="${item.quantity <= 0}">
        <font color="red" size="2"><i>Back ordered.</i></font>
      </c:if> 
      <c:if test="${item.quantity > 0}">
        <font size="2"><fmt:formatNumber value="${item.quantity}" /> in stock.</font>
      </c:if>
      </td>
    </tr>
    <tr>
      <td><fmt:formatNumber value="${item.listPrice}" pattern="$#,##0.00" /></td>
    </tr>
    <tr>
      <td>
        <a href='<c:url value="/shop/addItemToCart.do">
          <c:param name="workingItemId" value="${item.itemId}"/></c:url>'>
          <img border="0" src="../images/button_add_to_cart.gif" alt="" /></a>
      </td>
    </tr>
  </table>
</div> --%>