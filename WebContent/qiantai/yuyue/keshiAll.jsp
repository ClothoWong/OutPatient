<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" import="cn.edu.bjtu.sad.facade.*"
import="cn.edu.bjtu.sad.model.*"%>

<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/Common.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/sitegeneric08.css" rel="stylesheet"
	type="text/css" />
<script language="JavaScript" type="text/javascript">
<%List<DepartmentDetail> list;
List<Doctor> doctor;%>
function getValue() {
	<%
	RegisterInfoShow show=new RegisterInfoShow();
	list=show.getInfo();
	doctor=list.get(0).getDoctorList();%>
}
    </script>
</head>

<body style="background-color: #FFF" onload="getValue()">


	<div class="mtitle">预约挂号查询</div>
	<br />

	<!--body-->
	<div align="center" class="Wrapper">
		<div id="MainCenter" align="center" class="MainCenter">
			<div id="navigation" class="naivgation">
				<!-- 登录-->

				<!-- <div class="SquarelyGreenContainer">
					<!--  <div class="top">
						<div class="bgbtop-center">
							
							<div class="WinRight"></div>
						</div>
					</div>-->
					<div class="Slot"> 
					</div>
				</div> 
				<div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">日历表</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
						<jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
					</div>
				</div>
			</div>
			<div id="content" class="Sub">
				<div class="NewContainer770">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">科室</div>
					</div>
					<div class="Slot">
						<table border="1" width="98%">
							<tr align='left'>
								<td height="30" width="20%">&nbsp;&nbsp;科室名称：</td>
								<td>&nbsp;&nbsp;科室简介：
								</td>
							</tr>
							<%for(int i=0;i<list.size();i++){ %>
							<tr align='left'>
								<td height="30" width="20%">&nbsp;&nbsp;<%=list.get(i).getDepartment().getDepartment_name() %></td>
								<td>&nbsp;&nbsp;<%=list.get(i).getDepartment().getDepartment_detail() %>：
								</td>
							</tr>
							<%} %>
						</table>
					</div>
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">专家</div>
					</div>
					<div>
						<table width="99%" border="0" cellpadding="2" cellspacing="1"
							bgcolor="#D1DDAA" align="center" style="margin-top: 8px">
							<tr align="center" bgcolor="#FAFAF1" height="22">
								<td width="10%">姓名</td>
								<td width="10%">性别</td>
								<td width="10%">评级</td>
								<td width="60%">评分</td>
								<td width="10%">操作</td>
							</tr>
<%for(int m=0;m<doctor.size();m++){ %>
							<tr align='center' bgcolor="#FFFFFF"
								onMouseMove="javascript:this.bgColor='red';"
								onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								<td bgcolor="#FFFFFF" align="center"><%=doctor.get(m).getDoctor_name() %></td>
								<td bgcolor="#FFFFFF" align="center"><%=doctor.get(m).getDoctor_sex() %></td>
								<td bgcolor="#FFFFFF" align="center"><%=doctor.get(m).getDoctor_level() %></td>
								<td bgcolor="#FFFFFF" align="center"><%=doctor.get(m).getDoctor_score() %></td>
								<td bgcolor="#FFFFFF" align="center">
								<a href="yuyueAdd_re.jsp"> 预约</a>
								</td>
							</tr>
							<%} %>

						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!--body-->


	<!--foot -->
</body>
</html>
