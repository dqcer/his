<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="../common/lib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理页面</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	background-color: ;
}
.STYLE1 {
	color: #333333;
	font-size: x-large;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
<script language="javascript">
window.onload = function() { 

if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+320; return;}}} 
} 
</script>
<script language=javascript>
function show(no)
{
for(var i=1;i<20;i++)
{
var a = document.getElementById(no+"@"+i);
if(a==null)
{
continue;
}
if(a.style.display=="")
{
a.style.display="none";
}else{
a.style.display="";
}
}

}
</script>
<script type="text/javascript">
function showzhi(inn)
{
var a = document.getElementById("loca");
a.innerHTML=inn;
}
function change(no)
{
var c = document.getElementById("c");
c.innerHTML=no;
}
</script>

</head>
<body>
 

<form id="form1" name="f1" method="post"  action="${ctx}/his/user/list" >
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          <tr>
                            <td colspan=9 height="33" align="left" bgcolor="#FFFFFF"><label></label>&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;用户名 &nbsp;:&nbsp; <input type=text class=''  size=20 name='uname' value="${qo.uname}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;姓名 &nbsp;:&nbsp; <input type=text class=''  size=20 name='tname' value="${qo.tname}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<input type=submit class='' value='查询信息' /> &nbsp;&nbsp;<input type=button   class=''  value='添加信息' onclick="add();" /> &nbsp;&nbsp;</td>
    </tr>
</table>


<label></label>
<br />


<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          <tr>
                            <td height="27" align="center" background="/admin/images/index1_72.gif" bgcolor="#FFFFFF">用户名</td>
<td height="27" align="center" background="/admin/images/index1_72.gif" bgcolor="#FFFFFF">密码</td>
<td height="27" align="center" background="/admin/images/index1_72.gif" bgcolor="#FFFFFF">姓名</td>
<td height="27" align="center" background="/admin/images/index1_72.gif" bgcolor="#FFFFFF">性别</td>
<td height="27" align="center" background="/admin/images/index1_72.gif" bgcolor="#FFFFFF">联系电话</td>
<td height="27" align="center" background="/admin/images/index1_72.gif" bgcolor="#FFFFFF">联系邮箱</td>
<td height="27" align="center" background="/admin/images/index1_72.gif" bgcolor="#FFFFFF">联系地址</td>
<td height="27" align="center" background="/admin/images/index1_72.gif" bgcolor="#FFFFFF">操作</td>
    </tr>
                         
    <%--
                        
                          <% 
new CommDAO().delete(request,"sysuser"); 
if(request.getParameter("unameid1")!=null){ 
 new CommDAO().commOper("update sysuser set uname ='' where id="+request.getParameter("unameid1"));  
} 
if(request.getParameter("unameid2")!=null){ 
 new CommDAO().commOper("update sysuser set uname ='' where id="+request.getParameter("unameid2"));  
} 
String sql = "select * from sysuser where 1=1 " ;
 if(!puname.equals("")){ 
 sql+= " and uname like'%"+puname+"%' " ;
 }  
 if(!startuname.equals("")){  
 mmm.put("startuname",startuname) ;
 sql+= " and uname >'"+startuname+"' " ;
 }  
 if(!enduname.equals("")){  
 mmm.put("enduname",enduname) ;
 sql+= " and uname <'"+Info.getDay(enduname,1)+"' " ;
 }  
 if(!ptname.equals("")){ 
 sql+= " and tname like'%"+ptname+"%' " ;
 }  
 if(!starttname.equals("")){  
 mmm.put("starttname",starttname) ;
 sql+= " and tname >'"+starttname+"' " ;
 }  
 if(!endtname.equals("")){  
 mmm.put("endtname",endtname) ;
 sql+= " and tname <'"+Info.getDay(endtname,1)+"' " ;
 }  
  sql +="  and (1!=1 " ; 
  sql +="  or  utype like'%管理员%' " ;
  sql +="  ) ";
  sql +=" order by id desc ";
String url = "sysusercx.jsp?1=1&uname="+puname+"&tname="+ptname+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>--%>
<c:forEach items="${paging.pagingValueList}" var="item">

<tr>

                            <td height="28" align="center" bgcolor="#FFFFFF">${item.uname>}</td>
                            <td height="28" align="center" bgcolor="#FFFFFF">${item.upass}</td>
                            <td height="28" align="center" bgcolor="#FFFFFF">${item.tname}</td>
                            <td height="28" align="center" bgcolor="#FFFFFF">${item.sex}</td>
                            <td height="28" align="center" bgcolor="#FFFFFF">${item.tel}</td>
                            <td height="28" align="center" bgcolor="#FFFFFF">${item.email}</td>
                            <td height="28" align="center" bgcolor="#FFFFFF">${item.addrs}</td>
                            <td height="28" align="center" bgcolor="#FFFFFF"><a href="javascript:update('${item.id}')">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="return confirm('确定要删除这条记录吗?')"  href="sysusercx.jsp?scid=${item.id}">删除</a></td>
</tr>
</c:forEach>
<%--<%}%>--%>
                         
                          <tr>
                              <%--<%@include file="../common/paging.jsp"%>--%>
                            <%--<td colspan=9 height="29" align="center" bgcolor="#FFFFFF">${ page.info}</td>--%>
                            
    </tr>
</table>      
</form>                 
</body>
</html>
 <script language=javascript src='/js/ajax.js'></script>
<script language=javascript >  
 
</script>  

<script language=javascript src='/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
    pop('sysuserxg.jsp?id='+no,'信息修改',550,295)
}
</script> 
<script language=javascript> 
function add(){ 
pop('sysusertj.jsp','信息添加',550,295) 
}
</script> 
