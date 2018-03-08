<%--
  Created by IntelliJ IDEA.
  User: JiangYunWen
  Date: 2018/3/8
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
<%@include file="/common/head.jsp"%>
    <script type="text/javascript">
        var url;

        function searchUser() {
            $("#dg").datagrid('load', {
                "usrName" : $("#s_userName").val()
            });
        }




        function saveUser() {
            $("#fm").form("submit", {
                url : url,
                onSubmit : function() {
                    if ($("#roleName").combobox("getValue") == "") {
                        $.messager.alert("系统提示", "请选择用户角色！");
                        return false;
                    }
                    return $(this).form("validate");
                },
                success : function(result) {
                    var result = eval('(' + result + ')');
                    if (result.success) {
                        $.messager.alert("系统提示", "保存成功！");
                        resetValue();
                        $("#dlg").dialog("close");
                        $("#dg").datagrid("reload");
                    } else {
                        $.messager.alert("系统提示", "保存失败！");
                        return;
                    }
                }
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

        function deleteUser() {
            var selectedRows = $("#dg").datagrid("getSelections");
            if (selectedRows.length == 0) {
                $.messager.alert("系统提示", "请选择要删除的数据！");
                return;
            }
            var strIds = [];
            for ( var i = 0; i < selectedRows.length; i++) {
                strIds.push(selectedRows[i].id);
            }
            var ids = strIds.join(",");
            $.messager.confirm("系统提示", "您确定要删除这<font color=red>"
                + selectedRows.length + "</font>条数据吗？", function(r) {
                if (r) {
                    $.post("${pageContext.request.contextPath}/user/delete.do", {
                        ids : ids
                    }, function(result) {
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
    </script>
</head>
<body style="margin: 1px">
<table id="dg" title="用户管理" class="easyui-datagrid" fitColumns="true"
       pagination="true" rownumbers="true"
       url="${pageContext.request.contextPath}/sys/list" fit="true"
       toolbar="#tb">
    <thead>
    <tr>
        <th field="cb" checkbox="true" align="center"></th>
        <th field="usrId" width="50" align="center">编号</th>
        <th field="usrName" width="50" align="center">用户名</th>
        <th field="usrPassword" width="50" align="center">密码</th>
        <th field="usrRoleId" width="50" align="center">用户角色</th>
        <th field="usrFlag" width="50" align="center">用户标识</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <a href="#" onclick="openAdd()"  class="easyui-linkbutton"
       iconCls="icon-add" plain="true">添加</a> <a
        href="#" onclick="openUserModifyDialog()" class="easyui-linkbutton"
        iconCls="icon-edit" plain="true">修改</a> <a
        href="javascript:deleteUser()" class="easyui-linkbutton"
        iconCls="icon-remove" plain="true">删除</a>
    <div>
        &nbsp;用户名：&nbsp;<input type="text" id="s_userName" size="20"
                               onkeydown="if(event.keyCode == 13)searchUser()" /> <a
            href="javascript:searchUser()" class="easyui-linkbutton"
            iconCls="icon-search" plain="true">查询</a>
    </div>

    <div id="dlg-buttons">
        <a href="javascript:saveUser()" class="easyui-linkbutton"
           iconCls="icon-ok">保存</a> <a href="javascript:closeUserDialog()"
                                       class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
    </div>

    <div id="dlg" class="easyui-dialog"
         style="width: 730px;height:280px;padding:10px 10px;" closed="true"
         buttons="#dlg-buttons">
        <form method="post" id="fm">
            <table cellspacing="8px;">
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" id="usrName" name="usrName"
                               class="easyui-validatebox" required="true" />&nbsp;<span
                            style="color: red">*</span>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>密码：</td>
                    <td><input type="password" id="usrPassword" name="usrPassword"
                               class="easyui-validatebox" required="true" />&nbsp;<span
                            style="color: red">*</span>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>用户角色：</td>
                    <td><select name="usrRoleId" class="easyui-combobox"
                                id="usrRoleId" style="width: 154px;" editable="false"
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
</div>
</body>
</html>
