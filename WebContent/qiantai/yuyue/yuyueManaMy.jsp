<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=path %>/css/Common.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
    <script language="JavaScript" src="<%=path %>/js/popup.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
       function yuyueDelMy(id)
       {
            var url="<%=path %>/yuyueDelMy.action?id="+id;
            window.location.href=url;
       }
    </script>
  </head>
  
<body>
	
	
	
	<div class="mtitle">我的预约挂号查询</div>
	<br />
		 <div id="content" class="Sub">
				<div class="NewContainer770">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">我的预约信息</div>
					</div>
					<div class="Slot">
						<table  class="update" width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
							<tr align="center" bgcolor="#FAFAF1" height="22">
								<td width="15%">预约时间</td>
								<td width="15%">预约专家</td>
								<td width="60%">备注信息</td>
								<td width="10%">操作</td>
					        </tr>	
							
						</table>
                    </div>
				</div>
		 </div>
<!-- </div>
</div> -->
<!--body-->
	
<!--foot -->	
</body>
</html>
