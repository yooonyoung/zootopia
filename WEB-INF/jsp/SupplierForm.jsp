<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<div style="margin-left:18%"><h1><img src="/resources/images/pen.png"/> Register As A Seller</h1></div>
<div>
<form action='<c:url value="/shop/supplier/register.do"/>' method="POST">
   <c:if test="${!empty supplierForwardAction}">
      <input type="hidden" name="forwardAction"
        value='<c:url value="${supplierForwardAction}"/>' />
    </c:if>
<table style="margin-left:18%; min-width:50%; min-height:50%; border: 1px solid grey">
<tr><td colspan="2" align="center"></br></br><img src="/resources/images/seller_home.png" width="150px"/></br></br></br></td></tr>
<tr>
<td style="text-align:right;"><h3>판매자 ID :</h3></td><td>${userInfo.username}</td>
</tr>
<tr>
<td style="text-align:right;"><h3>CITY :</h3></td><td>${userInfo.city}</td>
</tr>
<tr>
<td style="text-align:right;"><h3>계좌 번호 :</h3></td><td><input type="text" id="account" name="account"/></td>
</tr>
<tr>
<td style="text-align:right;"><h3>전화 번호 :</h3></td><td>${userInfo.phone}</td>
</tr>
<tr><td colspan="2"><input type="submit" value="  submit!  " class="submit_btn" id="submit"/></br></br></td></tr>
</table>
</form>
</div>

<script>
jQuery('#submit').click(()=>{
	var account = jQuery('#account').val();
	if(!account || account ==''){
		alert("계좌번호를 입력해주세요!");
		return false;
	}
		
})

</script>