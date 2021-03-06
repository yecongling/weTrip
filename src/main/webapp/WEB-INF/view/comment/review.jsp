<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" language="java"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>用户评论</title>
    <link rel="icon" href="<%=request.getContextPath()%>/static/img/index/logo.png">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/review.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />


</head>

<body style="background:aliceblue">
    <!--标题-->
    <div id="title">
        <h2 style=" position: relative;
        top: 70px;
        ">用户点评</h2>
        <div id="log">
            <img class="img-circle" src="<%=request.getContextPath()%>/static/img/logo.png" height="150px" width="150px" alt=""/>
        </div>
    </div>
    <!-- 星级评分 -->
    <div id="star">
        <a href="<%=request.getContextPath()%>/index">回到首页</a>
        <!--评分加星星-->
        <div id="score">
            <p>评分</p>
            <p style="font-size:3em;display: inline-block">${result.average}</p><span>分</span>

        </div>
        <!--好评率-->
        <div id="highPraise">
            <p>好评率</p>
            <p style="font-size:3em;display: inline-block">${result.rate}</p><span>%</span>
        </div>
        <!--景点详情-->

        <div id="describe">
            <h4 style="display:inline;">景点名称:</h4>
            <h2 style="display:inline;">${scenic.scenicName}</h2>
            <br>
            <br>
            <h4 style="display:inline;">景点描述:</h4>
            <h4 style="display:inline;">${scenic.description}</h4>
        </div>
        <!--景点图片-->
        <div style="background: #0dff72;width: 150px;height: 150px;position: relative;left: 1000px;top: 15px;">
            <img style="height: 150px;width: 150px;" src="<%=request.getContextPath()%>/static/img/${picture.picturePath}">
        </div>
    </div>
    <!-- 按钮 -->
    <div id="checkbox">
        <form action="radio_submit" method="get" accept-charset="utf-8" >
            请选择查看方式：

            <label>
                <input type="radio" name="commentName" id="r1" value="0,${scenic.scenicId}">全部</label>
            <label>
                <input type="radio" name="commentName" id="r2" value="5,${scenic.scenicId}">好评</label>
            <label>
                <input type="radio" name="commentName" id="r3"value="1,${scenic.scenicId}">差评</label>
        </form>

    </div>
    <c:forEach items="${CAUList}" var="list">
    <!-- 评论框 -->
    <div id="reviewScope">
        <div id="user">
            <div id="userHead"><img height="100px" width="100px" src="<%=request.getContextPath()%>/static/img/userHead.jpg" alt=""/></div>
            <div style="position: relative;left: 60px;top: 30px;">
               <span>${list.userName}</span><span style="color: red">&nbsp;&nbsp;&nbsp;${list.score}分</span>
                <p>${list.phoneNum}</p>

            </div>
        </div>
        <div id="message">
            <div id="messageLeave">${list.content}</div>
            <p id="messageTime">评论时间:${list.commentTime}</p>
        </div>
    </div>
        <br/>
    </c:forEach>

    <script>
        window.onload = function() {
            var allNode = document.getElementsByTagName("input");
            for (var i = 0; i < allNode.length; i++) {
                allNode[i].addEventListener('click', function() {
                       var a=this.value;
                   window.location = "<%=request.getContextPath()%>/commentsType?commentsType="+this.value;
                }, false);
            }
        };
    </script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery-3.3.1.js" />

    <script type="text/javascript" src="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/js/bootstrap.min.js" />

</body>

</html>
