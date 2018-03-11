<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<%@include file="/common/head.jsp"%>
</head>
<body>
<body class="easyui-layout">
<!-- begin of header -->
<div class="wu-header" data-options="region:'north',border:false,split:true">
	<div class="wu-header-left">
		<h1>EasyUI Web Admin</h1>
	</div>
	<div class="wu-header-right">
		<p><strong class="easyui-tooltip" title="2条未读消息">admin</strong>，欢迎您！</p>
		<p><a href="#">网站首页</a>|<a href="#">支持论坛</a>|<a href="#">帮助中心</a>|<a href="#">安全退出</a></p>
	</div>
</div>


<!-- end of header -->
<!-- begin of sidebar -->
<div class="wu-sidebar" data-options="region:'west',split:true,border:true,title:'导航菜单'">
	<div class="easyui-accordion" data-options="border:false,fit:true">
		<div title="权限管理" data-options="iconCls:'icon-application-cascade'" style="padding:5px;">
			<ul class="easyui-tree wu-side-tree">
				<li iconCls="icon-chart-organisation"><a href="javascript:void(0)" data-icon="icon-chart-organisation" data-link="temp/layout-2.html" iframe="0">菜单导航</a></li>
				<li iconCls="icon-users"><a href="javascript:void(0)" data-icon="icon-users" data-link="temp/userlist.jsp" iframe="0">用户管理</a></li>
				<li iconCls="icon-user-group"><a href="javascript:void(0)" data-icon="icon-user-group" data-link="temp/layout-3.html" iframe="0">角色管理</a></li>
				<li iconCls="icon-book"><a href="javascript:void(0)" data-icon="icon-book" data-link="temp/layout-3.html" iframe="0">数据字典</a></li>
			</ul>
		</div>
		<div title="营销管理" data-options="iconCls:'icon-application-form-edit'" style="padding:5px;">
			<ul class="easyui-tree wu-side-tree">
				<li iconCls="icon-chart-organisation"><a href="javascript:void(0)" data-icon="icon-chart-organisation" data-link="temp/sallist.jsp" iframe="0">销售机会管理</a></li>
				<li iconCls="icon-users"><a href="javascript:void(0)" data-icon="icon-users" data-link="/plan/plist" iframe="0">客户开发计划</a></li>
			</ul>
		</div>
		<div title="统计报表" data-options="iconCls:'icon-creditcards'" style="padding:5px;">
			<ul class="easyui-tree wu-side-tree">
				<li iconCls="icon-chart-organisation"><a href="javascript:void(0)" data-icon="icon-chart-organisation" data-link="layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-users"><a href="javascript:void(0)" data-icon="icon-users" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-user-group"><a href="javascript:void(0)" data-icon="icon-user-group" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-book"><a href="javascript:void(0)" data-icon="icon-book" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-cog"><a href="javascript:void(0)" data-icon="icon-cog" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-application-osx-error"><a href="javascript:void(0)" data-icon="icon-application-osx-error" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
			</ul>
		</div>
		<div title="订单管理" data-options="iconCls:'icon-cart'" style="padding:5px;">
			<ul class="easyui-tree wu-side-tree">
				<li iconCls="icon-chart-organisation"><a href="javascript:void(0)" data-icon="icon-chart-organisation" data-link="layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-users"><a href="javascript:void(0)" data-icon="icon-users" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-user-group"><a href="javascript:void(0)" data-icon="icon-user-group" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-book"><a href="javascript:void(0)" data-icon="icon-book" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-cog"><a href="javascript:void(0)" data-icon="icon-cog" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-application-osx-error"><a href="javascript:void(0)" data-icon="icon-application-osx-error" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
			</ul>
		</div>
		<div title="广告管理" data-options="iconCls:'icon-bricks'" style="padding:5px;">
			<ul class="easyui-tree wu-side-tree">
				<li iconCls="icon-chart-organisation"><a href="javascript:void(0)" data-icon="icon-chart-organisation" data-link="layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-users"><a href="javascript:void(0)" data-icon="icon-users" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-user-group"><a href="javascript:void(0)" data-icon="icon-user-group" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-book"><a href="javascript:void(0)" data-icon="icon-book" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-cog"><a href="javascript:void(0)" data-icon="icon-cog" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-application-osx-error"><a href="javascript:void(0)" data-icon="icon-application-osx-error" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
			</ul>
		</div>
		<div title="报表中心" data-options="iconCls:'icon-chart-curve'" style="padding:5px;">
			<ul class="easyui-tree wu-side-tree">
				<li iconCls="icon-chart-organisation"><a href="javascript:void(0)" data-icon="icon-chart-organisation" data-link="layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-users"><a href="javascript:void(0)" data-icon="icon-users" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-user-group"><a href="javascript:void(0)" data-icon="icon-user-group" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-book"><a href="javascript:void(0)" data-icon="icon-book" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-cog"><a href="javascript:void(0)" data-icon="icon-cog" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-application-osx-error"><a href="javascript:void(0)" data-icon="icon-application-osx-error" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
			</ul>
		</div>
		<div title="系统设置" data-options="iconCls:'icon-wrench'" style="padding:5px;">
			<ul class="easyui-tree wu-side-tree">
				<li iconCls="icon-chart-organisation"><a href="javascript:void(0)" data-icon="icon-chart-organisation" data-link="layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-users"><a href="javascript:void(0)" data-icon="icon-users" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-user-group"><a href="javascript:void(0)" data-icon="icon-user-group" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-book"><a href="javascript:void(0)" data-icon="icon-book" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-cog"><a href="javascript:void(0)" data-icon="icon-cog" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
				<li iconCls="icon-application-osx-error"><a href="javascript:void(0)" data-icon="icon-application-osx-error" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
			</ul>
		</div>
	</div>
</div>

<!-- end of sidebar -->
<!-- begin of main -->
<div class="wu-main" data-options="region:'center'">
	<div id="wu-tabs" class="easyui-tabs" data-options="border:false,fit:true">
		<div title="首页" data-options="href:'temp/layout-1.jsp',closable:false,iconCls:'icon-tip',cls:'pd3'"></div>
	</div>
</div>
<!-- end of main -->
<!-- begin of footer -->
<div class="wu-footer" data-options="region:'south',border:true,split:true">
	&copy; 2013 Wu All Rights Reserved
</div>
<div class="page_title">客户开发计划 &gt; 制定计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="">执行计划</button>
	<button class="common_button" onclick="back();">返回</button>
</div>

<table class="query_form_table" id="dev">
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
		<td class="list_data_text" height="24" ><fmt:formatDate value="<%=time%>" pattern="yyyy年MM月dd日"></fmt:formatDate></td>
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
        $.messager.confirm("系统提示", "您确定要保存这个计划吗？", function(r) {
            if (r) {
                $.post("/plan/savePlan", {planTodo:planTodo.value,planDate:planDate.value}, function(result) {
                    if (result.success) {
                        $.messager.alert("系统提示", "计划已保存成功！");
                        window.location.href="/plan/plist";
                        $("#dev").datagrid("reload");
                    } else {
                        $.messager.alert("系统提示", "计划保存失败！");
                    }
                }, "json");
            }
        });
    }


</script>
</body>
</html>