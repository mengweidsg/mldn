<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>www.mldnjava.cn，MLDN高端Java培训</title></head>
<body>
	<%
		int y = 100 ;	// 变量重复
	%>
	<h1>include_demo04.jsp -- <%=y%></h1>
	<%@include file="include.jsp"%>
</body>
</html>