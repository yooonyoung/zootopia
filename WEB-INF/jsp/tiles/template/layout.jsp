<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<title><tiles:getAsString name="title" /></title>
	<!--<title>JPetStore Demo</title>-->
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"	/>
	<meta http-equiv="Cache-Control" content="max-age=0">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Pragma" content="no-cache">
	<link rel="stylesheet" href="/resources/style/zootopia.css" type="text/css" />
</head>
<body>
 	<tiles:insertAttribute name="sideLeft" />
 	<tiles:insertAttribute name="top" />
 	<div class="body">
 	<tiles:insertAttribute name="body" />
	</div>
 	<tiles:insertAttribute name="sideRight" />
 <tiles:insertAttribute name="meta" />
 
</body>
</html>
