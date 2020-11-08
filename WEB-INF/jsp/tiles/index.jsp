<%-- <%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<head>
<script language="javascript">
function showPopup() { 
	window.open("/shop/index.do", "입찰하기", "width=400, height=300, left=100, top=50"); 
	}
</script></head>

<table style="margin-left:auto; margin-right:auto; width:80%;">
	<tr>
		<td id="left" colspan="4" style="height:100px; vertical-align:top; !important">
			<img src="../resources/images/sellitem.png"/>
		</td>
	</tr>
	<tr>
		<td id="left" style="width:50%;"rowspan="5">
			<img src="../resources/images/snoopy.png" style="width:270px; height:270px;"/>
		</td>
	</tr>
	<tr style="border-bottom:2px solid #AAAAAA;">
		<td id="left" colspan="2"><span style="font-size:1.5em; !important">말티즈</span></td>
		<td id="right" style="width:30%; padding:0; !important">
		<img src="../resources/images/edit.png"/><img src="../resources/images/delete.png"/></td>
	</tr>
	<tr>
		<td id="left">현재 가격</td>
		<td id="right"colspan="2"><span style="font-size:2em;font-weight:bold;">$29.80</span></td>
	</tr>
	<tr>
		<td id="left">남은 시간</td>
		<td id="right" colspan="2">23시간 54분 13초</td>
	</tr>
	<tr>
		<td id="left">배송 방법</td>
		<td id="right" colspan="2">택배</td>
	</tr>
	<tr>
		<td id="right" style="padding:0; !important" colspan="4" >
			<button class="btn-5" style="margin-right:0; padding:0.6em 1.5em; !important" onclick="showPopup();">입찰하기</button></td>
	</tr>
	<tr>
		<td colspan="4" style="padding-top:100px;">
		상품 상세정보 입니다.<br/>
		상세정보상세정보<br/>
		상세정보상세정보<br/><br/><br/>
		랄랄라라라라라
		</td>
	</tr>
</table> --%>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<table id="bidding" style="margin-right:auto; margin-left:auto; width:80%; height:80%;">
	<tr>
		<td id="bidding" colspan="2" style="height:20%; text-align:left; text-align:top; !important">
		<span style="font-size:2em;font-weight:bold;">입찰하기</span></td>
	</tr>
	<tr>
		<td id="bidding">상품 이름</td>
		<td id="bidding" style="text-align:right; !important">말티즈</td>
	</tr>
	<tr style="border-bottom:2px solid #AAAAAA;">
		<td id="bidding">마감 시간</td>
		<td id="bidding" style="text-align:right; !important">2018-08-30 오후 4:00:00</td>
	</tr>
	<tr>
		<td id="bidding">현재가</td>
		<td id="bidding" style="text-align:right; !important">
		<span style="font-size:1.5em;font-weight:bold;">$29.80</span></td>
	</tr>
	<tr>
		<td id="bidding" style="height:5%;">희망 입찰가</td>
		<td id="bidding" style="height:5%; text-align:right; !important">
		$<input type="text" name="bidding" size="15" /></td>
	</tr>
	<tr>
		<td colspan="2" style="padding-right:25px;text-align:right; !important">
		<font size="1">현재 $30.00부터 입찰 가능</font></td>
	</tr>
	<tr>
		<td id="bidding" colspan="2" style="height:30%; text-align:center; !important">
		<button id="basic" style="padding:0.6em 1.5em; !important">입찰하기</button>
		</td>
	</tr>
	</table>
	