<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/userComments.css">
    <link href="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
          rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery-1.12.4.min.js"></script>
    <script src="<%=request.getContextPath() %>/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
<form class="form-horizontal" action="<%=request.getContextPath()%>/saveComments" method="post">
    <div class="container">
        <div class="row" style="padding: 20px 0">
            <h2>请您对此次服务做出评价</h2>
        </div>
        <input type="hidden" name="scenicId" value="${scenicId}">
        <div class="star">
            <label class="star-item" for="item01" title="垃圾"></label>
            <input type="radio" name="score" value="1" id="item01" checked/>
            <label class="star-item" for="item02" title="很差"></label>
            <input type="radio" name="score" value="2" id="item02"/>
            <label class="star-item" for="item03" title="一般"></label>
            <input type="radio" name="score" value="3" id="item03"/>
            <label class="star-item" for="item04" title="很好"></label>
            <input type="radio" name="score" value="4" id="item04"/>
            <label class="star-item" for="item05" title="完美"></label>
            <input type="radio" name="score" value="5" id="item05"/>
        </div>
        <div class="form-group">
            <label>评论内容</label>
            <textarea class="form-control " id="reportItem" rows="7" style="width: 50%" name="content"></textarea>
        </div>
        <button type="submit" style="height: 35px" class="btn btn-primary" onclick="aa()">提交</button>
        <p id="in" style="color: red;display: inline;visibility: hidden">请输入评论内容!</p>
    </div>
</form>
</body>
</html>
<script>
    //去掉左边空格
    function ltrim(s) {
        return s.replace(/(^\s*)/g, '');
    }

    //去掉右边空格
    function rtrim(s) {
        return s.replace(/(\s*$)/g, '');
    }

    //去掉左右空格
    function trim(s) {
        return rtrim(ltrim(s));
    }

    function aa() {
        var report = document.getElementById("reportItem").value;
        var reportItem = trim(report);
        if (reportItem == '' || reportItem == null) {
            document.getElementById("in").style.visibility="visible";
            document.getElementById("reportItem").focus();
            return;

        }
    }

</script>


