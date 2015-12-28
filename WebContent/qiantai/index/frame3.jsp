<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<frameset rows="100,*,70" frameborder="no" border="0">
		<frame src="header2.jsp"  scrolling="no"/>
		<frameset cols="200,*">
			<frame src="left3.jsp"  scrolling="no"/>
			<frame src="welcome.jsp"  name="main"  scrolling="auto"/>
		</frameset>
	</frameset>
	<!-- Set prompt message for browser that does not support Frame structure-->
	<noframes>
		<body>
			Your browser does not support frame structure!
		</body>
	</noframes>

</html>