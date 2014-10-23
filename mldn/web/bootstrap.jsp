<%--
  Created by IntelliJ IDEA.
  User: mengwei
  Date: 2014/10/18
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<head>
    <meta charset="utf-8">
    <title>jQuery UI Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="基于Bootstrap样式的 jQuery UI 控件">
    <meta name="author" content="Bootstrap中文网">
    <meta name="keywords" content="Bootstrap,jQuery,jQuery UI,CSS,CSS框架,CSS framework,javascript,bootcss,bootstrap开发,bootstrap代码,bootstrap入门">
    <meta name="robots" content="index,follow">
    <meta name="application-name" content="bootcss.com">

    <!-- Le styles -->
    <link href="http://cdn.bootcss.com/twitter-bootstrap/2.2.2/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="static/jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
    <link type="text/css" href="http://cdn.bootcss.com/font-awesome/3.0.2/css/font-awesome.min.css" rel="stylesheet" />
    <!--[if IE 7]>
    <link rel="stylesheet" href="http://cdn.bootcss.com/font-awesome/3.0.2/css/font-awesome-ie7.min.css">
    <![endif]-->
    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="static/jquery-ui-bootstrap/css/custom-theme/jquery.ui.1.10.0.ie.css"/>
    <![endif]-->
    <link href="static/jquery-ui-bootstrap/assets/css/docs.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/prettify/r224/prettify.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.6.2/html5shiv.js"></script>
    <![endif]-->


</head>

<body data-spy="scroll" data-target=".bs-docs-sidebar" data-twttr-rendered="true">

<!-- Navbar
================================================== -->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="./index.html">jQuery UI Bootstrap</a>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="active">
                        <a href="./index.html">book</a>
                    </li>
                    <li>
                        <a href="./extra.html">extra</a>
                    </li>
                </ul>
                <div id="twitter-share" class="pull-right">

                </div>
            </div>
        </div>
    </div>
</div>


<!-- Subhead
================================================== -->
<header class="jumbotron subhead" id="overview">
    <div class="container">
        <h1>jQuery UI Bootstrap</h1>
        <p class="lead">jQuery UI Based on Bootstrap (v0.5).</p>
    </div>
</header>

<%!
    public static final String DBDRIVER = "org.gjt.mm.mysql.Driver" ;
    public static final String DBURL = "jdbc:mysql://localhost:3306/mldn" ;
    public static final String DBUSER = "root" ;
    public static final String DBPASS = "mysqladmin" ;
%>
<%
    Connection conn = null ;
    PreparedStatement pstmt = null ;
    ResultSet rs = null ;
%>
<%
    try{
        Class.forName(DBDRIVER) ;
        conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
        String sql = "SELECT empno,ename,job,sal,hiredate FROM emp" ;
        pstmt = conn.prepareStatement(sql) ;
        rs = pstmt.executeQuery() ;
%>
<center>
    <table border="1" width="80%">
        <tr>
            <td>雇员编号</td>
            <td>雇员姓名</td>
            <td>雇员工作</td>
            <td>雇员工资</td>
            <td>雇佣日期</td>
        </tr>
        <%
            while(rs.next()){
                String empno = rs.getString(1) ;
                String ename = rs.getString(2) ;
                String job = rs.getString(3) ;
                String sal = rs.getString(4) ;
                String date = rs.getString(5) ;
        %>
        <tr>
            <td><%=empno%></td>
            <td><%=ename%></td>
            <td><%=job%></td>
            <td><%=sal%></td>
            <td><%=date%></td>
        </tr>
        <%
            }
        %>
    </table>
</center>
<%
    }catch(Exception e)	{
        System.out.println(e) ;
    }finally{
        rs.close() ;
        pstmt.close() ;
        conn.close() ;	// 如果直接关闭连接也可以
    }
%>

<!-- Footer
================================================== -->
<footer class="footer">
    <div class="container">
        <p>
            jQuery UI Bootstrap &copy; Addy Osmani 2012 - 2013.
        </p>
        <p>
            Twitter Bootstrap &copy; Twitter 2012 - 2013
        </p>
        <ul class="footer-links">
            <li><a href="http://addyosmani.com/blog/">Blog</a></li>
            <li class="muted">&middot;</li>
            <li><a href="https://github.com/addyosmani/jquery-ui-bootstrap/issues?state=open">Issues</a></li>
        </ul>
    </div>
</footer>
<!-- Placed at the end of the document so the pages load faster -->
<script src="http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
<script src="http://cdn.bootcss.com/twitter-bootstrap/2.2.2/bootstrap.min.js" type="text/javascript"></script>
<script src="static/jquery-ui-bootstrap/assets/js/jquery-ui-1.10.0.custom.min.js" type="text/javascript"></script>
<script src="http://cdn.bootcss.com/prettify/r224/prettify.js" type="text/javascript"></script>
<script src="static/jquery-ui-bootstrap/assets/js/docs.js" type="text/javascript"></script>
<script src="static/jquery-ui-bootstrap/assets/js/demo.js" type="text/javascript"></script>
<script src="/p/projects.js"></script>

<!-- Analytics
    ================================================== -->

</body>
</html>
