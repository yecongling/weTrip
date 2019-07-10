<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>网上订票入口</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/kuCity.css">

    <Style>
        body{
            margin: 2px;
            padding: 2px;
        }
        .search_form {
            margin-top: 10px;
            line-height: 20px;
        }

        .cf {
            padding: 5px 8px;
            border: solid 1px #e0e0e0;
            font-size: 14px;
            width: 100px;
        }

        .f1 {
            float: left;
        }

        .f2 {
            float: right;
        }

        label {
            font-weight: 100;
        }

        button {
            position: absolute;
            left: 200px;
            top: 830px;
            width: 280px;

        }
    </Style>
</head>

<body>
        <div>
                <img class="img-responsive" src="<%=request.getContextPath()%>/static/img/index001.jpg">
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
                                <a class="navbar-brand" href="<%=request.getContextPath()%>/index">首页</a>
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
    <div style="background-color:rgb(52, 128, 226);width: 320px;height:360px;border-radius: 4px 4px 4px 4px;">
        <!-- 头部 -->
        <div id="tab" style="height:45px;line-height:45px;text-align:center;font-size:14px;">
            <a href="#" style="color:white">国内火车票</a>
        </div>
        <!--搜索框-->
      
        <div
            style="border:5px solid #3480e2;padding: 10px 15px 20px;height: 320px;border-radius: 0 0 4px 4px; background:#fff; ">
            <ul style="font-size:14px;margin:5px 0 10px;overflow:hidden;">
                <li style="text-align: center; color: #3480e2;">单程</li>
            </ul>
            <div class="search_form">
                <div class="search_txt">
                 <form action="<%=request.getContextPath()%>/ticketList">
                    <div class="f1">
                        <label style="color:#CCC; display:block;">出发城市</label>
                        <input type="text" name="ticketFrom" class="search3 cf">
                        <span style="color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开往</span>
                    </div>
                    <div class="f2">
                        <label style="color:#CCC; display:block;">到达城市</label>
                        <input type="text" name="ticketTo" class="search3 cf">
                    </div>
                    <div style="position:absolute;top:720px; ">
                        <label style="color:#CCC;">出发时间</label>
                        <input type="date" name="fromTime" style="display:block;width:280px;height:35px;" />
                    </div>
                    <div style="position:absolute;top:800px;">
                        <label>只搜高铁动车</label>
                        <input type="checkbox" name="sou" style="position:absolute;left: 260px;top:-5px;width:20px;height:20px;">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-warning" id="btn">开始搜索</button>
                    </div>
                </form>
                    <div style="position:absolute;top:875px;left: 300px;">
                        <a href="<%=request.getContextPath()%>/teamTicket">团队票入口></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <img style="position:absolute;top:545px;left: 520px;width: 800px;" src="<%=request.getContextPath()%>/static/img/huoche.jpg" alt="">
    </div>
    <script src="http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/kuCity.js"></script>
    <script>
        $('.search3').kuCity();
        $('#btn').on("click", function () {
            var m = document.getElementsByTagName("input");
            for (var i = 0; i < m.length; i++) {
                if (m[i].value == "" || m[i].value == null||m[0].value == m[1].value) {
                    return false;
                }
            }
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>

</html>