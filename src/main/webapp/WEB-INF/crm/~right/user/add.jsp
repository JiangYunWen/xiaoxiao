<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html"  prefix="html"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <base href="<%=basePath%>">
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="html/css/style.css" rel="stylesheet" type="text/css">
<script src="<%=path %>/html/script/common.js"></script>
<script src="<%=path%>/html/script/validate.js"></script>
</head>
  
  <body>
   	<div class="page_title">权限管理 > 用户管理 > 添加系统用户</div>
   	<html:form action="/right" method="post">
   		<html:hidden property="o" value="addSysUser"/>
	   	<div class="button_bar">
	   		<button class="common_button" onclick="help('');">帮助</button>
	   		<button class="common_button" onclick="back();">返回</button>
			<button class="common_button" onclick="add();">保存</button>
	   	</div>
	   	<table class="query_form_table">
	   		<tr>
	   			<th>编号</th>
	   			<td>
	   				<input type="text" disabled="true" size="20">
	   			</td>
	   			<th>用户名</th>
	   			<td>
	   				<html:text property="sysUser.usrName" size="20"></html:text>
	   			</td>
	   		</tr>
	   		<tr>
	   			<th>密码</th>
	   			<td>
	   				<html:password property="sysUser.usrPassword" size="20"></html:password>
	   			</td>
	   			<th>
	   				状态
	   			</th>
	   			<td>
	   				正常
	   			</td>
	   		</tr>
	   		<tr>
	   			<th>角色</th>
	   			<td>
	   				未指派
	   			</td>
	   		</tr>
	   	</table>
	   	<script>
				build_validate("sysUser.usrName","用户名不能为空","Limit","1","50");
				build_validate("sysUser.usrPassword","密码不能为空","Limit","1","50");
		</script>
   	</html:form>
  </body>
</html>
