<%@page contentType="text/html;charset=utf-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <style type="text/css">
        body, html {
            width: 100%;
            height: 100%;
            margin: 0;
            font-family: "微软雅黑";
        }

        #allmap {
            width: 100%;
            height: 500px;
        }

        p {
            margin-left: 5px;
            font-size: 14px;
        }
    </style>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=iSpqyU1seMSFcIpVQIKBI8OlXswZ73si"></script>
    <title>根据关键字本地搜索</title>
    <!--引入bootstrap的css文件-->
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <link rel="icon" href="<%=request.getContextPath()%>/static/img/index/logo.png">
</head>
<body>
<div class="container">
    <input type="text" class="form-control" id="address" style="width:150px;margin-bottom:5px" value="${address}"
           placeholder="搜索地址" disabled/>
    <button type="submit" class="btn btn-success" onclick="mapSearch()">搜索</button>
    <a href="<%=request.getContextPath()%>/distance" class="btn btn-success">查看出发路线</a>
    <a class="btn btn-success" href="javascript:history.go(-1)">返回</a>
    <div id="allmap"></div>
</div>
<!--引入支持jQuery的js文件-->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function mapSearch() {
        // 百度地图API功能
        var address = $("#address").val();
        var map = new BMap.Map("allmap");
        map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
        map.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
        map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
        var local = new BMap.LocalSearch(map, {
            renderOptions: {map: map}
        });
        local.search(address);
    }
</script>
</body>
</html>
