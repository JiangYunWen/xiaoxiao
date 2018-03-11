<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div class="easyui-layout" data-options="fit:true">
    <div data-options="region:'west',border:true,split:true," title="分类管理" style="width:150px; padding:5px;">
        <ul id="wu-category-tree" class="easyui-tree"></ul>
    </div>
    <div data-options="region:'center',border:false">
    	<!-- Begin of toolbar -->
        <div id="wu-toolbar">
            <div class="wu-toolbar-button">
                <a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="openAdd()" plain="true">添加</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-edit" onclick="openEdit()" plain="true">修改</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-remove" onclick="remove()" plain="true">删除</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="cancel()" plain="true">取消</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-reload" onclick="reload()" plain="true">刷新</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-print" onclick="openAdd()" plain="true">打印</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-help" onclick="openEdit()" plain="true">帮助</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-undo" onclick="remove()" plain="true">撤销</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-redo" onclick="cancel()" plain="true">重做</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-sum" onclick="reload()" plain="true">总计</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-back" onclick="reload()" plain="true">返回</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-tip" onclick="reload()" plain="true">提示</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-save" onclick="reload()" plain="true">保存</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-cut" onclick="reload()" plain="true">剪切</a>
            </div>
            <div class="wu-toolbar-search">
                <label>起始时间：</label><input class="easyui-datebox" style="width:100px">
                <label>结束时间：</label><input class="easyui-datebox" style="width:100px">
                <label>用户组：</label>
                <select class="easyui-combobox" panelHeight="auto" style="width:100px">
                    <option value="0">选择用户组</option>
                    <option value="1">黄钻</option>
                    <option value="2">红钻</option>
                    <option value="3">蓝钻</option>
                </select>
                <label>关键词：</label><input class="wu-text" style="width:100px">
                <a href="#" class="easyui-linkbutton" iconCls="icon-search">开始检索</a>
            </div>
        </div>
        <!-- End of toolbar -->
        <table id="wu-datagrid" toolbar="#wu-toolbar"></table>
    </div>
</div>
<!-- Begin of easyui-dialog -->
<div id="wu-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px;  padding:20px;">
	<form id="wu-form" method="post">
        <table >
            <tr>
                <td width="60" align="right">用户名：</td>
                <td><input type="text"  name="usrName"
                           class="wu-text" required="true" />&nbsp;<span style="color: red">*</span>
                </td>
            </tr>
            <tr>
                <td align="right">密码：</td>
                <td><input type="password"  name="usrPassword"
                           class="wu-text" required="true" />&nbsp;<span
                        style="color: red">*</span>
                </td>
            </tr>
            <tr>
                <td align="right">用户角色：</td>
                <td><select name="usrRoleId" class="easyui-combobox"
                             style="width: 100px;" editable="false"
                            panelHeight="auto">
                    <option value="">请选择角色</option>
                    <option value="1">系统管理员</option>
                    <option value="2">销售主管</option>
                    <option value="3">客户经理</option>
                    <option value="4">高管</option>
                </select> &nbsp;<span style="color: red">*</span>
                </td>
            </tr>
        </table>
    </form>
</div>


<div id="wu-dialog1" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
    <form id="wu-form1" method="post">
        <table>
            <tr>
                <th width="50" align="right">编号</th>
                <td><input readonly  name="chcId"/></td>
                <th align="right">机会来源</th>
                <td><input type="text"   size="20"  name="chcSource"/></td>
            </tr>
            <tr>
                <th align="right">客户名称</th>
                <td> <input type="text"   name="chcCustName"/><span class="red_star">*</span></td>
                <th align="right">成功机率</th>
                <td><input type="text"   name="chcRate"/><span class="red_star">*</span></td>
            </tr>
            <tr>
                <th align="right">概要</th>
                <td colspan="3"><input type="text"  size="52"  name="chcTitle" /><span class="red_star">*</span></td>
            </tr>
            <tr>
                <th align="right">联系人</th>
                <td><input type="text"  size="20"  name="chcLinkman"/></td>
                <th align="right">联系人电话</th>
                <td><input type="text"  size="20"  name="chcTel"/></td>
            </tr>
            <tr>
                <th align="right">机会描述</th>
                <td colspan="3"><textarea type="textarea" rows="6" cols="50" class="wu-textarea" name="chcDesc"></textarea><span class="red_star">*</span></td>
            </tr>
            <tr>
                <th align="right">创建人</th>
                <td><input type="text"  name="chcCreateBy" value="迪丽热巴"  size="20" /><span class="red_star">*</span></td>
                <%--<th>创建时间</th>--%>
                <%--<td align="right"><input  class="wu-text"  name="chcCreateDate" readonly size="20" /><span class="red_star">*</span></td>--%>
            </tr>
        </table>
        <table  id="table1">
            <tr>
                <th>指派给</th>
                <td>
                    <select name="chcDueTo">
                        <option>请选择...</option>
                        <option value="小明">小明</option>
                        <option value="旺财">旺财</option>
                        <option value="球球">球球</option>
                        <option value="孙小美">孙小美</option>
                        <option value="周洁轮">周洁轮</option>
                    </select> <span class="red_star">*</span></td>
                <th>指派时间</th>
                <td>
                    <input id="t2" name="T20" readonly size="20" /><span class="red_star">*</span></td>
            </tr>
        </table>
    </form>
