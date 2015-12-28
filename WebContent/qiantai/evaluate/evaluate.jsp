<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%@ page isELIgnored="false" %> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<link href="<%=path %>/css/style.css" rel="stylesheet" media="screen"
			type="text/css" />
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="<%=path%>/css/woncore.css" type="text/css"></link>
	</head>

	<BODY>
	<div class="mtitle">
			评价医生
		</div>	
		<br />
		
		<br />
		<input type="radio" name="1" value="1"/>极好<br/>
		<input type="radio" name="1" value="2"/>满意<br/>
		<input type="radio" name="1" value="3"/>一般<br/>
		<input type="radio" name="1" value="4"/>很差<br/>
	</BODY>
</html>
