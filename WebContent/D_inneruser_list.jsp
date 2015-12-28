<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cn.edu.bjtu.sad.dao.imp.*" import="cn.edu.bjtu.sad.model.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>患者信息列表</title>
		<link href="css/style.css" rel="stylesheet" media="screen"
			type="text/css" />
		<!-- Use JavaScript script to open a new window display information when preview-->
		<script language="JavaScript" type="text/javascript">
			function preview(url) {
				window.open(url,'Preview','toolbar=no,scrollbars=yes,width=720,height=560,top=50,left=100');
			}
			
			<%List<Patient> list;%>
			function getValue(){
			<% PatientDaoImp pa=new PatientDaoImp();
	        list=pa.getPatientList();%>
			}
			
		</script>
	</head>

	<body onload = "getValue()">
		
		<br />
		<div class="list">
		  <table>
			<tr>
				<th>
					就诊编号
				</th>
				<th>
					姓名
				</th>
				<th >
					性别
				</th>
				<th >
					年龄
				</th>
			</tr>
			<%for(int i=0;i<list.size();i++){ %>
			<tr>
				<td>
					<%=list.get(i).getHcard_id() %>
				</td>
		
				<td>
					<%=list.get(i).getPatient_name() %>
				</td>
				<td><%=list.get(i).getPatient_sex() %>
					
				</td>
				<td>
					<%=list.get(i).getPatient_age() %>
				</td>
			</tr>
			<%} %>
			<tr>
				<td colspan="7"> </td>
			</tr>
		  </table>
		</div>

		<!--<div align="right" class="pagelist">					
			<a href="#"><img src="images/page/first.png"  alt="" /></a> &nbsp;
			<a href="#"><img src="images/page/pre.png"  alt="" /></a>&nbsp;
			<a href="#"><img src="images/page/next.png"  alt="" /></a>&nbsp;
			<a href="#"><img src="images/page/last.png"  alt="" /></a>&nbsp;
					
			<span class="pageinfo">
				Total&nbsp;<strong>2</strong>&nbsp;pages&nbsp;<strong>13</strong>&nbsp;records
			</span>
		</div>-->
	</body>
</html>
