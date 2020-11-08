<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
#title {
font-family: NanumGothic;
   font-size: 2rem;
  font-weight: 700;
  color: #777777;
  text-transform: uppercase;
  text-align:center;
}
</style>



<div id="title">${category.categoryId}</div>


<c:forEach var="product" items="${productList.pageList}">
      <tr align = "center" bgcolor="white">
       <%--  <td><b><a href='<c:url value="/shop/viewProduct.do">
          <c:param name="productId" value="${product.productId}"/></c:url>'>
            <font color="black"><c:out value="${product.productId}" /></font>
          </a></b></td> --%>
        <td></td>
      </tr>
    </c:forEach>

              
<div style="text-align:center;padding-top:5%;">
<c:forEach var="item" items="${itemList}">
  <table style="display:inline; margin-left:auto; margin-right:auto;">
      <tr>
         <td rowspan="3" width="20px"></td>
        <td><a href='<c:url value="/shop/viewItem.do"> <c:param name="itemId" value="${item.itemId}"/></c:url>'><img src="${item.product.description}" width="280px" height="280px" />
           </a></td>
       </tr>
       
       <tr>
        <td style="vertical-align:middle;height:30px;" ><font size="3px">${item.name}</font></td>
       </tr>
        <tr>
        <td style="vertical-align:top;height:40px;"><font color="#747474" ><fmt:formatNumber value="${item.listPrice}" pattern="$#,##0.00" /></font></td>
        <td rowspan="3" width="20px"></td>
        </tr> 
   </table> 
   </c:forEach>
   </div>
