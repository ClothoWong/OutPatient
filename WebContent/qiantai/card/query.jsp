<%@ page language="java" contentType="text/html; "
   pageEncoding="UTF-8"%>
       <%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<%=path %>/css/style.css" rel="stylesheet" media="screen"
			type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body style="background-color: #FFF">
<div class="mtitle">
			查询医疗卡
		</div>	
		<br />
		
		<br />
<table  class="update" width="98%" align="center" border="0" cellpadding="4"
		cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom: 8px">
		<tr align='center' bgcolor="#FFFFFF"
			onMouseMove="javascript:this.bgColor='red';"
			onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
			<td width="25%" bgcolor="#FFFFFF" align="left">日期</td>
			<td width="75%" bgcolor="#FFFFFF" align="left">病历</td>
		</tr>
		<tr align='center' bgcolor="#FFFFFF"
			onMouseMove="javascript:this.bgColor='red';"
			onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
			<td width="25%" bgcolor="#FFFFFF" align="left">2015/12/01</td>
			<td width="75%" bgcolor="#FFFFFF" align="left">肛肠科有癌症</td>
		</tr>
		<tr align='center' bgcolor="#FFFFFF"
			onMouseMove="javascript:this.bgColor='red';"
			onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
			<td width="25%" bgcolor="#FFFFFF" align="left">2015/12/02</td>
			<td width="75%" bgcolor="#FFFFFF" align="left">心脏病</td>
		</tr>
	</table>
</body>
</html>