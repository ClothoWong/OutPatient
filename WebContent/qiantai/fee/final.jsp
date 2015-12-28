<%@ page language="java" contentType="text/html;  charset=utf-8"
	pageEncoding="UTF-8"%>
	<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<%=path %>/css/style.css" rel="stylesheet" media="screen"
	type="text/css" />
	
<title>Insert title here</title>
</head>

<body>
	<div class="mtitle">
			终缴费
		</div>	
		<br />
		
		<br />
	<table class="update" width="99%" border="0" cellpadding="2" cellspacing="1"
		bgcolor="#D1DDAA" align="center" style="margin-top: 8px">
		<tr align="center" bgcolor="#FAFAF1" height="22">
			<td width="15%">缴费时间</td>
			<td width="15%">缴费明细</td>
			<td width="60%">缴费金额(元)</td>
			<td width="10%">状态</td>
		</tr>
		<tr align="center" bgcolor="#FAFAF1" height="22">
			<td width="15%">2015/12/20 09:00</td>
			<td width="15%">药品</td>
			<td width="60%">100</td>
			<td width="10%">已交</td>
		</tr>
		<tr align="center" bgcolor="#FAFAF1" height="22">
			<td width="15%">2015/12/20 12:00</td>
			<td width="15%">检查费</td>
			<td width="60%">900</td>
			<td width="10%">已交</td>
		</tr>
		<tr align="center" bgcolor="#FAFAF1" height="22">
			<td width="15%">2015/12/20 21:00</td>
			<td width="15%">手术费</td>
			<td width="60%">10000</td>
			<td width="10%">未交</td>
		</tr>
	</table>
</body>
</html>