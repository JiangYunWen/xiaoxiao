<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html"  prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script src="<%=path %>/html/script/validate.js"></script>
</head>
  
  <body>
    <div class="page_title">权限管理 > 角色管理 > 角色管理 > 查看角色</div>
    <html:form action="/role" method="post">
    	<html:hidden property="o" value="toLookSysRole"/>
    	<div class="button_bar">
	   		<button class="common_button" onclick="help('');">帮助</button>
	   		<button class="common_button" onclick="back();">返回</button>
	   	</div>
	   	<br/>
	   	<table class="query_form_table">
	   		<tr>
	   			<th>
	   				编号
	   			</th>
	   			<td>
	   				${sysRole.roleId}
	   			</td>
	   			<th>
	   				角色名
	   			</th>
	   			<td>${sysRole.roleName }</td>
	   		</tr>
	   		<tr>
	   			<th>
	   				角色描述
	   			</th>
	   			<td>
	   				${sysRole.roleDesc }
	   			</td>
	   			<th>状态</th>
	   			<td>
	   				${sysRole.roleFlag }
	   			</td>
	   		</tr>
	   	</table>
    </html:form>
  </body>
</html>
