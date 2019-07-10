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


    <title>全部订单</title>
</head>

<body>
<div>
    <%--<img class="img-responsive" src="<%=request.getContextPath()%>/static/img/index/index001.jpg">--%>
</div>

<div class="mt-20">

    <div class="container">
        <table
                class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
            <tr class="text-c">
                <th width="40"><input type="checkbox" name="" value="">All</th>
                <th width="80">订单编号</th>
                <th width="80">支付宝交易号</th>
                <th width="60">交易金额</th>
                <th width="80">支付交易时间</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="flow">
                <tr class="text-c">
                    <td><input type="checkbox" value="1" name=""></td>
                    <td>${flow.orderNum}</td>
                    <td>${flow.flowNum}</td>
                    <td>${flow.tradePrice}</td>
                    <td>${flow.createTime}</td>
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
                    "aTargets": [0, 3]
                } // 制定列不参与排序
            ]
        });

    });

</script>
</body>
</html>