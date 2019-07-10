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


    <title>我的收藏</title>
</head>

<body>
<div>
    <img class="img-responsive" src="<%=request.getContextPath()%>/static/img/index/index001.jpg">
</div>

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
                    <a class="navbar-brand" href="<%=request.getContextPath()%>/index">首页</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">公告</a></li>
                        <%--<li><a href="#">酒店</a></li>--%>
                        <li class="dropdown" id="dropdown01">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">旅游 <span class="caret"></span></a>
                            <ul class="dropdown-menu" id="dropdown-menu01" style="display: none;background-color: rgb(213, 255, 239)">
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
                        <li><a href="#">车票</a></li>
                        <%--<li><a href="#">公告</a></li>--%>
                        <%--<li><a href="#">公告</a></li>--%>
                        <%--<li><a href="#">公告</a></li>--%>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown" id="dropdown02">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">个人中心 <span class="caret"></span></a>
                            <ul class="dropdown-menu" id="dropdown-menu02" style="display: none;background-color: rgb(213, 255, 239)">
                                <li><a href="#">个人信息</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="<%=request.getContextPath()%>/myOrder">我的订单</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">我的收藏</a></li>
                            </ul>
                        </li>
                        <%--<li><a href="#">登录</a></li>--%>
                        <%--<li><a href="#">注册</a></li>--%>
                    </ul>
                </div>
            </div>
        </nav>
        <table
                class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
            <tr class="text-c">
                <th width="40"><input type="checkbox" name="" value="">全选</th>
                <th width="80">收藏编号</th>
                <th width="80">景点名称</th>
                <th width="80">目的地</th>
                <th width="60">描述</th>
                <th width="90">价格/人</th>
                <th width="80">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${favoriteList}" var="list">
                <tr class="text-c">
                    <td><input type="checkbox" value="1" name=""></td>
                    <td>${list.collectionId}</td>
                    <td>${list.scenicName}</td>
                    <td>${list.address}</td>
                    <td>${list.description}</td>
                    <td>${list.price}</td>
                    <th>
                        <a href="<%=request.getContextPath()%>/cancelFavorite/${list.collectionId}"  aria-hidden="true">
                            <button class="btn btn-danger btn-sm">
                                取消收藏
                            </button>
                        </a>
                        <a href="<%=request.getContextPath()%>/scenic?scenicId=${scenicId}"  aria-hidden="true">
                            查看详情
                        </a>
                    </th>
                </tr>
            </c:forEach>
            </tbody>
        </table>
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
<%--<script src="<%=request.getContextPath()%>/static/js/rollOfIndex.js"></script>--%>
<script type="text/javascript">
    $(function () {
        $('.table-sort').dataTable({
            "aaSorting": [
                [1, "desc"]
            ], //默认第几个排序
            "bStateSave": true, //状态保存
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                {
                    "orderable": false,
                    "aTargets": [0, 6]
                } // 制定列不参与排序
            ]
        });

    });

</script>
</body>
</html>