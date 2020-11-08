
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>


<table style="position:fixed; top:0; left:0; float:left; border-right:2px solid #AAAAAA; width:20%; height:100%;">
   <tr style="vertical-align:top;">
      <td style="width:100%; height:8%;">
         <a href="/shop/weeklyBest.do">
         <img src="/resources/images/zootopia.png"></a>
      </td>
   </tr>
   <tr>
      <td style="width:100%; height:5%;">
      <form action="/shop/searchItems.do" method="get">
    	<input type="text" name="keyword"  size="25"/>
    	<input id="image" type="image" src="/resources/images/search.png" name="submit" value="submit" width="15" height="15">
           </form>
        </td>
     </tr>
   <tr>
      <td style="vertical-align:middle;width:100%; height:45%;">
       <section class="section2">
    <ul class="menu2" id="left">
      <li class="menu__item2">
        <a class="menu__link2 hover5" data-hover-label="Dog" href='<c:url value="/shop/viewCategory.do"><c:param name="categoryId" value="DOGS"/></c:url>'>
        <span class="menu__label hover5__label">DOG</span></a>
        	<ul>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="K9-BD-01"/></c:url>'>bulldog</a></li>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="K9-PO-02"/></c:url>'>poodle</a></li>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="K9-DL-01"/></c:url>'>dalmation</a></li>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="K9-RT-01"/></c:url>'>goldenretriever</a></li>
        		</ul>
      </li> 
      <li class="menu__item2">
        <a class="menu__link2 hover5" data-hover-label="Fish" href='<c:url value="/shop/viewCategory.do"><c:param name="categoryId" value="FISH"/></c:url>'>
        <span class="menu__label hover5__label">FISH</span></a>
        <ul style="left:45px;top:70px;">
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="FI-SW-01"/></c:url>'>angelfish</a></li>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="FI-SW-02"/></c:url>'>tigershark</a></li>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="FI-FW-01"/></c:url>'>koi</a></li>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="FI-FW-02"/></c:url>'>goldfish</a></li>
        		</ul>
      </li> 
      <li class="menu__item2">
        <a class="menu__link2 hover5" data-hover-label="Cats" href='<c:url value="/shop/viewCategory.do"><c:param name="categoryId" value="CATS"/></c:url>'>
        <span class="menu__label hover5__label">CATS</span></a>
        <ul style="left:55px;top:128px;">
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="FL-DSH-01"/></c:url>'>manx</a></li>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="FL-DLH-02"/></c:url>'>persian</a></li>
        		</ul>
      </li> 
       <li class="menu__item2">
        <a class="menu__link2 hover5" data-hover-label="Reptiles" href='<c:url value="/shop/viewCategory.do"><c:param name="categoryId" value="REPTILES"/></c:url>'>
        <span class="menu__label hover5__label">REPTILES</span></a>
        <ul style="left:80px;top:183px;">
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="RP-SN-01"/></c:url>'>rattlesnake</a></li>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="RP-LI-02"/></c:url>'>iguana</a></li>
        		</ul>
      </li> 
       <li class="menu__item2">
        <a class="menu__link2 hover5" data-hover-label="Birds" href='<c:url value="/shop/viewCategory.do"><c:param name="categoryId" value="BIRDS"/></c:url>'>
        <span class="menu__label hover5__label">BIRDS</span></a>
        <ul style="left:55px;top:238px;">
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="AV-CB-01"/></c:url>'>amazonparrot</a></li>
        		<li><a id="sub" href='<c:url value="/shop/viewProduct.do"> <c:param name="productId" value="AV-SB-02"/></c:url>'>finch</a></li>
        		</ul>
      </li> 
    </ul>
  </section>
      </td>
   </tr>
   <tr>
      <td style="border-top:2px solid #AAAAAA; width:100%; height:43%; padding-top:20px;">
       <section class="section2" style="padding-top:1rem; !important">
          <ul class="menu2">
            <li class="menu__item2">
              <a href="/shop/auction/list.do" class="menu__link2 hover5" data-hover-label="Auction"><span class="menu__label hover5__label">AUCTION</span></a>
               </li> 
            <li class="menu__item2">
              <a href="/shop/chat.do" class="menu__link2 hover5" data-hover-label="Chatting"><span class="menu__label hover5__label">CHATTING</span></a>
               </li>
         </ul>
         </section>
      </td>
   </tr>
</table>
