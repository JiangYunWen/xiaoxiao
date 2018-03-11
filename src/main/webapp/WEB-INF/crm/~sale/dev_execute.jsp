<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<%@include file="/common/head.jsp"%>
</head>
<body>

<div class="page_title">客户开发计划 &gt; 执行计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="alert('开发失败，已归档。');window.location.href='dev.jsp';">终止开发</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="to('dev_plan.html');">制定计划</button>
	<button class="common_button" onclick="alert('用户开发成功，已添加新客户记录。');window.location.href='dev.jsp';">开发成功</button>

	</div>
<div id="wu-dialogexec" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
	<form id="wu-formdev" method="post">
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
		<%--<table >--%>
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
					<%--<input id="" name="T20" readonly size="20" /><span class="red_star">*</span></td>--%>
			<%--</tr>--%>
		<%--</table>--%>
		<%--<br />--%>
	</form>


		<%--<table class="data_list_table" id="table1">--%>
			<%--<tr>--%>
				<%--<th>日期</th>--%>
				<%--<th>计划</th>--%>
				<%--<th>执行效果</th>--%>
			<%--</tr>--%>
			<%--<form id="exec" method="post">--%>
			<%--<tr>--%>
				<%--<jsp:useBean id="time" class="java.util.Date"/>--%>
				<%--<td class="list_data_text"><fmt:formatDate value="<%=time%>" pattern="yyyy年MM月dd日"></fmt:formatDate></td>--%>
				<%--<td class="list_data_ltext">初步接触，了解客户意向。</td>--%>
				<%--<td class="list_data_ltext"><input />　--%>
					<%--<button class="common_button" onclick="save('dev_execute.html');">保存</button>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--</form>--%>
			<%--<tr>--%>
				<%--<td class="list_data_text"><fmt:formatDate value="<%=time%>" pattern="yyyy年MM月dd日"></fmt:formatDate></td>--%>
				<%--<td class="list_data_ltext">推介产品。</td>--%>
				<%--<td class="list_data_ltext"><input name="T1" size="20" />　--%>
					<%--<button class="common_button" onclick="save('dev_execute.html');">保存</button>--%>
				<%--</td>--%>
			<%--</tr>--%>
		<%--</table>--%>


</div>


<!--<table class="query_form_table">-->
	<!--<tr>-->
		<!--<th>编号</th>-->
		<!--<td>1</td>-->
		<!--<th>机会来源</th>-->
		<!--<td>-->
			<!--　</td>-->
	<!--</tr>-->
	<!--<tr>-->
		<!--<th>客户名称</th>-->
		<!--<td>睿智电脑</td>-->
		<!--<th>成功机率（%）</th>-->
		<!--<td>&nbsp;70</td>-->
	<!--</tr>	-->
	<!--<tr>-->
		<!--<th>概要</th>-->
		<!--<td colspan="3">采购笔记本电脑意向</td>-->
	<!--</tr>-->
	<!--<tr>-->
		<!--<th>联系人</th>-->
		<!--<td>刘先生</td>-->
		<!--<th>联系人电话</th>-->
		<!--<td>13729239239</td>-->
	<!--</tr>-->
	<!--<tr>-->
		<!--<th>机会描述</th>-->
		<!--<td colspan="3">...</td>-->
	<!--</tr>-->
	<!--<tr>-->
		<!--<th>创建人</th>-->
		<!--<td>刘颖</td>-->
		<!--<th>创建时间</th>-->
		<!--<td>2007年12月06日 16时09分08秒</td>-->
	<!--</tr>-->
	<!--<tr>-->
		<!--<th>指派给</th>-->
		<!--<td>-->
			<!--郭小美</td>-->
		<!--<th>指派时间</th>-->
		<!--<td>-->
			<!--2007年12月07日 09时00分38秒</td>-->
	<!--</tr>-->
<!--</table>-->
<!--<br />-->
<!--<table class="data_list_table" id="table1">-->
	<!--<tr>-->
		<!--<th>日期</th>-->
		<!--<th>计划</th>-->
		<!--<th>执行效果</th>-->
	<!--</tr>-->
	<!--<tr>-->
		<!--<td class="list_data_text">2008年01月18日</td>-->
		<!--<td class="list_data_ltext">初步接触，了解客户意向。</td>-->
		<!--<td class="list_data_ltext"><input />　-->
	<!--<button class="common_button" onclick="save('');">保存</button>-->
		<!--</td>-->
	<!--</tr>-->
	<!--<tr>-->
		<!--<td class="list_data_text">2008年02月22日</td>-->
		<!--<td class="list_data_ltext">推介产品。</td>-->
		<!--<td class="list_data_ltext"><input name="T1" size="20" />　-->
	<!--<button class="common_button" onclick="save('');">保存</button>-->
		<!--</td>-->
	<!--</tr>-->
	<!--</table>-->
</body>
</html>