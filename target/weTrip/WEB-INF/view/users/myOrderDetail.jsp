<%--
  Created by IntelliJ IDEA.
  User: 时雨i
  Date: 2019/2/25
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <![endif]-->
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/static/css/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/static/css/h-ui.admin/skin/default/skin.css"
          id="skin"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/logo01.png">


    <style>
        body {
            background-color: #F2F2F2;
        }

        .dingdan {

            float: left;
            margin-top: 60px;
            margin-left: 30px;
        }

        .sumMoney {
            margin-top: 40px;
        }

        .singleMoney {
            margin-left: 50px;
            font-size: 46px;
            font-family: "楷体";
            color: red;
        }

        .photoInfo {
            margin-left: 80px;
            margin-top: 40px;
            font-size: 16px;
        }

        .qupiao {

            border: 1px aliceblue;
            width: 80px;
            height: 50px;
            text-align: center;
            margin-top: 20px;
            margin-left: 40px;
            line-height: 50px;
            background-color: #b9def0;

        }
        .myphone{
            margin-top: 38px;
        }

    </style>
    <title>订单详情</title>
</head>

<body>
<div>
    <img class="img-responsive" src="<%=request.getContextPath()%>/static/img/index/index001.jpg">
</div>
<%--<nav class="breadcrumb">--%>
<%--<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>--%>
<%--读者管理 <span class="c-gray en">&gt;</span> 读者列表 <a--%>
<%--class="btn btn-success radius r"--%>
<%--style="line-height: 1.6em; margin-top: 3px"--%>
<%--href="javascript:location.replace(location.href);" title="刷新"><i--%>
<%--class="Hui-iconfont">&#xe68f;</i></a>--%>
<%--</nav>--%>

<div class="mt-20">

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
                    <ul class="nav navbar-nav">
                        <li><a href="#">公告</a></li>
                        <li><a href="#">酒店</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">旅游 <span class="caret"></span></a>
                            <ul class="dropdown-menu" style="display: none;background-color: rgb(213, 255, 239)">
                                <li><a href="#">周边游</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">境内游</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">组团游</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">自驾游</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">更多</a></li>
                            </ul>
                        </li>
                        <li><a href="#">公告</a></li>
                        <li><a href="#">公告</a></li>
                        <li><a href="#">公告</a></li>
                        <li><a href="#">公告</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">登录</a></li>
                        <li><a href="#">注册</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <%--订单详情--%>
        <div style="height: 220px;border-top-style: solid;border-top:#F2F2F2">
            <div class="col-lg-9"
                 style="height: 200px;background-color: white;border-right-color: black;">
                <h2 style="margin-top:0px;margin-bottom: 0px;">订单详情</h2>
                <div class="col-lg-8">
                    <table class="tb_common dingdan">
                        <tbody>
                        <tr>
                            <th>weTrip订单号</th>
                            <td>${oders.orderNum}</td>
                        </tr>

                        <tr>
                            <th>预订日期</th>
                            <td>${oders.createTime}</td>
                        </tr>
                        <tr>
                            <th>支付类型</th>
                            <td>支付宝支付</td>
                        </tr>
                        <tr>
                            <th><strong>取票码</strong></th>
                            <td><strong>192782</strong></td>
                        </tr>
                        </tbody>
                    </table>

                </div>
                <div class="col-lg-4 sumMoney">
                    <strong>总金额</strong>

                    <div class="singleMoney">¥8000</div>
                </div>
            </div>
            <div class="col-lg-3" style="height: 200px;background-color: white;">
                <div class="paylogo" style="width: 200px;height: 200px;margin-top: 40px;margin-left: 60px">
                    <img  style="height: 100px;width: 100px;" src="<%=request.getContextPath()%>/static/img/pay01.jpg">
                    <p><strong>仅支持支付宝支付</strong></p>
                </div>
            </div>
        </div>

        <%--景点详情--%>
        <div class="scenicTop" style="height: 220px;border-top:#F2F2F2">
            <div class="col-lg-7 " style="height: 200px;background-color: white;">
                <h2 style="margin-top:0px;margin-bottom: 0px; color: blue;">景点信息</h2>
                <div>
                    <table class="tb_common dingdan">
                        <tbody>
                        <tr>
                            <th><strong>景点名称</strong></th>
                            <td>${scenic.scenicName}</td>
                        </tr>
                        <tr>
                            <th><strong>景点地址</strong></th>
                            <td>${scenic.address}</td>
                        </tr>
                        <tr>
                            <th><strong>景点描述</strong></th>
                            <td>${scenic.description}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-lg-5 " style="background-color: white">
                <div class="col-lg-5">
                    <div class="photoInfo">图片介绍</div>
                </div>
                <div class="col-lg-7">
                    <div><img style="width: 240px;height: 200px"
                              src="<%=request.getContextPath()%>/static/img/${picturePath}">
                    </div>
                </div>
            </div>
        </div>

        <div class="scenicTop" style="height: 160px;border-top:#F2F2F2">

            <div class="col-lg-12 " style="height: 150px;background-color: white;">
                <h2 style="margin-top:0px;margin-bottom: 0px;">取票方式</h2>
                <div class="col-lg-3 " style="height: 100px;">
                    <div class="qupiao">自取票
                    </div>
                </div>
                <div class="col-lg-9 " style="height: 30px">
                    <div class="myphone">
                        <tr>
                            <th>联系手机:</th>
                            <td>${phone}</td>
                        </tr>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--_footer 作为公共模版分离出去-->
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/static/lib/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

    <script type="text/javascript"
            src="<%=request.getContextPath()%>/static/lib/layer/2.4/layer.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/static/css/h-ui/js/H-ui.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/static/css/h-ui.admin/js/H-ui.admin.js"></script>
    <!--/_footer 作为公共模版分离出去-->

    <!--请在下方写此页面业务相关的脚本-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/static/lib/My97DatePicker/4.8/WdatePicker.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/static/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/static/lib/laypage/1.2/laypage.js"></script>
    <!--引入自定义的js文件-->
    <script src="<%=request.getContextPath()%>/static/js/main.js"></script>

</body>
</html>