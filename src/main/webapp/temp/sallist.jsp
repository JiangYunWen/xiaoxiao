<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<%@include file="/common/head.jsp"%>


</head>
<body>

<div class="page_title">销售机会管理</div>
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
                },
                { field:'chcStatus',title:'状态',width:100,
                    formatter: function (val,rec) {
                        var c;
                        if(rec.chcStatus==1){
                            c="未开发";
                        }else if(rec.chcStatus==2){
                            c="开发中";
                        }else if(rec.chcStatus==3){
                            c="开发成功";
                        }else if(rec.chcStatus==4){
                            c="开发失败";
                        }
                        return c;
                    }}
            ]]
        });



	</script>
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

</table>
</body>


</html>