</div>


<%--<div id="wu-dialog2" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">--%>
    <%--<form id="wu-form2" method="post">--%>
        <%--<table>--%>
            <%--<tr>--%>
                <%--<th width="50" align="right">编号</th>--%>
                <%--<td><input readonly  name="chcId"/></td>--%>
                <%--<th align="right">机会来源</th>--%>
                <%--<td><input type="text"   size="20"  name="chcSource"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th align="right">客户名称</th>--%>
                <%--<td> <input type="text"   name="chcCustName"/><span class="red_star">*</span></td>--%>
                <%--<th align="right">成功机率</th>--%>
                <%--<td><input type="text"   name="chcRate"/><span class="red_star">*</span></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th align="right">概要</th>--%>
                <%--<td colspan="3"><input type="text"  size="52"  name="chcTitle" /><span class="red_star">*</span></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th align="right">联系人</th>--%>
                <%--<td><input type="text"  size="20"  name="chcLinkman"/></td>--%>
                <%--<th align="right">联系人电话</th>--%>
                <%--<td><input type="text"  size="20"  name="chcTel"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th align="right">机会描述</th>--%>
                <%--<td colspan="3"><textarea type="textarea" rows="6" cols="50" class="wu-textarea" name="chcDesc"></textarea><span class="red_star">*</span></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th align="right">创建人</th>--%>
                <%--<td><input type="text"  name="chcCreateBy" value="迪丽热巴"  size="20" /><span class="red_star">*</span></td>--%>
                <%--&lt;%&ndash;<th>创建时间</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td align="right"><input  class="wu-text"  name="chcCreateDate" readonly size="20" /><span class="red_star">*</span></td>&ndash;%&gt;--%>
            <%--</tr>--%>
        <%--</table>--%>
        <%--<table  id="table">--%>
            <%--<tr>--%>
                <%--<th>指派给</th>--%>
                <%--<td>--%>
                    <%--<select name="chcDueTo">--%>
                        <%--<option>请选择...</option>--%>
                        <%--<option value="小明">小明</option>--%>
                        <%--<option value="旺财">旺财</option>--%>
                        <%--<option value="球球">球球</option>--%>
                        <%--<option value="孙小美">孙小美</option>--%>
                        <%--<option value="周洁轮">周洁轮</option>--%>
                    <%--</select> <span class="red_star">*</span></td>--%>
                <%--<th>指派时间</th>--%>
                <%--<td>--%>
                    <%--<input id="rr" name="T20" readonly size="20" /><span class="red_star">*</span></td>--%>
            <%--</tr>--%>
        <%--</table>--%>
        <%--<br />--%>
        <%--<table class="data_list_table">--%>
            <%--<tr>--%>
                <%--<th width="150px">日期</th>--%>
                <%--<th height="31">计划项</th>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td class="list_data_text" height="24">2008年01月18日</td>--%>
                <%--<td class="list_data_ltext" height="24"><input size="50" value="初步接触，了解客户意向。" />--%>
                    <%--<button class="common_button" onclick="save('dev_plan.html');">保存</button>--%>
                    <%--<button class="common_button" onclick="del('');">删除</button>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td class="list_data_text">2008年02月22日</td>--%>
                <%--<td class="list_data_ltext"><input size="50" value="推介产品。" name="T1" />--%>
                    <%--<button class="common_button" onclick="save('dev_plan.html');">保存</button>--%>
                    <%--<button class="common_button" onclick="del('');">删除</button>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</table>--%>
    <%--</form>--%>
<%--</div>--%>

<!-- End of easyui-dialog -->
<script type="text/javascript">
    var url;

