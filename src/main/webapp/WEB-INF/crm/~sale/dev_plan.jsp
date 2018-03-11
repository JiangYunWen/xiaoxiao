<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<%@include file="/common/head.jsp"%>
</head>
<body>

<div class="page_title">客户开发计划 &gt; 制定计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('dev_execute.html');">执行计划</button>
	<button class="common_button" onclick="back();">返回</button>
</div>

<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${load.chcId}</td>
		<th>机会来源</th>
		<td>
			${load.chcSource}
			　</td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td>${load.chcCustName}</td>
		<th>成功机率（%）</th>
		<td>&nbsp;${load.chcRate}</td>
	</tr>
	<tr>
		<th>概要</th>
		<td colspan="3">${load.chcTitle}</td>
	</tr>
	<tr>
		<th>联系人</th>
		<td>${load.chcLinkman}</td>
		<th>联系人电话</th>
		<td>${load.chcTel}</td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3">${load.chcDesc}</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>${load.chcCreateBy}</td>
		<th>创建时间</th>
		<td><fmt:formatDate value="${load.chcCreateDate}" pattern="yyyy年MM月dd日"></fmt:formatDate> </td>
	</tr>
	<tr>
		<th>指派给</th>
		<td>
			${load.chcDueTo}</td>
		<th>指派时间</th>
		<td>
			${load.chcDueDate}</td>
	</tr>
</table>
<br />

<table class="data_list_table" id="table1">
	<tr>
		<th width="150px">日期</th>
		<th height="31">计划项</th>
	</tr>
	<tr>
		<jsp:useBean id="time" class="java.util.Date"/>
		<td class="list_data_text" height="24" ><input  id="planDate" value="<%=time%>" /></td>
		<td class="list_data_ltext" height="24"><input id="planTodo" size="50" value="初步接触，了解客户意向。" />
	<button class="common_button" onclick="aa()">保存</button>
	<button class="common_button" onclick="del('');">删除</button>
		</td>
	</tr>
	<tr>
		<td class="list_data_text"><fmt:formatDate value="<%=time%>" pattern="yyyy年MM月dd日"></fmt:formatDate></td>
		<td class="list_data_ltext"><input size="50" value="推介产品。" name="T1" />
	<button class="common_button" onclick="save('dev_plan.html');">保存</button>
	<button class="common_button" onclick="del('');">删除</button>
		</td>
	</tr>
</table>
<script type="text/javascript">
	function aa() {
		var planTodo=document.getElementById("planTodo");
        var planDate=document.getElementById("planDate");

		alert(s);
    }


</script>
</body>
</html>