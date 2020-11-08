
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>


<c:choose>
<c:when test="${empty searchItem}">
<table style="width:100%; height:30%;">
	<tr>
		<td style="padding:25px; vertical-align:middle;"><font size="4em">검색 결과가 없습니다.</font></td>
	</tr>
</table>
</c:when>

<c:otherwise>

<div style="text-align:center;padding-top:5%;">
<c:forEach var="item" items="${searchItem}">
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
   </c:otherwise>
   </c:choose>
<%--    </c:forEach>  --%>
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
  