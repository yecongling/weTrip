<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<script type="text/javascript"
			src="<%=request.getContextPath() %>/static/js/jquery-1.12.4.min.js"></script>
	<link
			href="<%=request.getContextPath() %>/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
			rel="stylesheet">
	<script
			src="<%=request.getContextPath() %>/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<meta http-equiv="refresh" content="3;<%=request.getContextPath() %>/index">
</head>
<body>
<form class="form-horizontal">
	<div class="container">
		<div class="row" style="padding: 20px 0">
			<h1 style="color: red">恭喜你!购买成功</h1>
		</div>
		<div class="row form-group">
			<label class="control-label col-lg-1">订单编号</label>
			<div class="col-lg-5 col-md-6">
				<input class="form-control" type="text" readonly="readonly"   value="${out_trade_no }">
			</div>
		</div>
		<div class="row form-group">
			<label class="control-label col-lg-1">支付宝交易号</label>
			<div class="col-lg-5 col-md-6">
				<input class="form-control" type="text" readonly="readonly" value="${trade_no }">
			</div>
		</div>
		<div class="row form-group">
			<label class="control-label col-lg-1">实付金额</label>
			<div class="col-lg-5 col-md-6">
				<input class="form-control" type="text" readonly="readonly" value="${total_amount }">
			</div>
		</div>
		<div class="row form-group">
			<label class="control-label col-lg-1">购买产品</label>
			<div class="col-lg-5 col-md-6">
				<input class="form-control" type="text" readonly="readonly" value="${scenicName}" >
			</div>
		</div>
		<br>
			<h5  style="margin-left: 250px">此页面正在跳转...</h5>
	</div>
</form>

</body>
</html>


