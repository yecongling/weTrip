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
            height: 500px;
            width: 100%;
        }

        #r-result, #r-result table {
            width: 100%;
        }
    </style>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=iSpqyU1seMSFcIpVQIKBI8OlXswZ73si"></script>
    <!-- <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script> -->
    <!--引入bootstrap的css文件-->
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <link rel="icon" href="<%=request.getContextPath()%>/static/img/index/logo.png">
    <title>根据起终点名称驾车导航</title>
</head>
<body>
<div class="container">
    <div id="driving_way">
        <input type="text" class="form-control" style="width:150px;margin-bottom:5px" id="start" placeholder="请输入出发地"/>
        <input type="text" class="form-control" style="width:150px;margin-bottom:5px" id="end" placeholder="请输入目的地"/>
        <select class="form-control" style="width:150px;margin-bottom:5px">
            <option value="0">最少时间</option>
            <option value="1">最短距离</option>
            <option value="2">避开高速</option>
        </select>
        <input type="button" class="btn btn-success" id="result" onclick="search()" value="查询"/>
        <a class="btn btn-success" href="javascript:history.go(-1)">返回</a>
    </div>
    <div id="allmap"></div>

    <div id="r-result"></div>
</div>
<!--引入支持jQuery的js文件-->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
</body>
</html>
<script type="text/javascript">
    function search() {// 百度地图API功能
        var map = new BMap.Map("allmap");
        var start = $('#start').val();
        var end = $('#end').val();
        map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
        map.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
        map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
        //三种驾车策略：最少时间，最短距离，避开高速
        var routePolicy = [BMAP_DRIVING_POLICY_LEAST_TIME, BMAP_DRIVING_POLICY_LEAST_DISTANCE, BMAP_DRIVING_POLICY_AVOID_HIGHWAYS];

        map.clearOverlays();
        var i = $("#driving_way select").val();
        search(start, end, routePolicy[i]);

        function search(start, end, route) {
            var driving = new BMap.DrivingRoute(map, {renderOptions: {map: map, autoViewport: true}, policy: route});
            driving.search(start, end);
        }

        var output = "从" + start + "到" + end + "驾车需要";
        var searchComplete = function (results) {
            if (transit.getStatus() != BMAP_STATUS_SUCCESS) {
                return;
            }
            var plan = results.getPlan(0);
            output += plan.getDuration(true) + "\n";                //获取时间
            output += "总路程为：";
            output += plan.getDistance(true) + "\n";             //获取距离
        }
        var transit = new BMap.DrivingRoute(map, {
            renderOptions: {map: map},
            onSearchComplete: searchComplete,
            onPolylinesSet: function () {
                setTimeout(function () {
                    alert(output)
                }, "1000");
            }
        });
        transit.search(start, end);
    }

</script>