<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="basePath" value='${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/'/>
<!--css-->
<link href="${ctx}/admin/images/style.css" rel="stylesheet" type="text/css" />
<!--js-->
<script type="text/javascript" src="${ctx}/js/jquery-1.8.0.min.js"></script>

<script language=javascript src='${ctx}/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='${ctx}/js/popup.js'></script>
<script language=javascript src='${ctx}/js/ajax.js'></script>