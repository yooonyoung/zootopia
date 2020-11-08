
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>



<table align="center" >
<tr>
<td ><font size="5em">${product.name}</font></td>
</tr>
</table> 

<table id="create" style="width:100%;text-align:right;">
<tr>
<td>
<button id="submitBtn" class="btn-5" style="margin-right:8%; padding:0.6em 1.5em; !important" onclick="location.href='/shop/newItem.do?productId=${product.productId}'">등록하기</button>
   
</td>
</tr>
</table>
 

  
<div style="text-align:center;padding-top:5%;">  
  <c:forEach var="item" items="${itemList.pageList}">
  <table class="n23" style="display:inline;">
      <tr>
         <td rowspan="3" width="20px"></td>
        <td><a href='<c:url value="/shop/viewItem.do"> <c:param name="itemId" value="${item.itemId}"/></c:url>'><img src="${product.description}" width="280px" height="280px" />
           </a></td>
       </tr>
       
       <tr>
        <td style="vertical-align:middle;height:30px;" ><font size="3px">${item.name}</font></td>
       </tr>
        <tr>
        <td style="vertical-align:top;height:40px;"><font color="#747474" ><fmt:formatNumber value="${item.listPrice}" pattern="$#,##0.00" /></font></td>
        <td rowspan="3" width="20px"></td>
        </tr> 
        <%-- <td>
          <a href='<c:url value="/shop/addItemToCart.do">
            <c:param name="workingItemId" value="${item.itemId}"/></c:url>'>
              <img border="0" src="../images/button_add_to_cart.gif" alt="" />
          </a></td>
      </tr> --%>
    
   </table> 
   </c:forEach> 
   </div>
    <%-- <tr>
      <td>
        <c:if test="${!itemList.firstPage}">
          <a href="?page=previous"><font color="white"><B>&lt;&lt; Prev</B></font></a>
        </c:if> 
        <c:if test="${!itemList.lastPage}">
          <a href="?page=next"><font color="white"><B>Next &gt;&gt;</B></font></a>
        </c:if>
      </td>
    </tr> --%>
  