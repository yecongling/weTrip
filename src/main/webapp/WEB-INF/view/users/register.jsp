<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/logo01.png">
</head>
<script src="<%=request.getContextPath()%>/static/js/jquery-3.3.1.js"></script>


<script>
    $(function() {
        $("input[name='userName']").blur(function() { //失去焦点
            var namestr = $(this).val();
            var regstr = /^[\u4e00-\u9fa5]{2,4}$/;
            if (!regstr.test(namestr)) {
                $(this).parent().next().html("用户名必须是2-4个汉字").css("color", "red");
                return false;
            }
            return true;
        });
        $("input[name = 'userName']").focus(function() { //获取焦点
            $(this).val("");
            $(this).parent().next().html("");
        });
        $("input[name='password']").blur(function() {
            var pwdstr = $(this).val();
            var regstr = /^\w{6}$/;
            if (!regstr.test(pwdstr)) {
                $(this).parent().next().html("密码必须是6位数字字母下划线").css("color", "red");
                return false;
            }
            return true;
        });
        $("input[name='password']").focus(function() {
            $(this).parent().next().html("");
        });
        $("input[name='phoneNum']").blur(function() {
            var phoneNumstr = $(this).val();
            var regstr = /^1[34578]\d{9}$/;
            if (!regstr.test(phoneNumstr)) {
                $(this).parent().next().html("电话号码格式不正确").css("color", "red");
                return false;
            }
            return true;
        });
        $("input[name='phoneNum']").focus(function() {
            $(this).parent().next().html("");
        });

    });


    function send() {
        var phoneNum = document.getElementById("phoneNum");
        var number = phoneNum.value;
        $.ajax({
            url: "<%=request.getContextPath()%>/sendMe.action?phoneNum",
            type: "Get",
            dataType: "json",
            data: {"phoneNum":number},
            success:function(){

            }
        });
    };
</script>
<style>
    body {
        background: url(<%=request.getContextPath()%>/static/img/background.jpg);
        background-repeat: no-repeat;
        background-size: 100%100%;
        background-attachment: fixed;
        font-size: 14px;
    }

    .title {
        font-size: 28px;
        text-align: center;
        margin-top: 160px;
        font-family: "楷体";
    }

    #home {
        width: 500px;
        height: 250px;
        margin: auto;
        margin-top: 60px;
        margin-left: 400px;
    }

    #head {
        height: 135px;
    }

    #foot {
        text-align: center;
    }

    .dl1 {
        clear: both;
        padding-left: 10px;
    }

    .dl1 dt {
        float: left;
        height: 30px;
        width: 70px;
        line-height: 30px;
    }

    .dl1 dd {
        float: left;
        height: 30px;
        line-height: 30px;
    }

    #btn_sub {
        background-image: url(<%=request.getContextPath()%>/static/img/register.jpg);
        width: 80px;
        height: 34px;
        margin-top: 10px;
    }
</style>

<body>
<div class="title">用户注册</div>
<div id="home">
    <div id="head">

        <form action="<%=request.getContextPath()%>/register" method="post">

            <dl class="dl1">
                <dt>用户名 : </dt>
                <dd class="dd1"><input type="text" value="输入用户名" name="userName" /></dd>
                <dd></dd>
            </dl>
            <dl class="dl1">
                <dt>手机号码 : </dt>
                <dd class="dd1"><input type="text" id="phoneNum" name="phoneNum" value="${phoneNum }"/></dd>
                <input type="button" value="发送验证码" id="button" onclick="send()"><br>
                <dd>${flag }${flag1 }</dd>
            </dl>
            <dl class="dl1">
                <dt>验证码: </dt>
                <dd class="dd1"> <input type="text" name="code"></dd>
                <dd></dd>
            </dl>
            <dl class="dl1">
                <dt>用户密码 : </dt>
                <dd class="dd1"><input type="password" name="password" /></dd>
                <dd></dd>
            </dl>

            <dl class="dl1">
                <dt>用户邮箱 : </dt>
                <dd><input type="text" name="email" /></dd>
                <dd>xxx@xx.com(邮箱可不填)</dd>
            </dl>
            <div id="foot">
                <input type="submit"  value="注册" id="btn_sub" />
            </div>
        </form>
    </div>

</div>
</body>

</html>