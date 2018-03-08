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
    <a href="#" onclick="openUserAddDialog()"  class="easyui-linkbutton"
       iconCls="icon-add" plain="true">添加</a> <a
        href="#" onclick="openUserModifyDialog()" class="easyui-linkbutton"
        iconCls="icon-edit" plain="true">修改</a> <a
        href="javascript:deleteUser()" class="easyui-linkbutton"
        iconCls="icon-remove" plain="true">删除</a>
    <div>
        &nbsp;用户名：&nbsp;<input type="text" id="userName" size="20"/>
        <a href="javascript:searchUser()" class="easyui-linkbutton"
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
            <table >
                <tr>
                    <td width="60" align="right">用户名：</td>
                    <td><input type="text" id="usrName" name="usrName"
                               class="wu-text" required="true" />&nbsp;<span style="color: red">*</span>
                    </td>
                </tr>
                <tr>
                    <td align="right">密码：</td>
                    <td><input type="password" id="usrPassword" name="usrPassword"
                               class="wu-text" required="true" />&nbsp;<span
                            style="color: red">*</span>
                    </td>
                </tr>
                <tr>
                    <td align="right">用户角色：</td>
                    <td><select name="usrRoleId" class="easyui-combobox"
                                id="usrRoleId" style="width: 100px;" editable="false"
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
