<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<%@include file="/common/head.jsp"%>


</head>
<body>

<div class="page_title">销售机会管理</div>
<%--<div class="button_bar">--%>
	<%--<button class="common_button" onclick="help('');">帮助</button>--%>
	<%--<button class="common_button" onclick="to('add.html');">新建</button>  --%>
	<%--<button class="common_button" onclick="reload();">查询</button> --%>
	<%--</div>--%>
<%--<table class="query_form_table">--%>
	<%--<tr>--%>
		<%--<th>客户名称</th>--%>
		<%--<td><input /></td>--%>
		<%--<th>概要</th>--%>
		<%--<td><input /></td>--%>
		<%--<th>联系人</th>--%>
		<%--<td>--%>
			<%--<input name="T1" size="20" />--%>
		<%--</td>--%>
	<%--</tr>--%>
	<%--</table>--%>
<br />
<table id="sal" class="easyui-datagrid">
	<script type="text/javascript">
        $('#sal').datagrid({
            url:'/sal/list',
            loadFilter:pagerFilter,
            rownumbers:true,
            singleSelect:false,
            pageSize:20,
            pagination:true,
            multiSort:true,
            fitColumns:true,
            fit:true,
            columns:[[
                { checkbox:true},
                { field:'chcId',title:'编号',width:100,sortable:true},
                { field:'chcCustName',title:'客户名称',width:180,sortable:true},
                { field:'chcTitle',title:'概要',width:100},
                { field:'chcLinkman',title:'联系人',width:100},
                { field:'chcTel',title:'联系人电话',width:100},
                { field:'chcCreateDate',title:'创建时间',width:100
				}
            ]]
        });

        //转换日期格式
        function changeDateFormat(cellval) {
            if (cellval != null) {
                var date = new Date(parseInt(cellval.replace("/Date(", "").replace(")/", ""), 10));
                var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
                return date.getFullYear() + "-" + month + "-" + currentDate;
            }
        }
	</script>
	<%--<thead>--%>
	<%--<tr>--%>
		<%--<th field="cb" checkbox="true" align="center"></th>--%>
		<%--<th field="chcId" width="50" align="center">编号</th>--%>
		<%--<th field="chcCustName" width="50" align="center">客户名称</th>--%>
		<%--<th field="chcTitle" width="50" align="center">概要</th>--%>
		<%--<th field="chcLinkman" width="50" align="center">联系人</th>--%>
		<%--<th field="chcTel" width="50" align="center">联系人电话</th>--%>
		<%--<th field="chcCreateDate"  width="50" align="center">创建时间</th>--%>
		<%--&lt;%&ndash;<fmt:formatDate value="chcCreateDate" pattern="yyyy-MM-dd hh:mm:ss"></fmt:formatDate>&ndash;%&gt;--%>
	<%--</tr>--%>
	<%--</thead>--%>
	<div id="tb">
		<a href="#" onclick="openSalAddDialog()"  class="easyui-linkbutton"
		   iconCls="icon-add" plain="true">新建</a> <a
			href="#" onclick="openSalModisyDialog()" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true">修改</a> <a
			href="javascript:deleteSal()" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true">删除</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-redo" onclick="openSalZpDialog()" plain="true">指派</a>
		<div>
			&nbsp;用户名：&nbsp;<input type="text" id="userName" size="20"/>
			<a href="javascript:searchUser()" class="easyui-linkbutton"
			   iconCls="icon-search" plain="true">查询</a>
		</div>
	</div>

	<%--<tr>--%>
		<%--<td class="list_data_number">1</td>--%>
		<%--<td class="list_data_text">睿智数码</td>--%>
		<%--<td class="list_data_ltext">采购笔记本电脑意向</td>--%>
		<%--<td class="list_data_text">刘先生</td>--%>
		<%--<td class="list_data_text">13729239239</td>--%>
		<%--<td class="list_data_text">2007年12月06日</td>--%>
		<%--<td class="list_data_op">--%>
			<%--<img onclick="to('dispatch.html');" title="指派" src="../images/bt_linkman.gif" class="op_button" />--%>
			<%--<img onclick="to('edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />--%>
			<%--<img onclick="del('“销售机会：采购笔记本电脑意向”');" title="删除" src="../images/bt_del.gif" class="op_button" />--%>
			<%----%>
		<%--</td>--%>
	<%--</tr>--%>
	<%--<thead>--%>
	<%--<tr>--%>

<%--<div class="pager">--%>
	<%--共59条记录 每页<input value="10" size="2" />条--%>
	<%--第<input value="1" size="2"/>页/共5页--%>
	<%--<a href="#">第一页</a>--%>
	<%--<a href="#">上一页</a>--%>
	<%--<a href="#">下一页</a>--%>
	<%--<a href="#">最后一页</a>--%>
	<%--转到<input value="1" size="2" />页--%>
	<%--<button width="20" onclick="reload();">GO</button>--%>
<%--</div>--%>
		<%--</th>--%>
	<%--</tr>--%>
	<%--</thead>--%>
</table>
</body>


</html>