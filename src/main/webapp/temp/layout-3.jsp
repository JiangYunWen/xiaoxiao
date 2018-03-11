<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div id="wu-dialog2" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
    <form id="wu-form2" method="post">
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
<br />
<table class="data_list_table">
    <tr>
        <th width="150px">日期</th>
        <th height="31">计划项</th>
    </tr>
    <tr>
        <td class="list_data_text" height="24">2008年01月18日</td>
        <td class="list_data_ltext" height="24"><input size="50" value="初步接触，了解客户意向。" />
            <button class="common_button" onclick="save('dev_plan.html');">保存</button>
            <button class="common_button" onclick="del('');">删除</button>
        </td>
    </tr>
    <tr>
        <td class="list_data_text">2008年02月22日</td>
        <td class="list_data_ltext"><input size="50" value="推介产品。" name="T1" />
            <button class="common_button" onclick="save('dev_plan.html');">保存</button>
            <button class="common_button" onclick="del('');">删除</button>
        </td>
    </tr>
</table>
