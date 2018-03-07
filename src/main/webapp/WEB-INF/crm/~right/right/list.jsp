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
			权限管理 > 权限管理 > 权限查询
		</div>
		<html:form action="/sysRight" method="post">
			<html:hidden property="o" value="toRightList" />
			<div class="button_bar">
				<button class="common_button" onclick="help('');">
					帮助
				</button>  
				<button class="common_button" onclick="add();">
					查询
				</button>
			</div>
			<table class="query_form_table">
				<tr>
					<th>
						权限文本
					</th>
					<td>
						<html:text property="sysRight.rightText"></html:text>
					</td>
					<th>
						权限描述
					</th>
					<td>
						<html:text property="sysRight.rightTip"></html:text>
					</td>
					<th>
						权限类型
					</th>
					<td>
						<html:select property="sysRight.rightType">
							<html:option value="">--请选择父节点--</html:option>
							<html:optionsCollection name="rights" label="rightText"
								value="rightCode" />
						</html:select>
					</td>
				</tr>
			</table>
			<br />
			<table class="query_form_table">
				<tr>
					<th>
						权限编号
					</th>
					<th>
						权限文本
					</th>
					<th>
						权限父节点
					</th>
					<th>
						权限类型
					</th>
					<th>
						权限描述
					</th>
					<th>
						权限操作
					</th>
				</tr>
				<logic:iterate id="right" name="rightList">
					<tr>
						<td>
							${right.rightCode }
						</td>
						<td>
							${right.rightText }
						</td>
						<td>
							${right.rightParentCode }
						</td>
						<td>
							${right.rightType }
						</td>
						<td>
							${right.rightTip }
						</td>
						<td>
							<img
								onclick="to('sysRight.do?o=toEditSysRight&rightId=${right.rightCode}');"
								title="编辑" src="html/images/bt_edit.gif" class="op_button" />
							<img
								onclick="to('sysRight.do?o=toDetailSysRight&rightId=${right.rightCode}');"
								title="查看" src="html/images/bt_deal.gif" class="op_button" />
							<img
								onclick="del('${right.rightText}','sysRight.do?o=toDeleteSysRight&rightId=${right.rightCode }');"
								title="删除" src="html/images/bt_del.gif" class="op_button" />
						</td>
					</tr>
				</logic:iterate>
				<tr>
					<th colspan="7" class="pager">
						<div class="pager">
							共${sessionScope.rightForm.page.allRecord}条记录 每页
							<html:text property="page.maxRecord" size="2"></html:text>
							条
							第${sessionScope.rightForm.page.currPage}页/共${sessionScope.rightForm.page.allPage}页
							<a href="sysRight.do?o=toRightList&param=firstPage">第一页</a>
							<a href="sysRight.do?o=toRightList&param=prePage">上一页</a>
							<a href="sysRight.do?o=toRightList&param=nextPage">下一页</a>
							<a href="sysRight.do?o=toRightList&param=lastPage">最后一页</a> 转到
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
