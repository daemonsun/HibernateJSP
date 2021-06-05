<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Prj14_ext</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		form {
			margin-block-end: 0;
		}
	</style>
  </head>
  
  <body>
  	<div>
  		<fieldset style="width:30%">
  			<legend>增</legend>
			<form action="insert.jsp" method="GET">
				<table>
					<tr>
						<td>姓名:</td>
						<td><input type="text" name="stuname" /></td>
					</tr>
					<tr>
						<td>性别:</td>
						<td><input type="text" name="stusex" /></td>
					</tr>
				</table>
				<input type="submit" value="新增" >
			</form>
  		</fieldset>
  	</div>
  	<div>
  		<fieldset style="width:30%">
  			<legend>删</legend>
			<form action="delete.jsp" method="GET">
				<table>
					<tr>
						<td>编号:</td>
						<td><input type="text" name="stuno" /></td>
						<td><input type="submit" value="删除" ></td>
					</tr>
				</table>
			</form>
  		</fieldset>
  	</div>
  	<div>
  		<fieldset style="width:30%">
  			<legend>改</legend>
			<form action="update.jsp" method="GET">
				<table>
					<tr>
						<td>目标编号:</td>
						<td><input type="text" name="stuno" /></td>
					</tr>
					<tr>
						<td>重写姓名:</td>
						<td><input type="text" name="stuname" /></td>
					</tr>
					<tr>
						<td>重写性别:</td>
						<td><input type="text" name="stusex" /></td>
					</tr>
				</table>
				<input type="submit" value="更新" >
			</form>
  		</fieldset>
  	</div>
  	<div>
  		<fieldset style="width:30%">
  			<legend>查</legend>
			<form action="query.jsp" method="GET">
				<table>
					<tr>
						<td>编号:</td>
						<td><input type="text" name="stuno" /></td>
						<td><input type="submit" value="查询" ></td>
					</tr>
				</table>
			</form>
  		</fieldset>
  	</div>
  </body>
</html>
