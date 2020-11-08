<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<table bgcolor="#ffffff" style="position:fixed; top:0; left:20%; width:68%; height:8%;">
<tr style="vertical-align:top;">
<td style="width:100%; text-align:right; padding:10px;">
<section class="section">
    <ul class="menu">
    <c:if test="${empty userSession.account}" >
      <li class="menu__item">
        <a href="<c:url value="/shop/signonForm.do"/>" class="menu__link hover18" data-hover-label="Login"><span class="menu__label hover18__label">login</span></a>
      </li> 
      <li class="menu__item">
        <a href="<c:url value="/shop/newAccount.do"/>" class="menu__link hover18" data-hover-label="Join"><span class="menu__label hover18__label">join</span></a>
      </li> 
      <li class="menu__item">
        <a href="<c:url value="/shop/signonForm.do"/>" class="menu__link hover18" data-hover-label="Cart"><span class="menu__label hover18__label">cart</span></a>
      </li> 
      <li class="menu__item">
        <a href="<c:url value="/shop/signonForm.do"/>" class="menu__link hover18" data-hover-label="Order"><span class="menu__label hover18__label">order</span></a>
      </li> 
      <li class="menu__item">
        <a href="<c:url value="/shop/signonForm.do"/>" class="menu__link hover18" data-hover-label="Mypage"><span class="menu__label hover18__label">mypage</span></a>
      </li>
      </c:if>
      
      <c:if test="${!empty userSession.account}" >      
      <li class="menu__item">
        <a href="<c:url value="/shop/signoff.do"/>" class="menu__link hover18" data-hover-label="Logout"><span class="menu__label hover18__label">logout</span></a>
      </li> 
            
      <li class="menu__item">
        <a href="<c:url value="/shop/viewCart.do"/>" class="menu__link hover18" data-hover-label="Cart"><span class="menu__label hover18__label">cart</span></a>
      </li> 
      <li class="menu__item">
        <a href="<c:url value="/shop/listOrders.do"/>" class="menu__link hover18" data-hover-label="Order"><span class="menu__label hover18__label">order</span></a>
      </li> 
      <li class="menu__item">
        <a href="<c:url value="/shop/Mypage.do"/>" class="menu__link hover18" data-hover-label="Mypage"><span class="menu__label hover18__label">mypage</span></a>
      </li>
      </c:if> 
    </ul>
  </section>
</td>
</tr>
</table>   