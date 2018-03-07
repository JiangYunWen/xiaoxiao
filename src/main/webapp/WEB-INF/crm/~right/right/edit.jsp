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
		<script src="<%=path%>/html/script/validate.js"></script>
	</head>
	<body>
		<div class="page_title">
			权限管理 > 权限管理 > 编辑权限
		</div>
		<html:form action="/sysRight" method="post">
			<html:hidden property="o" value="editSysRight" />
			<div class="button_bar">
				<button class="common_button" onclick="help('');">
					帮助
				</button>
				<button class="common_button" onclick="back();">
					返回
				</button>
				<button class="common_button" onclick="add();">
					保存
				</button>
			</div>
			<table class="query_form_table">
				<tr>
					<th>
						编号
					</th>
					<td>
						<html:text property="sysRight.rightCode" value="${sessionScope.rightForm.sysRight.rightCode}"></html:text>
					</td>
					<th>
						权限类型
					</th>
					<td>
						<html:select property="sysRight.rightType">
							<html:option value="Folder">根结点</html:option>
							<html:option value="Folder">父节点</html:option>
							<html:option value="Document">根结点</html:option>
						</html:select>
					</td>
					<th>
						父节点
					</th>
					<td><html:select property="sysRight.rightParentCode">
							<html:option value="">--请选择父节点--</html:option>
							<html:optionsCollection name="rights" label="rightText" value="rightCode"/>
						</html:select>
					</td>
				</tr>
				<tr>
					<th>
						权限文本
					</th>
					<td>
						<html:text property="sysRight.rightText" value="${sessionScope.rightForm.sysRight.rightText}"></html:text>
					</td>
					<th>
						权限URL
					</th>
					<td>
						<html:text property="sysRight.rightUrl" value="${sessionScope.rightForm.sysRight.rightUrl}"></html:text>
					</td>
					<th>权限描述</th>
					<td>
						<html:textarea property="sysRight.rightTip" value="${sessionScope.rightForm.sysRight.rightTip}"></html:textarea>
					</td>
				</tr>
			</table>
			<script>
				build_validate("sysRight.rightCode","编号不能为空","Limit","1","50");
				build_validate("sysRight.rightParentCode","父节点不能为空","Limit","1","50");
				build_validate("sysRight.rightText","权限文本不能为空","Limit","1","50");
			</script>
		</html:form>
	</body>
</html>
