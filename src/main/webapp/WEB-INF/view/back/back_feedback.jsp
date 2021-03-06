
<%@ page import="java.util.List" %>
<%@ page import="com.foo.wetrip.bean.Feedback" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


    <%--它控制着无表格--%>
    <%--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap.min.css"/>--%>


    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/style.css" />

    <!--[if IE 6]>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>客户新反馈</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span><a href="<%=request.getContextPath()%>/backFeedbackList" title="反馈列表">反馈列表</a> <span class="c-gray en">&gt;</span><a href="<%=request.getContextPath()%>/backQuestion" title="常见问题">常见问题</a> <span class="c-gray en">&gt;</span>客户新反馈 <span class="c-gray en">&gt;</span>  <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="cl pd-5 bg-1 bk-gray mt-20">  <span class="r">共有数据：<strong>${count}</strong> 条</span> </div>
        <c:if test="${count ==0}">
            <p><h3>暂未收到新的客户反馈</h3></p>
        </c:if>
    <div  <c:if test="${count ==0}"> hidden="hidden"</c:if> >
        <%--<table class="table table-border table-bordered table-bg table-sort">--%>
            <%--<thead>--%>

            <%--<tr class="text-c">--%>
                <%--<th width="25"><input type="checkbox" ></th>--%>
                <%--&lt;%&ndash;<th width="100">ID</th>&ndash;%&gt;--%>
                <%--<th width="100">标题:</th>--%>
                <%--<th width="100">问题:</th>--%>
                <%--<th width="100">操作</th>--%>
            <%--</tr>--%>
            <%--</thead>--%>
            <%--<tbody>--%>
            <%--<%--%>
                <%--List<Feedback> allFeedback = (List<Feedback>) request.getAttribute("feedbacks");--%>
                <%--if (allFeedback != null && allFeedback.size() > 0) {--%>
                    <%--for (Feedback feedback: allFeedback) {--%>
            <%--%>--%>

            <%--<tr class="text-c">--%>
                <%--<td><input  type="checkbox"></td>--%>
                <%--<td hidden="hidden"><%=feedback.getFeedbackId()%></td>--%>
                <%--<td><%=feedback.getTitle()%></td>--%>
                <%--<td><%=feedback.getContent()%></td>--%>
                <%--<td >--%>
                   <%--&lt;%&ndash; <a title="编辑" data-id="<%=feedback.getFeedbackId()%>" class="ml-5 btn-edit"--%>
                        <%--style="text-decoration: none" data-toggle="modal" data-target="#modal_add"> 回复</a>&ndash;%&gt;--%>
                    <%--<a title="编辑" data-id="<%=feedback.getFeedbackId()%>" id="huifu">回复</a>--%>
                <%--</td>--%>

            <%--</tr>--%>
            <%--<%--%>
                    <%--}--%>
                <%--}--%>
            <%--%>--%>


            <table class="table table-border table-bordered table-bg table-sort">
                <thead>
                <tr class="text-c">
                    <th width="25"><input type="checkbox" ></th>
                    <%--<th width="100">ID</th>--%>
                    <th width="100">标题:</th>
                    <th width="100">问题:</th>
                    <th width="100">操作</th>
                </tr>
                </thead>
                <tbody>
            <c:forEach items="${feedbacks}" var="feedback" >
                <c:if test="${feedback !=null}" var="flag" >
                    <tr class="text-c">
                        <td><input  type="checkbox"></td>
                        <td hidden="hidden">${feedback.feedbackId}</td>
                        <td>${feedback.title}</td>
                        <td>${feedback.content}</td>
                        <td >
                                <%-- <a title="编辑" data-id="<%=feedback.getFeedbackId()%>" class="ml-5 btn-edit"
                                     style="text-decoration: none" data-toggle="modal" data-target="#modal_add"> 回复</a>--%>
                            <a title="编辑" data-id="${feedback.feedbackId}" id="huifu">回复</a>
                        </td>

                    </tr>
                </c:if>
            </c:forEach>
            </tbody>
        </table>

    </div>
</div>
<!-- 修改 -->
<div class="modal fade" id="modal_add">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title">回复客户反馈</h4>
            </div>
            <div class="modal-body">
                <form id="form_add"  role="form" >
                    <div class="form">
                        <input hidden="hidden"   type="text" class="input-text" name="feedbackId" id="input-text">
                        <label class="form-label col-xs-4 col-sm-3">回复：</label>
                        <div class="formControls col-xs-8 col-sm-9">
                            <input type="text" class="input-text" name="answer">
                        </div>
                    </div>
                    <div class="form">
                        <button id="question_save" type="button" class="btn btn-primary">保
                            存</button>
                        <button type="button" class="btn btn-default"
                                data-dismiss="modal">关闭</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
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

    $("#huifu").on("click", function() {
        var id = $(this).attr("data-id");
        $('#input-text').val(id);
        $('#modal_add').modal('toggle');
    });
    // 保存新增
    $("#question_save").click(function() {
        var data = $("#form_add").serialize();
        $.ajax({
            url : "/insertAnswer",
            type : "post",
            data : data,
            dataType : "json",
            success : function(resp) {
                location.replace(location);
                // 隐藏模态框
                $("#modal_add").modal("hide");
            }
        });
    });



</script>

<script type="text/javascript">

    $('.table-sort').dataTable({
        "aaSorting": [[ 1, "desc" ]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable":false,"aTargets":[0,4]}// 制定列不参与排序
        ],
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Chinese.json"
        }
    });
</script>
</body>
</html>