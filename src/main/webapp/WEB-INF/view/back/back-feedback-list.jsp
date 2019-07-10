<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <%--<meta name="renderer" content="webkit|ie-comp|ie-stand">--%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/html5shiv.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/respond.min.js"></script>
    <![endif]-->


    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/style.css" />

    <!--[if IE 6]>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>旅客反馈</title>



</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span><a href="<%=request.getContextPath()%>/backFeedbackList" title="客户新反馈">客户新反馈</a> <span class="c-gray en">&gt;</span>反馈列表 <span class="c-gray en">&gt;</span><a href="<%=request.getContextPath()%>/backQuestion" title="常见问题">常见问题</a> <span class="c-gray en">&gt;</span>  <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">

    <div class="cl pd-5 bg-1 bk-gray mt-20">  <span class="r">共有数据：<strong>${count}</strong> 条</span> </div>
    <div class="mt-20">
        <table   class="table table-border table-bordered table-bg table-sort">
            <thead>
            <td> <a class="btn btn-primary radius" data-toggle="modal" href='#modal_add' > 反馈列表</a></td>
            <tr class="text-c">
                <th width="25"><input type="checkbox" name="" value=""></th>
                <th width="60">ID</th>
                <th width="60">反馈人:</th>
                <th width="100">反馈标题:</th>
                <th width="150">反馈内容:</th>
                <th width="150">反馈时间:</th>
                <th width="100">回复:</th>
                <th width="150">反馈时间:</th>
            </tr>
            </thead>
            <tbody>
           <c:forEach items="${selectList}" var="feedback">
            <tr class="text-c">
                <td><input name="" type="checkbox" value=""></td>
                <td>${feedback.feedbackId}</td>
                <td>${feedback.userName}</td>
                <td>${feedback.title}</td>
                <td>${feedback.content}</td>
                <td> <fmt:formatDate value="${feedback.feedbackTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${feedback.answer}</td>
                <td> <fmt:formatDate value="${feedback.answerTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>


            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
<!--_footer 作为公共模版分离出去-->
<%--它控制着分页--%>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/css/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/css/h-ui.admin/js/H-ui.admin.js"></script>

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">

    $('.table-sort').dataTable({
        "aaSorting": [[ 1, "desc" ]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable":false,"aTargets":[0,6]}// 制定列不参与排序
        ],
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Chinese.json"
        }
    });
</script>
</body>
</html>