<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="action.Delete" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'delete.jsp' starting page</title>
    
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
		int no = Integer.parseInt(stuno);
		if(Delete.delete(no) == true){
			out.print("数据删除成功");
		}else{
			out.print("不存在的数据");
		}
	%>
  </body>
</html>
