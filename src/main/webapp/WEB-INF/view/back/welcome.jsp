<%@page pageEncoding="UTF-8" language="java" contentType="text/html;charset=utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/style.css" />
<title>我的桌面</title>
</head>
<body>
<div class="page-container">
	<p class="f-20 text-success">欢迎登陆weTrip <span class="f-14">v3.1</span>后台管理系统！</p>

	<p>登录时间：<div id="datetime">2014-6-14 11:19:55</div></p>
	
</div>
<footer class="footer mt-20">
	<div class="container">
		<p>
			Copyright &copy;2019 BJ-173.group6 All Rights Reserved.<br>
			
	</div>
</footer>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/css/h-ui/js/H-ui.js"></script>
<script>
    setInterval("document.getElementById('datetime').innerHTML=new Date().toLocaleString();", 1000);
</script>

</body>
</html>