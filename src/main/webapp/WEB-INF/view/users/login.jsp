<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>

    <!-- Bootstrap CSS -->
    <link href="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/custom.css">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/logo01.png">
    <style>
        body {
            background: url(<%=request.getContextPath()%>/static/img/loginback2.jpg);
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
        }

        #login {
            margin-top: 50px;
        }
    </style>
</head>

<body style="background-color: #f5f5f5">

<div class="container">

    <div class="login-form">
        <form action="<%=request.getContextPath()%>/login" method="post" role="form">
            <legend>登录</legend>

            <div class="form-group">
                <label for="">账号</label>
                <input type="text" class="form-control" id=" " placeholder="phoneNum" name="phoneNum" required="required">
            </div>

            <div class="form-group">
                <label for="">密码</label>
                <input type="password" class="form-control" id="" placeholder="密码" name="password" required="required">
            </div>
            <span style="color: red">${requestScope.error}</span>
            <div id="v_container" style="width: 200px;height: 50px;"></div>
            <c:if test="${msg!=null }">
                ${msg }<br/>
            </c:if>
            <button type="submit" class="btn btn-primary" id="login"> 登 录</button>
        </form>
    </div>
</div>

<!-- jQuery -->
<script src="<%=request.getContextPath()%>/static/js/jquery-3.3.1.js"></script>

<!-- Bootstrap JavaScript -->
<script src="<%=request.getContextPath()%>/static/plugins/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/gVerify.js"></script>
</body>

</html>