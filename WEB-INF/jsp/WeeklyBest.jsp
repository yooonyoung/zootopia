<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.Date" %> 
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<style>
#title {
	font-size: 2.8rem;
  font-weight: 700;
  color: #777777;
  text-decoration: none;
  text-transform: uppercase;
}
</style>
<table align="center">
<tr><td>
<div id="title">Weekly Best</div>
</td></tr>
</table>
<br>
<div id="content" style="margin-left:70px;">
<c:forEach var="item" items="${itemList}">

<table class="n23" style="display:inline; margin-left: auto; margin-right:auto; text-align:center;">
   <tr>
      <td rowspan="3" width="20px"></td>
     <td>
   		  	<a href="/shop/viewItem.do?itemId=${item.itemId}">
     		<c:choose>
	      	 <c:when test="${empty item.product.description}">
	      	 	<img src="/resources/images/no_image.png" width="210px" height="210px"/>
	      	 </c:when>
	      	 <c:otherwise>
	         	<img src="${item.product.description}" style="width:210px; height:210px;"/>
	         </c:otherwise>
	        </c:choose>
	        </a>
       </td>
    </tr>
    <tr>
     <td align="center" >	<a href="/shop/viewItem.do?itemId=${item.itemId}">${item.name}</a></td>
    </tr>
     <tr>
     <td align="center" width="180px">	<a href="/shop/viewItem.do?itemId=${item.itemId}">$${item.listPrice}</a></td>
     <td rowspan="3" width="20px"></td>
     </tr> 
     <tr><td colsapn="2"><br><br></td></tr>

   </table> 
    <!-- </a> -->
   
 </c:forEach>
 </div>


