<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
	<%@include file="/common/head.jsp"%>
</head>
<body>

<div class="page_title">客户开发计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="reload();">查询</button>
	</div>
<table class="query_form_table">
	<tr>
		<th>客户名称</th>
		<td><input /></td>
		<th>概要</th>
		<td><input /></td>
		<th>联系人</th>
		<td>
			<input name="T1" size="20" />
		</td>
	</tr>
	</table>
<br />
<table class="data_list_table" id="plan">
	<tr>
		<th>编号</th>
		<th>客户名称</th>
		<th>概要</th>
		<th>联系人</th>
		<th>联系人电话</th>
		<th>创建时间</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${list}" var="list">
	<tr>
		<td >${list.chcId}</td>
		<td class="list_data_text">${list.chcCustName}</td>
		<td class="list_data_text">${list.chcTitle}</td>
		<td class="list_data_text">${list.chcLinkman}</td>
		<td class="list_data_text">${list.chcTel}</td>
		<td class="list_data_text"><fmt:formatDate value="${list.chcCreateDate}" pattern="yyyy-MM-dd hh:mm:ss"></fmt:formatDate></td>
		<td class="list_data_text">
			<c:if test="${list.chcStatus==1}">
				未指派
			</c:if>
			<c:if test="${list.chcStatus==2}">
				开发中
			</c:if>
			<c:if test="${list.chcStatus==3}">
				开发成功
			</c:if>
			<c:if test="${list.chcStatus==4}">
				开发失败
			</c:if>
		</td>
		<td class="list_data_op">
			<a href="/plan/pload?chcId=${list.chcId}"><img onclick="" title="制定计划" src="../images/bt_plan.gif" class="op_button" /></a>
			<img onclick="to('dev_execute.html');" title="执行计划" src="../images/bt_feedback.gif" class="op_button" />
			<img onclick="alert('用户开发成功，已添加新客户记录。');" title="开发成功" src="../images/bt_yes.gif" class="op_button" />
		</td>
	</tr>
	</c:forEach>
	<script type="text/javascript">
        function a() {
            alert(333);

        }

	</script>
	<tr>
		<th colspan="10" class="pager">
<div class="pager">
	共59条记录 每页<input value="10" size="2" />条
	第<input value="1" size="2"/>页/共5页
	<a href="#">第一页</a>
	<a href="#">上一页</a>
	<a href="#">下一页</a>
	<a href="#">最后一页</a>
	转到<input value="1" size="2" />页
	<button width="20" onclick="reload();">GO</button>
</div>
		</th>
	</tr>
</table>
</body>
</html>