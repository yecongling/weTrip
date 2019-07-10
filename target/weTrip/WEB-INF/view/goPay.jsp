<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/logo01.png">
    <script type="text/javascript"
            src="<%=request.getContextPath() %>/static/js/jquery-1.12.4.min.js"></script>
    <link
            href="<%=request.getContextPath() %>/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="<%=request.getContextPath() %>/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div>
    <img class="img-responsive" src="<%=request.getContextPath()%>/static/img/index/index001.jpg">
</div>
<div class="container">
    <nav class="navbar navbar-default"
         style="background-color: rgba(215,238,250,0.91);font-size: 16px;font-weight: bold">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">首页</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <c:choose>
                        <c:when test="${sessionScope.user != null}">
                            <li><a href="<%=request.getContextPath()%>/feedback">我要反馈</a></li>
                            <li class="dropdown" id="dropdown02">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true"
                                   aria-expanded="false">欢迎您,${sessionScope.user.userName} <span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu" id="dropdown-menu02"
                                    style="display: none;background-color: rgb(213, 255, 239)">
                                    <li><a href="#">我的信息</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="<%=request.getContextPath()%>/myOrder">我的订单</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="<%=request.getContextPath()%>/exit">退出登录</a></li>
                                </ul>
                            </li>

                        </c:when>
                        <c:otherwise>
                            <li><a href="<%=request.getContextPath()%>/feedback">我要反馈</a></li>
                            <li><a href="<%=request.getContextPath()%>/preLogin">登录</a></li>
                            <li><a href="<%=request.getContextPath()%>/preRegister">注册</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </nav>
    <form class="form-horizontal" action="<%=request.getContextPath() %>/alipay/goAlipay" method="post">

        <div class="row" style="padding: 20px 0">
            <h3>确认支付</h3>
        </div>
        <div class="row form-group">
            <label class="control-label col-lg-1">订单编号</label>
            <div class="col-lg-5 col-md-6">
                <input class="form-control" type="text" readonly="readonly" name="orderNum" value="${orders.orderNum}">
            </div>
        </div>
        <div class="row form-group">
            <label class="control-label col-lg-1">产品名称</label>
            <div class="col-lg-5 col-md-6">
                <input class="form-control" type="text" readonly="readonly" value="${scenic.scenicName}">
            </div>
        </div>
        <div class="row form-group">
            <label class="control-label col-lg-1">支付价格</label>
            <div class="col-lg-5 col-md-6">
                <input class="form-control" type="text" readonly="readonly" value="${orders.payPrice}">
            </div>
        </div>
        <div class="row form-group">
            <label class="control-label col-lg-1">购买数量</label>
            <div class="col-lg-5 col-md-6">
                <input class="form-control" type="text" readonly="readonly" value="${orders.buyCounts}">
            </div>
        </div>
        <br>
        <input style="margin-left: 250px" type="submit" class="btn btn-primary" value="前往支付宝进行支付">

    </form>
</div>
<!--引入自定义的js文件-->
<script src="<%=request.getContextPath()%>/static/js/main.js"></script>
<script src="<%=request.getContextPath()%>/static/js/rollOfIndex.js"></script>
</body>
</html>

