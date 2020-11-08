<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<style>
.fileDrop {
   width: 80%;
   height: 200px;
   border: 1px dotted grey;
}
small {
   mrgin-left: 3px;
   fint-weight: bold;
   color: gray;
}
</style>

<spring:hasBindErrors name="auctionForm" />
<form:errors path="auctionForm" />
<div style="margin-left:20%;">
<img src="/resources/images/pen.png"/> <font size="3px">상품 등록하기</font></br>
</div>
<br>
<div style="margin-left:20%; border:1px solid #FFCC39;border-radius:2em;margin-right:20%;">
<table style="margin-left:10%;width:80%; height:70%;margin-right:10%;">
<form:form commandName="auctionForm" method="post" >
  <form:errors cssClass="error" />

<tr><td style="font-size:0.8em;height:50px;padding-top:26px">사진 첨부</font></td><td ></td>
</tr>
<td colspan="2" style="font-size:0.8em;">
<div class='fileDrop' style="display:inline-block;width:90%" >
<div class='fileShow' style="display:inline-block;width:90%;padding-top:80px;">
<img src="/resources/images/camera.png"/>
</div>
</div>
</td>
</tr>
<tr>
<td style="font-size:0.8em;height:50px;vertical-align:middle;">상품 이름 </td>
<td style="vertical-align:middle;width:100%;"><span style="float:right;margin-right:5%;"><form:input path="auction.item" name="item" style="background-color:transparent;text-align:center"/></span></td>
</tr>
<tr><td colspan="2" style="font-size:0.8em;color:#FF5050;text-align:right; padding-right:5%;"><form:errors path="auction.item"/></td></tr>
<tr>
<td style="font-size:0.8em;height:50px;vertical-align:middle;">상품 가격 </td>
<td style="vertical-align:middle;"><span style="float:right;margin-right:5%;">\<form:input path="auction.price" name="price" style="background-color:transparent;text-align:center"/></span></td>
</tr>
<tr><td colspan="2" style="font-size:0.8em;color:#FF5050;text-align:right; padding-right:5%;"><form:errors path="auction.price"/></td></tr>
<tr>
<td style="font-size:0.8em;height:50px;vertical-align:middle;">시작 시간 </td>
<td style="vertical-align:middle;"><span style="float:right;margin-right:5%;"><input type="datetime-local" id="startTimeFormat" style=" background-color:transparent;text-align:center"/></span></td>
</tr>
<tr>
<td style="font-size:0.8em;height:50px;vertical-align:middle;">마감 시간 </td>
<td style="vertical-align:middle;"><span style="float:right;margin-right:5%;"><input type="datetime-local" id="deadLineFormat" style="background-color:transparent;text-align:center"/></span></td>
</tr>
<tr>
<td style="font-size:0.8em;height:50px;vertical-align:middle;">상세 설명</td><td></td>
</tr>
<tr>
<td colspan="2" ><textarea id="descriptionFormat" rows="10" style="width:445px;height:80%"></textarea></td>
</tr>
<tr><td colspan="2" style="font-size:0.8em;color:#FF5050;text-align:right; padding-right:5%;"><form:errors path="auction.description"/></td></tr>
<tr>
<td colspan="2" style="padding-bottom:26px"><input type="submit" value="  작성하기  " class="submit_btn" id="submit"/>

</td>

</tr>

<form:hidden path="startTime" id="startTime"/>
<form:hidden path="deadLine" id="deadLine"/>
<form:hidden path="auction.description" id="description"/>
<form:hidden path="auction.image" id="image"/>
<form:hidden path="auction.thumbnail" id="thumbnail"/>
</form:form> 

</table>
</div>
<script>
jQuery("#submit").click(function($){

   jQuery('#startTime').val(jQuery('#startTimeFormat').val());
   jQuery('#deadLine').val(jQuery('#deadLineFormat').val());
   jQuery('#description').val(jQuery('#descriptionFormat').val());
   
   var startTime = jQuery('#startTime').val();
   var deadLine = jQuery('#deadLine').val();
   
   if(deadLine < startTime){
      alert("시작 시간을 마감시간 이후로 설정할 수 없습니다!");
      return false;
   }
   
   if(new Date() > startTime){
	      alert("시작 시간을 현재시각 이전으로 설정할 수 없습니다!");
	      return false;
	   }

});

$(".fileDrop").on("dragenter dragover", function(event){
   event.preventDefault();
});
$(".fileDrop").on("drop", function(event){
   event.preventDefault();
   
   var files = event.originalEvent.dataTransfer.files;
   
   var file = files[0];
   
   /* console.log(file); */
   var formData = new FormData();
   
   formData.append("file", file);
   
   $.ajax({
      url: '/util/uploadAjax.do',
      data: formData,
      dataType: 'text',
      processData: false,
      contentType: false,
      type: 'POST',
      success: function(data){
         /* alert(data); */
         var str ="";
         var image = "";
         var thumbnail = data;
         if(checkImageType(data)){
            image = getImageLink(data);
            str = "<div>"
               +"<a href='/util/displayFile.do?fileName="+image+"'>"
               +"<img src='/util/displayFile.do?fileName="+thumbnail+"'/><br/>"
               +getImageLink(data)+"</a><small data-src="+thumbnail+">X</small></div>";
            $('#image').val(image);
            $('#thumbnail').val(data);
         } else{
            str = "<div><a href='/util/displayFile.do?fileName="+data+"'>"
               + getOriginalName(data)
               +"</a><small data-src="+data+">X</small></div>";
         }
         $(".fileShow").html(str);
      }
   });
});

$(".fileShow").on("click", "small", function(event){
   var that = $(this);
   
   $.ajax({
      url:"/util/deleteFile.do",
      type:"post",
      data: {fileName: that.attr("data-src")},
      dataType: "text",
      success: function(result){
         if(result == 'deleted'){
            that.parent("div").remove();
            that.parent().html("<font color='grey'>이미지를 올려주세요!</font>");
            $('#image').remove();
            $('#thumbnail').remove();
         }
      }
   });
});

function checkImageType(fileName){
   var pattern = /jpg$|gif$|png$|jpeg$/i;
   return fileName.match(pattern);
}

function getOriginalName(fileName){
   if(checkImageType(fileName)){
      return;
   }
   
   var idx = fileName.indexOf("_") + 1;
   
   return fileName.substr(idx);
}

function getImageLink(fileName){
   if(!checkImageType(fileName)){
      return;
   }
   var front = fileName.substr(0, 12);
   var end = fileName.substr(14);
   
   return front + end;
}
</script>