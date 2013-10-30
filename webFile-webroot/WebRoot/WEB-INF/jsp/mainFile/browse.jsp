<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%
String path = request.getContextPath();
%>

<link rel="stylesheet" type="text/css" href="<%=path%>/styles/css/base.css">
<script src="<%=path%>/styles/js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="<%=path%>/styles/js/jquery.uploadify.js" type="text/javascript" charset="UTF-8"></script>
<script src="<%=path%>/styles/js/base.js" type="text/javascript" charset="UTF-8"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>webFile-v1.0</title>
</head>
<body>

<div>
	<%@ include file="upload.jsp"%>
</div>

<div>
	<%@ include file="warn.jsp"%>
</div>

<div id="doc">
	
	<%@ include file="topPanel.jsp"%>
	
	<%@ include file="leftPanel.jsp"%>
	
	<%@ include file="mainPanel.jsp"%>
	
</div>

<div id="topTips" style="height: 28px; opacity: 1; display: none;">
	<span class="msg"></span>
	<a class="close" style="display: none;"></a>
</div>

</body>
</html>