<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
	<%@include file="/common/head.jsp"%>
</head>
<body>




<table id="plan" class="easyui-datagrid">
	<div id="tb">

		<a href="#"
		   onclick="openzdjhDialog()" title="制定计划" iconCls="icon-book" class="easyui-linkbutton" plain="true">制定计划
		</a>
		<a href="#"
		   onclick="openzxjhDialog()" title="执行计划"   class="easyui-linkbutton" iconCls="icon-book-go" plain="true">执行计划
		</a>
		<a href="#" class="easyui-linkbutton" title="开发成功" iconCls="icon-accept" onclick="" plain="true">开发成功</a>
		<a href="#" class="easyui-linkbutton" title="终止开发" iconCls="icon-cross" onclick="cancel()" plain="true">终止开发</a>

		<div>
			&nbsp;用户名：&nbsp;<input type="text" id="userName" size="20"/>
			<a href="javascript:searchUser()" class="easyui-linkbutton"
			   iconCls="icon-search" plain="true">查询</a>

		</div>

	</div>

	<script type="text/javascript">
        $('#plan').datagrid({
            url:'/plan/list',
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
                { field:'chcCreateDate',title:'创建时间',width:100},
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

        //保存初步
        function save(){
            var ss=document.getElementById("ss");
            var chcId=document.getElementById("chcId");
            $.messager.confirm("系统提示", "您确定要保存这个计划吗？", function(r) {
               if(r){
                   $('#pl').form('submit', {
                       url:'/plan/savePlan?cc='+ss.value+"&chcId="+chcId.value,
                       success:function(data){
                           if(data){
                               $.messager.alert('信息提示','保存成功！','info');
                               $('#wu-dialog2').dialog('close');
                               $("#plan").datagrid("reload");//自动加载
                           }
                           else
                           {
                               $.messager.alert('信息提示','保存失败！','info');
                           }
                       }
                   });
			   }else {
                   $.messager.alert("系统提示", "计划保存失败！");
               }
			});
		}

        //保存执行
        function saveplan(){
            var ss=document.getElementById("aa");
            var chcId = document.getElementById("planChcId");
            $.messager.confirm("系统提示", "您确定要执行这个计划吗？", function(r) {
                if(r){
                    $('#exec').form('submit', {
                        url:'/plan/editPlan?aa='+ss.value+"&chcId="+chcId.value,
                        success:function(data){
                            if(data){
                                $.messager.alert('信息提示','保存成功！','info');
                                $('#wu-dialogexec').dialog('close');
                                $("#plan").datagrid("reload");//自动加载
                            }
                            else
                            {
                                $.messager.alert('信息提示','保存失败！','info');
                            }
                        }
                    });
                }else {
                    $.messager.alert("系统提示", "计划保存失败！");
                }
            });
        }

            //制定计划
            function openzdjhDialog() {
               var item =$("#plan").datagrid("getSelected")
                $("#wu-form2").form('load', item);
                $("#wu-dialog2").dialog({
                    closed: false,
                    modal:true,
                    title: "制定计划",
                    buttons: [{
                        text: '确定',
                        iconCls: 'icon-ok',
                        handler: function(){
                            $('#pl').form('submit', {
                                url:'/plan/savePlan',
                                success:function(data){
                                    if(data){
                                        $.messager.alert('信息提示','提交成功！','info');
                                        $('#wu-dialog2').dialog('close');
                                        $("#plan").datagrid("reload");//自动加载
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
                            $('#wu-dialog2').dialog('close');
                        }
                    }]
                });
            }



        //执行计划
        function openzxjhDialog() {
            var item =$("#plan").datagrid("getSelected")
            alert(item.chcId);
            $("#wu-formdev").form('load', item);
            $("#wu-dialogexec").dialog({
                closed: false,
                modal:true,
                title: "执行计划",
                buttons: [{
                    text: '确定',
                    iconCls: 'icon-ok',
                    handler: function(){
                        $('#dialogexec').form('submit', {
                            url:'/plan/editPlan?planChcId='+item.chcId,
                            success:function(data){
                                if(data){
                                    $.messager.alert('信息提示','提交成功！','info');
                                    $('#dialogexec').dialog('close');
                                    $("#plan").datagrid("reload");//自动加载
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
                        $('#wu-dialogexec').dialog('close');
                    }
                }]
            });
        }

	</script>
</table>

<div id="wu-dialog2" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
<form id="wu-form2" method="post">
<table class="data_list_table">
<tr>
<th width="50" align="center">编号</th>
<td><input readonly id="chcId"  name="chcId"/></td>
<th align="center">机会来源</th>
<td><input type="text"   size="20"  name="chcSource"/></td>
</tr>
<tr>
<th align="center" width="100">客户名称</th>
<td> <input type="text"   name="chcCustName"/><span class="red_star">*</span></td>
<th align="center">成功机率</th>
<td><input type="text"   name="chcRate"/><span class="red_star">*</span></td>
</tr>
<tr>
<th align="center">概要</th>
<td colspan="3"><input type="text"  size="52"  name="chcTitle" /><span class="red_star">*</span></td>
</tr>
<tr>
<th align="center">联系人</th>
<td><input type="text"  size="20" id="chcLinkman"  name="chcLinkman"/></td>
<th align="center">联系人电话</th>
<td><input type="text"  size="20"  name="chcTel"/></td>
</tr>
<tr>
<th align="center">机会描述</th>
<td colspan="3"><textarea type="textarea" rows="6" cols="50" class="wu-textarea" name="chcDesc"></textarea><span class="red_star">*</span></td>
</tr>
<tr>
<th align="center">创建人</th>
<td><input type="text"  name="chcCreateBy" value="迪丽热巴"  size="20" /><span class="red_star">*</span></td>
<%--<th>创建时间</th>--%>
<%--<td align="right"><input  class="wu-text"  name="chcCreateDate" readonly size="20" /><span class="red_star">*</span></td>--%>
</tr>
</table>
<table  id="table">
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
<input id="rr" name="T20" readonly size="20" /><span class="red_star">*</span></td>
</tr>
</table>
<br />

</form>

	<table class="data_list_table">
		<tr>
			<th width="150px">日期</th>
			<th height="31">计划项</th>
		</tr>
		<form id="pl" method="post">
		<tr>
			<jsp:useBean id="time" class="java.util.Date"/>
			<td class="list_data_text" height="24"><fmt:formatDate value="<%=time%>" pattern="yyyy年MM月dd日"></fmt:formatDate></td>
			<td class="list_data_ltext" height="24"><input id="ss"  name="planTodo" size="50" value="初步接触，了解客户意向。" />
				<button class="common_button" onclick="save();">保存</button>
				<button class="common_button" onclick="del('');">删除</button>
			</td>
		</tr>
		</form>
	</table>
</div>






<div id="wu-dialogexec" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
	<form id="wu-formdev" method="post">
		<table>
		<tr>
		<th width="50" align="center" >编号</th>
		<td><input readonly id="planChcId"  name="chcId"/></td>
		<th align="center">机会来源</th>
		<td><input type="text"   size="20"  name="chcSource"/></td>
		</tr>
		<tr>
		<th align="center" width="100">客户名称</th>
		<td> <input type="text"   name="chcCustName"/><span class="red_star">*</span></td>
		<th align="right">成功机率</th>
		<td><input type="text"   name="chcRate"/><span class="red_star">*</span></td>
		</tr>
		<tr>
		<th align="center">概要</th>
		<td colspan="3"><input type="text"  size="52"  name="chcTitle" /><span class="red_star">*</span></td>
		</tr>
		<tr>
		<th align="center">联系人</th>
		<td><input type="text"  size="20"  name="chcLinkman"/></td>
		<th align="center">联系人电话</th>
		<td><input type="text"  size="20"  name="chcTel"/></td>
		</tr>
		<tr>
		<th align="center">机会描述</th>
		<td colspan="3"><textarea type="textarea" rows="6" cols="50" class="wu-textarea" name="chcDesc"></textarea><span class="red_star">*</span></td>
		</tr>
		<tr>
		<th align="center">创建人</th>
		<td><input type="text"  name="chcCreateBy" value="迪丽热巴"  size="20" /><span class="red_star">*</span></td>
		<%--<th>创建时间</th>--%>
		<%--<td align="right"><input  class="wu-text"  name="chcCreateDate" readonly size="20" /><span class="red_star">*</span></td>--%>
		</tr>
		</table>
		<table >
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
		<input id="" name="T20" readonly size="20" /><span class="red_star">*</span></td>
		</tr>
		</table>
		<br />
	</form>


	<table class="data_list_table" id="table1">
	<tr>
	<th>日期</th>
	<th>计划</th>
	<th>执行效果</th>
	</tr>
	<form id="exec" method="post">
	<tr>
	<%--<jsp:useBean id="time" class="java.util.Date"/>--%>
	<td class="list_data_text"><fmt:formatDate value="<%=time%>" pattern="yyyy年MM月dd日"></fmt:formatDate></td>
	<td class="list_data_ltext">初步接触，了解客户意向。</td>
	<td class="list_data_ltext"><input type="text" id="aa"/>　
	<button class="common_button" onclick="saveplan();">保存</button>
	</td>
	</tr>
	</form>
	<tr>
	<td class="list_data_text"><fmt:formatDate value="<%=time%>" pattern="yyyy年MM月dd日"></fmt:formatDate></td>
	<td class="list_data_ltext">推介产品。</td>
	<td class="list_data_ltext"><input name="T1" size="20" />　
	<button class="common_button" onclick="save('dev_execute.html');">保存</button>
	</td>
	</tr>
	</table>


</div>
</body>
</html>