<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="action.Insert" %>
<jsp:useBean id="obj" class="po.Student"></jsp:useBean>
<jsp:setProperty property="*" name="obj" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'insert.jsp' starting page</title>
    
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
		if(Insert.insert(obj) == true){
			out.print("数据新增成功");
		}else{
			out.print("数据新增失败");
		}
	%>
  </body>
</html>
