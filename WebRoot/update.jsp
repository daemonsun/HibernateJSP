<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="action.Update" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'update.jsp' starting page</title>
    
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
		String stuname = request.getParameter("stuname");
		String stusex = request.getParameter("stusex");
		int num = Update.update(stuno, stuname, stusex);
		switch(num){
			case 1 :
				out.print("目标数据不存在");
				break;
			case 2 :
				out.print("目标数据更新成功");
				break;
		}
	%>
  </body>
</html>
