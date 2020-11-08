<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<link rel="stylesheet" href="/resources/style/zootopia.css" type="text/css" />
</head>

<c:if test="${!empty message}">
   
  <b><font color="red"><c:url value="${message}" /></font></b>
</c:if>


<div align="center">
  <form action='<c:url value="/shop/signon.do"/>' method="POST">
    <c:if test="${!empty signonForwardAction}">
      <input type="hidden" name="forwardAction"
        value='<c:url value="${signonForwardAction}"/>' />
    </c:if>
    
    
    <table style="margin-bottom:30px; width:30%;">
    <tr>
    <td>
    <br />&nbsp;
    <br />&nbsp;
    </td>
    </tr>
      <tr>
        <td colspan="3">MEMBER LOGIN <br />&nbsp;
        </td>
      </tr>
      <tr>
        <td style=padding-top:15px colspan="2"><input type="text" placeholder="ID" name="username" size="20" value="TEST1"/></td>
        <td rowspan="2"><!-- <input name="login" type="image" src="../resources/images/btn_login.png" /> -->
         <button class="btn-5">login</button></td>
      </tr>
      <tr>
        <td style=padding-top:15px colspan="2"><input type="password" placeholder="PASSWORD" name="password" size="20" value="TEST1"/></td>
      </tr>
    </table>
    
  </form>
  
<button id="btn_01" onclick="location='/shop/newAccount.do'">NEW MEMBER REGISTRATION</button>

  
</div>