//    //制定计划
//    function openzdjhDialog() {
//        $("#wu-dialog2").dialog({
//            closed: false,
//            modal:true,
//            title: "编辑信息",
//            buttons: [{
//                text: '确定',
//                iconCls: 'icon-ok',
//                handler: function(){
//                    $('#wu-form2').form('submit', {
//                        url:'/plan/salPlan',
//                        success:function(data){
//                            if(data){
//                                $.messager.alert('信息提示','提交成功！','info');
//                                $('#wu-dialog2').dialog('close');
//                                $("#plan").datagrid("reload");//自动加载
//                            }
//                            else
//                            {
//                                $.messager.alert('信息提示','提交失败！','info');
//                            }
//                        }
//                    });
//                }
//            }, {
//                text: '取消',
//                iconCls: 'icon-cancel',
//                handler: function () {
//                    $('#wu-dialog2').dialog('close');
//                }
//            }]
//        });
//    }















    //模糊查询用户
    function searchUser() {
        $("#dg").datagrid('load', {
            usrName : $("#userName").val()
        });
    }

    function resetValue() {
        $("#userName").val("");
        $("#password").val("");
        $("#trueName").val("");
        $("#email").val("");
        $("#phone").val("");
        $("#roleName").combobox("setValue", "");
    }

    function closeUserDialog() {
        $("#dlg").dialog("close");
        resetValue();
    }

    //删除用户
    function deleteUser() {
        var selectedRows = $("#dg").datagrid("getSelected");
        $.messager.confirm("系统提示", "您确定要删除这条数据吗？", function(r) {
            if (r) {
                $.post("/sys/delUser", {usrId:selectedRows.usrId}, function(result) {
                    if (result.success) {
                        $.messager.alert("系统提示", "数据已成功删除！");
                        $("#dg").datagrid("reload");
                    } else {
                        $.messager.alert("系统提示", "数据删除失败，请联系系统管理员！");
                    }
                }, "json");
            }
        });
    }

    //打开用户编辑面板
    function openUserAddDialog() {
            $("#wu-dialog").dialog({
                closed: false,
                modal:true,
                title: "编辑信息",
                buttons: [{
                    text: '确定',
                    iconCls: 'icon-ok',
                    handler: add
                }, {
                    text: '取消',
                    iconCls: 'icon-cancel',
                    handler: function () {
                        $('#wu-dialog').dialog('close');
                    }
                }]
            });
        }

    //打开销售计划编辑面板
    function openSalAddDialog() {
        $("#wu-dialog1").dialog({
            closed: false,
            modal:true,
            title: "编辑信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                    $('#wu-form1').form('submit', {
                        url:'/sal/saveSal',
                        success:function(data){
                            if(data){
                                $.messager.alert('信息提示','提交成功！','info');
                                $('#wu-dialog1').dialog('close');
                                $("#sal").datagrid("reload");//自动加载
                            }
                            else
                            {
                                $.messager.alert('信息提示','提交失败！','info');
                            }
                        }
                    });
                }

            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#wu-dialog1').dialog('close');
                }
            }]
        });
    }

    //删除销售机会
    function deleteSal() {
        var selectedRows = $("#sal").datagrid("getSelected");

        $.messager.confirm("系统提示", "您确定要删除这条数据吗？", function(r) {
            if (r) {
                $.post("/sal/delSal", {chcId:selectedRows.chcId}, function(result) {
                    if (result.success) {
                        $.messager.alert("系统提示", "数据已成功删除！");
                        $("#sal").datagrid("reload");
                    } else {
                        $.messager.alert("系统提示", "数据删除失败，请联系系统管理员！");
                    }
                }, "json");
            }
        });
    }

    //修改销售机会
    function openSalModisyDialog() {
        var item = $('#sal').datagrid('getSelections');
        var row = item[0];
        alert(row);
        if(item.length!=1) {
            $.messager.alert("系统提示", "请选择一条要编辑的数据");
            return;
        }
        $('#wu-form1').form('load', row);
        $('#wu-dialog1').dialog({
            closed:false,
            modal:true,
            title:"修改销售机会",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function () {
                    $('#wu-form1').form('submit', {
                        url:'/sal/saveSal?chcId='+row.chcId,
                        success:function(data){
                            if(data){
                                $.messager.alert('信息提示','提交成功！','info');
                                $('#wu-dialog1').dialog('close');
                                $("#sal").datagrid("reload");
                            }
                            else
                            {
                                $.messager.alert('信息提示','提交失败！','info');
                            }
                        }
                    });
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#wu-dialog1').dialog('close');
                }
            }]
        });
    }


    //指派销售机会给某人
    function openSalZpDialog() {
        var item = $('#sal').datagrid('getSelections');
        var row = item[0];
        if(item.length!=1) {
            $.messager.alert("系统提示", "请选择一条要指派的机会");
            return;
        }
        $('#wu-form1').form('load', row);
        $('#wu-dialog1').dialog({
            closed:false,
            modal:true,
            title:"指派销售机会",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function () {
                    $('#wu-form1').form('submit', {
                        url:'/sal/updateSal?chcId='+row.chcId+"&chcStatus="+row.chcStatus,
                        success:function(data){
                            if(data){
                                $.messager.alert('信息提示','提交成功！','info');
                                $('#wu-dialog1').dialog('close');
                                $("#sal").datagrid("reload");
                            }
                            else
                            {
                                $.messager.alert('信息提示','提交失败！','info');
                            }
                        }
                    });
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#wu-dialog1').dialog('close');
                }
            }]
        });
    }

    //打开用户修改面板
    function openUserModifyDialog() {
        var item = $('#dg').datagrid('getSelections');
        var row = item[0];
        if (item) {
        if (item.length != 1) {
            $.messager.alert("系统提示", "请选择一条要编辑的数据！");
            return;
        }
            $('#wu-form').form('load', row);//显示查询单个

            $("#wu-dialog").dialog({
                closed: false,
                modal: true,
                title: "修改信息",
                buttons: [{
                    text: '确定',
                    iconCls: 'icon-ok',
                    handler: function () {
                        $('#wu-form').form('submit', {
                            url:'/sys/addUser?usrId='+row.usrId,
                            success:function(data){
                                if(data){
                                    $.messager.alert('信息提示','提交成功！','info');
                                    $('#wu-dialog').dialog('close');
                                    $("#dg").datagrid("reload");
                                }
                                else
                                {
                                    $.messager.alert('信息提示','提交失败！','info');
                                }
                            }
                        });
                    }
                }, {
                    text: '取消',
                    iconCls: 'icon-cancel',
                    handler: function () {
                        $('#wu-dialog').dialog('close');
                    }
                }]
            });


        }
    }




	/**
	* Name 载入菜单树
	*/
