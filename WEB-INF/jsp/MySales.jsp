<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 


<table id="MySales" align="center" style="width:600px">
<tr>
      <td colspan="4">
      
        <h3><font>내 판매 내역</font></h3>
        <hr>
</table>

<table align="center" style="width:600px; font-size:10pt;">
<b>
<tr style="font-size:17pt; width:600px;">
<td>
<font color="#ffcc39">AUCTION</font>
</td>
</tr>
</b>
<tr>
<td>
&nbsp;</br>
</td>
</tr>

<tr style="font-size:10pt; width:600px;">
       <b><td>
       진행 중인 경매
       </td></b>
       <td>
    </tr>
    <tr bgcolor="#CCCCCC" style="font-size:10pt; width:600px">
      <td cellpadding="10px">번호</td> <td>경매 제품</td> <td>현재 최고가</td><td>&nbsp;</td>
    </tr>
     <c:choose>
     <c:when test="${empty myAuctionList}">
          <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
            <tr>
              <td colspan="4" style="font-size:10pt; font-color:#cccccc;">진행중인 경매 판매 내역이 없습니다.</td>
            </tr>
            <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
     </c:when>
     <c:otherwise>
     
     <c:forEach var="myAuction" items="${myAuctionList}" varStatus="status">
     <c:if test="${myAuction.status eq 1}">
     <tr>
         <td>
            ${status.count}
         </td>
        <td>
          <b><a href='<c:url value="/shop/auction/${myAuction.auctionId}/item.do">
              <c:param name="AuctionItem" value="${myAuction.item}"/></c:url>'>
              <font color="#aaaaaa"><c:out value="${myAuction.item}" /></font>
            </a></b></td>
        <td>
           <c:choose>
           <c:when test="${myAuction.currentPrice eq 0}">
           <font color="#aaaaaa"><c:out value="${myAuction.maxPrice}"/></font>
           </c:when>
           <c:otherwise>
           <font color="#aaaaaa"><c:out value="${myAuction.currentPrice}"/></font>
           </c:otherwise>
           </c:choose>
        </td>
        <td>
        &nbsp;
        </td>
      </tr>
      </c:if>
       </c:forEach>
     </c:otherwise>
     </c:choose>

<tr>
<td>
&nbsp;</br>
</td>
</tr>
    <tr>
    <td colspan="4"><hr></td>
    </tr>
<tr style="font-size:10pt; width:600px">
       <b><td>
       종료된 경매
       </td></b>
       <td>
    </tr>
    <tr bgcolor="#CCCCCC" style="font-size:10pt;">
      <td>번호</td> <td>경매 제품</td> <td>최고가</td> <td>&nbsp;</td>
    </tr>
     <c:choose>
     <c:when test="${empty myAuctionList}">
          <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
            <tr>
              <td colspan="4" style="font-size:10pt; font-color:#cccccc;">종료된 경매 판매 내역이 없습니다.</td>
            </tr>
            <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
     </c:when>
     <c:otherwise>
     
     <c:forEach var="myAuction" items="${myAuctionList}" varStatus="status">
     <c:if test="${myAuction.status ne 1}">
     <tr>
         <td>
            ${status.count}
         </td>
        <td>
          <b><a href='<c:url value="/shop/auction/${myAuction.auctionId}/item.do"></c:url>'>
              <font color="#aaaaaa"><c:out value="${myAuction.item}" /></font>
            </a></b></td>
        <td>
           <c:choose>
           <c:when test="${myAuction.currentPrice eq 0}">
           <font color="#aaaaaa"><c:out value="${myAuction.maxPrice}"/></font>
           </c:when>
           <c:otherwise>
           <font color="#aaaaaa"><c:out value="${myAuction.currentPrice}"/></font>
           </c:otherwise>
           </c:choose>
        </td>
        <td>
        <c:if test="${myAuction.status eq 0}">
          <b><font color="#ffcc39">낙&nbsp;찰</font></b>
        </c:if>
        <c:if test="${myAuction.status eq -1}">
          &nbsp;
        </c:if>
        </td>
      </tr>
      </c:if>
       </c:forEach>
     </c:otherwise>
     </c:choose>
<tr>
<td>
&nbsp;</br>
</td>
</tr>

</table>

