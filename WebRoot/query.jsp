<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="action.Query" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'query.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<%
		String stuno = request.getParameter("stuno");
		String[] result = Query.query(stuno);
		if(result.length == 3){
			out.print("<table border='1'>");
			out.print("<tr>");
			out.print("<td>编号</td>");
			out.print("<td>姓名</td>");
			out.print("<td>性别</td>");
			out.print("</tr>");
			out.print("<tr>");
			out.print("<td>" + result[0] + "</td>");
			out.print("<td>" + result[1] + "</td>");
			out.print("<td>" + result[2] + "</td>");
			out.print("</tr>");
			out.print("</table>");
		}else{
			out.print("查询结果为空");
		}
	%>
  </body>
</html>
