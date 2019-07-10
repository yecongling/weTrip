<%@ page import="com.foo.wetrip.bean.Question" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %><!DOCTYPE HTML>
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
    <title>常见问题回答</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 常见问题 <span class="c-gray en">&gt;</span> <a href="<%=request.getContextPath()%>/backFeedback" title="客户新反馈">客户新反馈</a> <span class="c-gray en">&gt;</span><a href="<%=request.getContextPath()%>/backFeedbackList" title="反馈">反馈列表</a> <span class="c-gray en">&gt;</span> <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">

    <div class="cl pd-5 bg-1 bk-gray mt-20">  <span class="r">共有数据：<strong>${count}</strong> 条</span> </div>
        <div class="mt-20">
        <table id="question"  class="table table-border table-bordered table-bg table-sort">
            <thead>
            <td> <a class="btn btn-primary radius" data-toggle="modal" href='#modal_add' > 新增问题</a></td>
            <tr class="text-c">
                <th width="25"><input type="checkbox" name="" value=""></th>
                <th  width="60">ID</th>
                <th width="100">问题:</th>
                <th width="150">回答:</th>
                <th width="100">操作</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<Question> allQuestion = (List<Question>) request.getAttribute("questions");
                if (allQuestion != null && allQuestion.size() > 0) {
                    for (Question question: allQuestion) {
            %>
            <tr class="text-c">
                <td><input name="" type="checkbox" value=""></td>
                <td  ><%=question.getQuestionId()%></td>
                <td><%=question.getQuestionTitle()%></td>
                <td><%=question.getQuestionContent()%></td>
                <td class="td-manage"><a  title="编辑" data-id="<%=question.getQuestionId()%>" class="ml-5 btn-edit"
                 style="text-decoration: none" data-toggle="modal" data-target="#modal_edit"> <i class="Hui-iconfont">&#xe6df;</i></a>
                    <a data-id="<%=question.getQuestionId()%>" style="text-decoration:none" class="ml-5" onclick="deletea(<%=question.getQuestionId()%>)"   title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
                </td>
            </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </div>
        <!-- 添加问题 -->
        <div class="modal fade" id="modal_add">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-hidden="true">&times;</button>
                        <h4 class="modal-title">添加题目</h4>
                    </div>
                    <div class="modal-body">
                        <form id="form_add" method="post" role="form" action="">
                            <div class="form">
                                <label class="form-label col-xs-4 col-sm-3" >问题</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input type="text" class="input-text" name="questionTitle">
                                </div>
                                <label class="form-label col-xs-4 col-sm-3" >回答</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input type="text" class="input-text" name="questionContent">
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

        <!-- 编辑读者类型-->
        <div class="modal fade " id="modal_edit">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-hidden="true">&times;</button>
                        <h4 class="modal-title">编辑问题</h4>
                    </div>
                    <div class="modal-body">
                        <form id="form_edit"  role="form">
                            <input hidden="hidden" type="text" class="input-text" name="questionId">
                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">问题：</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input type="text" class="input-text" name="questionTitle">
                                </div>
                            </div>
                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">回答：</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input type="text" class="input-text" name="questionContent">
                                </div>
                            </div>
                            <div class="form-group">
                                <button id="question_change" type="submit"
                                        class="btn btn-primary">保 存</button>
                                <button type="button" class="btn btn-default"
                                        data-dismiss="modal">关闭</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- 模态框(编辑) end -->

</div>

<!--_footer 作为公共模版分离出去-->
<%--它控制着分页--%>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/css/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/css/h-ui.admin/js/H-ui.admin.js"></script>

<!--请在下方写此页面业务相关的脚本-->

<script type="text/javascript" src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>

<script>
    // 处理编辑
    $("#question").on("click", ".btn-edit", function() {
            var questionId = this.getAttribute("data-id");
            $.ajax({
                url : "/selectQuestion",
                type : "get",
                data : {"questionId" : questionId},
                dataType : "json",
                success : function(resp) {
                    $("#form_edit [name='questionId']").val(
                        resp.questionId);
                    $("#form_edit [name='questionTitle']").val(
                        resp.questionTitle);
                    $("#form_edit [name='questionContent']").val(
                        resp.questionContent);
                }
            });
        });

    // 保存修改
    $("#question_change").click(function() {
        var data = $("#form_edit").serialize();
        $.ajax({
            url : "/editQuestion",
            type : "post",
            data : data,
            dataType : "json",
            success : function(resp) {
                // 隐藏模态框
                $("#modal_edit").modal("hide");
                window.location.reload();
            }
        });
    });
</script>


<script type="text/javascript">
    // 保存新增
    $("#question_save").click(function() {
        $.ajax({
            url : "/insertQuestion",
            type : "post",
            data : $("#form_add").serialize(),
            dataType : "json",
            success : function(resp) {
                location.replace(location);
                // 隐藏模态框
                $("#modal_add").modal("hide");
            }
        });
    });
    //删除
   function deletea(a){
        alert("确定要删除吗?");
        var questionId = a;
        $.ajax({
            type : "post",
            url : "/deleteQuestion",
            data : {"questionId":a},
            dataType : "json",
            success : function(resp) {
                location.replace(location);
            }
        });
    };

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
