﻿
<%@ page import="java.util.List" %>
<%@ page import="com.foo.wetrip.bean.TicketUtil" %>
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
	<title>门票销售情况</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span class="c-gray en">&gt;</span> 品牌管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<% long count = (long)request.getAttribute("count"); %>
	<%--<label>从当前数据中检索:<input type="search" class="input-text " aria-controls="DataTables_Table_0"></label>--%>
	<div class="cl pd-5 bg-1 bk-gray mt-20">  <span class="r">共有数据：<strong><%=count%></strong> 条</span> </div>
	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-sort">
			<thead>
			<tr class="text-c">
				<th width="25"><input type="checkbox" name="" value=""></th>
				<th width="100">ID</th>
				<th width="100">景区名称:</th>

				<th width="100">门票出售量:</th>
				<th width="100">操作</th>
			</tr>
			</thead>
			<tbody>
			<%
				List<TicketUtil> lists = (List<TicketUtil>) request.getAttribute("list");
				if (lists != null && lists.size() > 0) {
					for (TicketUtil list: lists) {
			%>
			<tr class="text-c">
				<td><input name="" type="checkbox" value=""></td>
				<td><%=list.getScenicId()%></td>
				<td><%=list.getScenicName()%></td>

				<td><%=list.getTotalCounts()%>&nbsp;张</td>
				<%--<td class="f-14 product-brand-manage"><a style="text-decoration:none" onClick="product_brand_edit('品牌编辑','codeing.html','1')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="active_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>--%>
				<td>
					<a href="<%=request.getContextPath()%>/detail-ticket?scenicId=<%=list.getScenicId()%>"  class="btn btn-info ">详情</a>
					<a href="<%=request.getContextPath()%>/haha?scenicId=<%=list.getScenicId()%>"  class="btn btn-warning ">走势图</a>
				</td>
			</tr>
			<%
					}
				}
			%>
			</tbody>
		</table>
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
            {"orderable":false,"aTargets":[0,4]}// 制定列不参与排序
        ],
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Chinese.json"
        }
    });
</script>
</body>
</html>