
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<%@ page import = "java.net.URLDecoder" %> 
<script src="/resources/plugins/js/cookie.js"></script>

<script>
	jQuery("document").ready(()=>{
		getRecent();
	});
	
	function getRecent() {
		
		$.ajax({
			type: "GET",
			url : '/shop/item.do',
			success : function(result) {
				console.table(result);
				console.log(result[0].product.description);
				for(var i=0;i<3;i++){
		               jQuery("#recent"+(i+1)).html("<a href='/shop/viewItem.do?itemId=" + result[i].itemId + "'><img src="+ '"' + result[i].product.description + '" style="width:130px; height:130px;">' + "</image></a>");
		               }
				jQuery("#next_btn").click(function() {
					for(var i=3;i<6;i++){
						jQuery("#recent"+(i-2)).html("<a href='/shop/viewItem.do?itemId=" + result[i].itemId + "'><img src="+ '"' + result[i].product.description + '" style="width:130px; height:130px;">' + "</image></a>");
						}
					});
				jQuery("#prev_btn").click(function() {
					for(var i=0;i<3;i++) {
						jQuery("#recent"+(i+1)).html("<a href='/shop/viewItem.do?itemId=" + result[i].itemId + "'><img src="+ '"' + result[i].product.description + '" style="width:130px; height:130px;">' + "</image></a>");
					}
				});
			},
			error: function(e) {
				alert("error")
			}
		});
}

</script>

<div id="sidebox" style="display:table; text-align:center; position:absolute; right:0; top:0; float:right; width:10%; height:100%; margin-right:20px;">
	<div style="vertical-align:middle; display:table-cell; background-color:#FFFFFF;">
	<div style="border:2px solid #ffcc39; width:100%; height:70%; background-color:#ffcc39;border-radius:0.7em;">
	<img src="/resources/images/recently.png" style="margin-top:20px;"/>
	<table style="width:100%; height:80%; margin-top:20%;">
		<tr>
			<td style="text-align:center; vertical-align:middle;padding-bottom:10">
				<div id="recent1"></div>
			</td>
		</tr>
		<tr>
			<td style="text-align:center; vertical-align:middle;padding-bottom:10">
				<div id="recent2"></div>
			</td>
		</tr>
		<tr>
			<td style="text-align:center; vertical-align:middle;padding-bottom:10">
				<div id="recent3"></div>
			</td>
		</tr>
		<tr>
			<td style="text-align:center; vertical-align:bottom;">
			<img id="prev_btn" src="/resources/images/prev.png"/>
			<img id="next_btn" src="/resources/images/next.png"/>
			
			</td>
		</tr>
		
		</table>
	</div>
	
	</div>
</div>

<script>
var currentPosition = parseInt($("#sidebox").css("top")); 
$(window).scroll(function() { 
	var position = $(window).scrollTop(); 
	$("#sidebox").stop().animate({"top":position+currentPosition+"px"},800); 
});
</script>

