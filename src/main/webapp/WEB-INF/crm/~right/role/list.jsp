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
			权限管理 > 用户管理 > 系统角色管理
		</div>
		<html:form action="/role" method="post">
			<html:hidden property="o" value="toRoleList" />
			<div class="button_bar">
				<button class="common_button" onclick="help('');">
					帮助
				</button>
				<button class="common_button"
					onclick="to('html/~right/role/add.jsp');">
					新建
				</button>
				<button class="common_button" onclick="add();">
					查询
				</button>
			</div>
			<table class="query_form_table">
				<tr>
					<th>
						角色名
					</th>
					<td>
						<html:text property="sysRole.roleName" size="20"></html:text>
					</td>
					<th>角色描述</th>
					<td>
						<html:text property="sysRole.roleDesc" size="20"></html:text>
					</td>
					<th>
						是否禁用
					</th>
					<td>
						<html:select property="sysRole.roleFlag">
							<html:option value="0">全部</html:option>
							<html:option value="1">正常</html:option>
							<html:option value="2">禁用</html:option>
						</html:select>
					</td>
				</tr>
			</table>
			<br />
			<table class="data_list_table">
				<tr>
					<th>
						编号
					</th>
					<th>
						角色名
					</th>
					<th>
						角色描述
					</th>
					<th>
						状态
					</th>
					<th>
						操作
					</th>
				</tr>
				<logic:iterate id="role" name="roles">
					<tr>
						<td class="list_data_text">
							${role.roleId}
						</td>
						<td class="list_data_text">
							${role.roleName}
						</td>
						<td>
							${role.roleDesc }
						</td>
						<td class="list_data_text">
							<c:if test="${role.roleFlag==1}">
	   							正常
	   						</c:if>
							<c:if test="${role.roleFlag==2}">
	   							禁用
	   						</c:if>
						</td>
						<td class="list_data_op">
						<c:if test="${role.roleFlag==1}">
							<img onclick="to('role.do?o=toEditSysRole&roleId=${role.roleId}');"
								title="编辑" src="html/images/bt_edit.gif" class="op_button" />
							<img onclick="to('role.do?o=toDispatchRight&roleId=${role.roleId }')" 
							    title="分配权限" src="html/images/bt_linkman.gif" class="op_button" />
						</c:if>
							<img onclick="to('role.do?o=toDetailSysRole&roleId=${role.roleId}');"
								title="查看" src="html/images/bt_deal.gif" class="op_button" />
						<c:if test="${role.roleFlag==1}">
							<img
								onclick="del('${role.roleName}','role.do?o=toDeleteSysRole&roleId=${role.roleId }');"
								title="删除" src="html/images/bt_del.gif" class="op_button" />
						</c:if>
						</td>
					</tr>
				</logic:iterate>
				<tr>
					<th colspan="7" class="pager">
						<div class="pager">
							共${sessionScope.roleForm.page.allRecord}条记录 每页
							<html:text property="page.maxRecord" size="2"></html:text>
							条
							第${sessionScope.roleForm.page.currPage}页/共${sessionScope.roleForm.page.allPage}页
							<a href="role.do?o=toRoleList&param=firstPage">第一页</a>
							<a href="role.do?o=toRoleList&param=prePage">上一页</a>
							<a href="role.do?o=toRoleList&param=nextPage">下一页</a>
							<a href="role.do?o=toRoleList&param=lastPage">最后一页</a> 转到
							<html:text property="page.currPage" size="2"></html:text>
							页
							<button width="20" onclick="add();">
								GO
							</button>
						</div>
					</th>
				</tr>
			</table>
		</html:form>
	</body>
</html>
${msg}

