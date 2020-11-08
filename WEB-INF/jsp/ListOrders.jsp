<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>


<div align="center">
  
  <table class="n23" style="width:600px;">
 <tr>
  <td>
  <br />&nbsp;
  </td>
  </tr>
    <tr>
      <td colspan="3">
      
        <h3><font>주문 내역</font></h3>
        <hr>
    <tr bgcolor="#CCCCCC" style="font-size:10pt;">
      <td >주문 번호</td> <td>주문 날짜</td> <td>가격</td>
    </tr>
    <c:forEach var="order" items="${orderList}">
    <c:if test="${order.orderId == 0}">
          <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
            <tr >
              <td colspan="8" style="font-size:10pt; font-color:#cccccc;">주문 내역이 없습니다.</td>
            </tr>
            <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
          </c:if>
      <tr >
        <td>
          <b><a href='<c:url value="/shop/viewOrder.do">
              <c:param name="orderId" value="${order.orderId}"/></c:url>'>
              <font color="#aaaaaa"><c:out value="${order.orderId}" /></font>
            </a></b></td>
        <td><fmt:formatDate value="${order.orderDate}"
            pattern="yyyy/MM/dd hh:mm:ss" /></td>
        <td><fmt:formatNumber value="${order.totalPrice}"
            pattern="$#,##0.00" /></td>
      </tr>
    </c:forEach>
  </table>
  <table id="main-menu" align="center">
        <tr>
          <td>
            <button id="btn_01" onclick="location='/shop/index.do'">MAIN</button>
          </td>
        </tr>
      </table>
</div>

