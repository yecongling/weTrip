<%@ page import="com.foo.wetrip.bean.Question" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/html5shiv.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="icon" href="<%=request.getContextPath()%>/static/img/index/logo.png">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/h-ui.admin/css/style.css" />

    <!--[if IE 6]>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>常见问题问答</title>
    <style>
        .depart_detail {
            border-bottom: papayawhip 1px solid;
            width: 900px;
        }
        .depart {
            border-bottom: papayawhip 1px solid;
            width: 400px;
        }
        .aaa{
            float: left;
        }
        ul{
            /*width: 1000px;*/
            /*padding: 30px;*/
            /*margin-bottom: 20px;*/
        }
        li{
            width: 400px;
            color: deepskyblue;
            padding-left: 20px;
            margin-bottom: 5px;
        }
        .question_list1{
            border: 1px orange solid;
            width: 900px;
            margin-top: 20px;
            float: left;
            margin-bottom: 20px;
            padding: 10px;
        }
        .question_list2{

            margin-top: 30px;
            width: 900px;
        }
        p{
            padding-left: 20px;
        }
        .big{
            margin-top: 50px;
            position: absolute;
            left: 300px;
        }
        .little{
            margin-top: 30px;
        }
        .biaoti {
            clear: left;
            width: 900px;
            font-size: 20px;
            background: rgb(211, 199, 199);

            line-height: 50px;
            padding-left: 20px;
        }
        .foot {
            border: 1px white solid;
            width: 900px;
            padding-left: 20px;
            margin-top: 20px;
            margin-bottom: 100px;
        }
    </style>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> <a href="<%=request.getContextPath()%>/index">首页</a> <span class="c-gray en">&gt;</span> <a href="<%=request.getContextPath()%>/feedback" title="">反馈列表</a> <span class="c-gray en">&gt;</span> 常见问题问答<span class="c-gray en">&gt;</span> <a href="<%=request.getContextPath()%>/feedback" title="反馈">我要反馈</a>  <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="big">
    <div class="biaoti">常见问答</div>
            <div class="question_list1">
                <ul >
                    <%
                        List<Question> questions = (List<Question>) request.getAttribute("question");
                        if (questions != null && questions.size() > 0) {
                            for (Question question: questions) {
                    %>
                   <div class="aaa"> <li class="depart"><a href="#aaa<%=question.getQuestionId()%>"><%=question.getQuestionId()%>.&nbsp;&nbsp;<%=question.getQuestionTitle()%></a></li></div>

                    <%
                            }
                        }
                    %>
                </ul>
            </div>

            <div class="question_list2">
                    <%
                        List<Question> allQuestion = (List<Question>) request.getAttribute("question");
                        if (allQuestion != null && allQuestion.size() > 0) {
                            for (Question question: allQuestion) {
                    %>
                <div class="little">
                <p id="aaa<%=question.getQuestionId()%>"> <b><%=question.getQuestionId()%>. <%=question.getQuestionTitle()%></b></p>
               <p> &nbsp;&nbsp;答:&nbsp<%=question.getQuestionContent()%></p>
                <div class="depart_detail"></div>
                </div>
                <%
                            }
                        }
                    %>
            </div>
    <div class="foot">
        <h5 class="copyright">
            Copyright©2019, weTrip.com. All rights reserved. | ICP证：川00-00000001</h5>
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