//	$('#wu-category-tree').tree({
//		url:'temp/menu.php',
//		onClick:function(node){
//			alert(node.text);
//		}
//	});

	

	/**
	* Name 打开添加窗口
	*/
	function openAdd(){
		$('#wu-form').form('clear');
		$('#wu-dialog').dialog({
			closed: false,
			modal:true,
            title: "添加信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function (){
                    $('#wu-form').form('submit', {
                        url:'/sys/addUser',
                        success:function(data){
                            if(data){
                                $.messager.alert('信息提示','提交成功！','info');
                                $('#wu-dialog').dialog('close');
                                $("#dg").datagrid("reload");//自动加载
                            }
                            else
                            {
                                $.messager.alert('信息提示','提交失败！','info');
                            }
                        }
                    });
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#wu-dialog').dialog('close');                    
                }
            }]
        });
	}



	
	/**
	* Name 分页过滤器
	*/
	function pagerFilter(data){
		if (typeof data.length == 'number' && typeof data.splice == 'function'){// is array
			data = {
				total: data.length,
				rows: data
			}
		}
		var dg = $(this);
		var opts = dg.datagrid('options');
		var pager = dg.datagrid('getPager');
		pager.pagination({
			onSelectPage:function(pageNum, pageSize){
				opts.pageNumber = pageNum;
				opts.pageSize = pageSize;
				pager.pagination('refresh',{pageNumber:pageNum,pageSize:pageSize});
				dg.datagrid('loadData',data);
			}
		});
		if (!data.originalRows){
			data.originalRows = (data.rows);
		}
		var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
		var end = start + parseInt(opts.pageSize);
		data.rows = (data.originalRows.slice(start, end));
		return data;
	}
	
	/**
	* Name 载入数据
	*/
	$('#wu-datagrid').datagrid({
		url:'/sys/list',
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
			{ field:'usrId',title:'用户编号',width:100,sortable:true},
			{ field:'usrName',title:'用户姓名',width:180,sortable:true},
			{ field:'usrPassword',title:'用户密码',width:100},
			{ field:'usrRoleId',title:'用户角色',width:100},
			{ field:'usrFlag',title:'用户标识',width:100},
		]]
	});



</script>