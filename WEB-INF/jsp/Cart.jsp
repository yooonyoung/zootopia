<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<table align="center">
<tr>
<td>
</br>&nbsp;
</td>
</tr>
  <tr style="vertical-align:top">
    
  
    <td style="text-align:center">
      <h3>SHOPPING CART</h3>
      <form action='<c:url value="/shop/updateCartQuantities.do"/>' method="post">
        <table id="cart" style="width:1000px;">
        <hr>
          <tr bgcolor="#cccccc" style="font-size:10pt">
            <td>상품번호</td>
            <td>상품분류</td>
            <td>설명</td>
            <td>재고</td>
            <td>수량</td>
            <td>가격</td>
            <td>총액</td>
            <td>&nbsp;</td>
          </tr>

          <c:if test="${cart.numberOfItems == 0}">
          <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
            <tr >
              <td colspan="8" style="font-size:10pt; font-color:#cccccc;">장바구니가 비어 있습니다.</td>
            </tr>
            <tr>
          <td>
          </br>&nbsp;
          </td>
          </tr>
          </c:if>

          <c:forEach var="cartItem" items="${cart.cartItemList.pageList}">
            <tr>
              <td><b>
                <a href='<c:url value="/shop/viewItem.do">
                  <c:param name="itemId" value="${cartItem.item.itemId}"/></c:url>'>
                  <c:out value="${cartItem.item.itemId}" />
                </a></b></td>
              <td><c:out value="${cartItem.item.productId}" /></td>
              <td><c:out value="${cartItem.item.attribute1}" /> 
                <c:out value="${cartItem.item.attribute2}" /> 
                <c:out value="${cartItem.item.product.name}" /></td>
              <td style="text-align:center"><c:out value="${cartItem.inStock}" /></td>
              <td style="text-align:center">
                <input type="text" size="3"
                  name='<c:out value="${cartItem.item.itemId}"/>'
                  value='<c:out value="${cartItem.quantity}"/>' /></td>
              <td style="text-align:right"><fmt:formatNumber
                  value="${cartItem.item.listPrice}" pattern="$#,##0.00" /></td>
              <td style="text-align:right"><fmt:formatNumber
                  value="${cartItem.totalPrice}" pattern="$#,##0.00" /></td>
              <td><a href='<c:url value="/shop/removeItemFromCart.do">
                    <c:param name="workingItemId" value="${cartItem.item.itemId}"/></c:url>'>
                    삭제</a>
              </td>
            </tr>
          </c:forEach>
          <tr>
            <td colspan="7" align="right">
            <c:if test="${cart.numberOfItems != 0}">
              <b>총액: <fmt:formatNumber value="${cart.subTotal}" pattern="$#,##0.00" /></b><br><br>
              <button class="btn-5" style=" padding:0.6em 1.5em; !important">수량변경</button>
              </c:if> 
            </td>
            <td>&nbsp;</td>
          </tr>
        </table>
        <div style="text-align:center">
          <c:if test="${!cart.cartItemList.firstPage}">
            <a href='<c:url value="viewCart.do?page=previousCart"/>'>
              <font color="green"><B>&lt;&lt; Prev</B></font></a>
          </c:if>
          <c:if test="${!cart.cartItemList.lastPage}">
            <a href='<c:url value="viewCart.do?page=nextCart"/>'>
              <font color="green"><B>Next &gt;&gt;</B></font></a>
          </c:if>
        </div>
      </form> 
      <c:if test="${cart.numberOfItems > 0}">
        <br />
        <div style="text-align:center">
          <a href='<c:url value="/shop/checkout.do"/>'>
            다음단계로</a>
        </div>
      </c:if>
    </td>
  </tr>
</table>
<table id="main-menu" align="center">
        <tr>
          <td>
            <button id="btn_01" onclick="location='/shop/index.do'">MAIN</button>
          </td>
        </tr>
      </table>