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
    <title>我要反馈</title>
    <style>
        .big-son{
            clear: left;
            width: 900px;
            font-size: 20px;
            background: rgb(211, 199, 199);
            line-height: 50px;
            padding-left: 20px;
            margin-top: 50px;
        }
        .little-son{
            padding: 50px;
            margin-left: 100px;
        }
        .kuang{
            width: 500px;
        }
    </style>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> <a href="<%=request.getContextPath()%>/viewFeedback" title="">反馈列表</a> <span class="c-gray en">&gt;</span> <a href="<%=request.getContextPath()%>/viewQuestion" title="">常见问题问答</a><span class="c-gray en">&gt;</span> 我要反馈  <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="container">
    <div class="container" >
        <div class="big-son" >
            <div >
                <h4 class="modal-title">我要反馈</h4>
            </div>
            <div class="little-son">
                <form id="form_add" method="post" role="form" action="">

                    <div >
                       <div> <label  >标题</label></div>
                        <div class="form-group" >
                             <textarea type="text"  name="title" class="kuang"></textarea>
                        </div>
                      <div> <label  >反馈内容</label></div>
                    <div class="form-group" >
                        <textarea type="text"  name="content" class="kuang"></textarea>
                        </div>
                    </div>
                    <div class="form-group" >
                        <button id="feedback_save" type="button" class="btn btn-primary">保
                            存</button>
                        <button type="button" class="btn btn-default"
                                data-dismiss="modal">关闭</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
<%--它控制着分页--%>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/css/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/css/h-ui.admin/js/H-ui.admin.js"></script>

<!--请在下方写此页面业务相关的脚本-->

<script type="text/javascript" src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
    // 保存新增
    $("#feedback_save").click(function() {
        $.ajax({
            url : "<%=request.getContextPath()%>/insertFeedback",
            type : "post",
            data : $("#form_add").serialize(),
            dataType : "json",
            success : function(resp) {
                window.location.href = "<%=request.getContextPath()%>/viewFeedback";
            }
        });
    });
</script>
<script>
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
