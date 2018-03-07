<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>jb-aptech毕业设计项目</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href="html/css/style.css" rel="stylesheet" type="text/css">
		<script src="<%=path%>/html/script/common.js"></script>
		<script src="<%=path %>/html/script/validate.js"></script>
	</head>
	<body>
		<div class="page_title">
			权限管理 > 权限管理 > 添加权限
		</div>
		<html:form action="/sysRight" method="post">
			<div class="button_bar">
				<button class="common_button" onclick="help('');">
					帮助
				</button>
				<button class="common_button" onclick="back();">
					返回
				</button>
			</div>
			<table class="query_form_table">
				<tr>
					<th>
						编号
					</th>
					<td>
						${sysRight.rightCode }
					</td>
					<th>
						权限类型
					</th>
					<td>
						${sysRight.rightType }
					</td>
					<th>
						父节点
					</th>
					<td>
						${sysRight.rightParentCode }
					</td>
				</tr>
				<tr>
					<th>
						权限文本
					</th>
					<td>
						${sysRight.rightText }
					</td>
					<th>
						权限URL
					</th>
					<td>
						${sysRight.rightUrl }
					</td>
					<th>权限描述</th>
					<td>
						${sysRight.rightTip }
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
