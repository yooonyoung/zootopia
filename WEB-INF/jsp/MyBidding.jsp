<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 


<table align="center" style="width:600px">
<tr>
      <td colspan="4">
      
        <h3><font>내 입찰 내역</font></h3>
        <hr>
        </td>
        </tr>
</table>


<table align="center" style="width:600px; font-size:10pt;">

<tr style="font-size:10pt; width:600px;">
       <td>
   낙찰된 나의 입찰
       </td>
       <td>
    </tr>
    <tr bgcolor="#CCCCCC" style="font-size:10pt; width:600px">
      <td cellpadding="10px">번호</td> <td>경매 제품</td> <td>낙찰가</td><td>&nbsp;</td>
    </tr>
     <c:choose>
     <c:when test="${empty myWinningList}">
          <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
            <tr>
              <td colspan="4" style="font-size:10pt; font-color:#cccccc;">낙찰된 입찰 내역이 없습니다.</td>
            </tr>
            <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
     </c:when>
     <c:otherwise>
     
     <c:forEach var="myWinning" items="${myWinningList}" varStatus="status">
     <tr>
         <td>
            ${status.count}
         </td>
        <td>
          <b><a href='<c:url value="/shop/auction/{myWinning.auctionId}/item.do">
              <c:param name="AuctionItem" value="${myWinning.item}"/></c:url>'>
              <font color="#aaaaaa"><c:out value="${myWinning.item}" /></font>
            </a></b></td>
        <td>
           <font color="#aaaaaa"><fmt:formatNumber value="${myWinning.biddingPrice}" pattern="###,###" /></font>
        </td>
        <td>
        &nbsp;
        </td>
      </tr>
       </c:forEach>
     </c:otherwise>
     </c:choose>

<tr>
<td>
&nbsp;</br>
</td>
</tr>
<tr>
<td>
   진행중인 나의 입찰
       </td>
       </tr>
    <tr bgcolor="#CCCCCC" style="font-size:10pt; width:600px">
      <td cellpadding="10px">번호</td> <td>입찰 제품</td> <td>입찰가</td>
    </tr>
     <c:choose>
     <c:when test="${empty myBiddingList}">
          <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
            <tr>
              <td colspan="4" style="font-size:10pt; font-color:#cccccc;">입찰 내역이 없습니다.</td>
            </tr>
            <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
     </c:when>
     <c:otherwise>
     
     <c:forEach var="myBidding" items="${myBiddingList}" varStatus="status">
     <c:if test="${myBidding.status eq 1}">
     <tr>
         <td>
            ${status.count}
         </td>
        <td>
          <b><a href='<c:url value="/shop/auction/${myBidding.biddingId}/item.do"></c:url>'>
              <font color="#aaaaaa"><c:out value="${myBidding.item}" /></font>
            </a></b></td>
        <td>
        
           <font color="#aaaaaa"><fmt:formatNumber value="${myBidding.biddingPrice}" pattern="###,###" /></font>
        </td>
        <td>
        &nbsp;
        </td>
      </tr>
      </c:if>
       </c:forEach>
     </c:otherwise>
     </c:choose>
     
</table>