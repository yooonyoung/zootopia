<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<div align="center">
<form:form commandName="accountForm" method="post">
  <form:errors cssClass="error" /> <br><br>
  
  <table id="account" style="width:600px;">
  <tr>
  <td>
  <br />&nbsp;
  </td>
  </tr>
    <tr>
      <td>
      
        <h3><font>회원 정보</font></h3>
        <hr>
        <table cellpadding="15px" style="color:#AAAAAA; width:600px;" class="n13" >
        
          <tr style="padding:20px;">
             <td style="font-size:7px;text-align:left">아이디</td>
            <td>
            <c:if test="${accountForm.newAccount}">
              <form:input size="50" path="account.username" />
              <B><form:errors path="account.username" cssClass="error" /></B>
            </c:if> 
            <c:if test="${!accountForm.newAccount}">
              <c:out value="${accountForm.account.username}" />
            </c:if>
            </td>
          </tr>
          <tr>
            <td style="font-size:7px;text-align:left">비밀번호</td>
            <td>
              <form:password size="50" path="account.password" /> 
              <B><form:errors path="account.password" cssClass="error" /></B></td>
          </tr>
          <tr>
            <td style="font-size:7px;text-align:left">비밀번호 확인</td>
            <td>
              <form:password size="50" path="repeatedPassword" /> 
              <B><form:errors path="repeatedPassword" cssClass="error" /></B></td>
          </tr>
          
            <tr>
    <td style="font-size:7px;text-align:left">이름</td>
    <td><form:input size="50" path="account.lastName" /> 
      <form:errors path="account.lastName" cssClass="error" /></td>
  </tr>
  <tr>
    <td style="font-size:7px;text-align:left">이메일</td>
    <td><form:input size="50" path="account.email" />
      <form:errors path="account.email" cssClass="error" /></td>
  </tr>
  <tr>
    <td style="font-size:7px;text-align:left">핸드폰</td>
    <td><form:input size="50" path="account.phone" /> 
      <form:errors path="account.phone" cssClass="error" /></td>
  </tr>
  <tr>
    <td style="font-size:7px;text-align:left">주소</td>
    <td><form:input size="50" path="account.address1" />
      <form:errors path="account.address1" cssClass="error" /></td>
  </tr>
  <tr>
    <td style="font-size:7px;text-align:left">상세주소</td>
    <td><form:input size="50" path="account.address2" />
      <form:errors path="account.address2" cssClass="error" /></td>
  </tr>
  
  <tr>
    <td style="font-size:7px;text-align:left">우편번호</td>
    <td><form:input size="50" path="account.zip" /> 
      <form:errors path="account.zip" cssClass="error" /></td>
      <tr >
    <td style="font-size:7px;text-align:left">관심있는 반려동물</td>
    <td><form:select style="width:380px" path="account.favouriteCategoryId" items="${categories}" /> 
      <form:errors path="account.favouriteCategoryId" cssClass="error" /></td>
  </tr>
          
        </table> 
        
     

      </td>
    </tr>
    <tr>
    <td>
    <br />&nbsp;
    <hr>
    <c:if test="${accountForm.newAccount}">
       <button class="btn-5" style=" padding:0.6em 1.5em; !important">가입하기</button>
    </c:if> 
    <c:if test="${!accountForm.newAccount}">
        <button class="btn-5" style=" padding:0.6em 1.5em; !important">수정하기</button>
    </c:if>
    
      </td>
      </tr>
      
  </table>
  <br />
</form:form>
<p></p>
  
</div>