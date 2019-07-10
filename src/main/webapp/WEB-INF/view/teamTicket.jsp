<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>团队订票咨询</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/kuCity.css">
    <style>
        .base-bd {
            min-width: 980px;
            max-width: 1180px;
            margin: 0 auto;
        }

        .side-right {
            float: right;
            width: 300px;
            position: relative;
            top: 50px;

        }

        .side-left {
            overflow: hidden;
            margin-right: 340px;
            padding-bottom: 60px;
        }

        .side-left h2.tit {
            font-size: 36px;
            font-weight: 600;
            line-height: 50px;
            margin-top: 10px;
        }

        .book-info {
            margin-top: 20px;
            background: #F7F8FA;
            padding: 20px;
            color: #152935;
        }

        .book-list li.fl,
        .book-list li.fr {
            width: 49%;
            height: 120px;

        }

        .fl {
            float: left;
        }

        .fr {
            float: right;
        }

        label {
            display: block;
        }

        button {
            width: 550px;
            position: relative;
            top: 50px;
        }

        em {
            color: red;
        }

        label {
            font-weight: 150;
            
        }
        span{
            color: red;
        }
    </style>

<body>
    <div class="base-bd">
        <div class="crumbs">
            您的位置:
            <a href="file:///D:/weTrips/assets/test/TicketSearch.html">国内火车票</a>
            >团队票申请入口
        </div>
        <div class="side-right">
            <img src="<%=request.getContextPath()%>/static/img/tu.png" alt="">
        </div>
        <div class="side-left">
            <h2 class="tit">团队票申请入口</h2>
            <div class="book-info">
                <h4 class="tit">团队票特色</h4>
                <p>免去您在线填写乘客信息的烦恼</p>
                <p>免去您在购买多人票时，提交一半订单后，余票不足的烦恼</p>
                <p>提供一对一的全程VIP服务</p>
                <p>提供车票的各种订制需求</p>
                <h4 class="tit mt20"> 团队票预订流程</h4>
                <p>1. 提交需求询价(免费) → 2. 沟通确认行程 → 3. 支付、出票</p>
                <h4 class="tit mt20">预订须知</h4>
                <p><strong>人数要求:</strong>10人以上可订</p>
                <p><strong>乘客名单:</strong>请尽早准备好乘车人姓名、证件号码，以免误时导致没票</p>
                <p><strong>可预订期: </strong>发车前5-28天</p>
                <p><strong>关于车票:</strong>车票是打印出来的纸质车票，出票成功后，我们会为您发送快递，因此不提供退改签服务，您可收到车票后，在发车前携带车票以及乘客购票时的证件原件或者复印件前往火车站窗口进行退改签
                </p>
                <p><strong>支付方式:</strong>暂时只支持支付宝线下支付</p>
                <p><strong>服务时间:</strong>工作日9:00-18:00（周末、节假日休息）</p>
            </div>
            <h3 class="tit">请填写完整以下信息，我们将尽快联系您并报价(*号为必填项)</h3>
            <br>
            <form  method="post">
                <ul class="book-list">
                    <li class="fl">
                        <label>联系人姓名<em>*</em></label>
                        <input name="linkName" type="text">
                        <span class="warn-txt" style="display:none;">请输入联系人</span>
                    </li>
                    <li class="fr">
                        <label>联系人手机号<em>*</em></label>
                        <input name="linkPhone" type="text">
                        <span class="warn-txt" style="display:none;">请输入正确的手机号</span>
                    </li>

                    <li class="fl">
                        <label>出发城市<em>*</em></label>
                        <input type="text" name="ticketFrom" class="search3 ">
                        <span class="warn-txt" style="display:none;">请输入出发城市</span>
                    </li>
                    <li class="fr">
                        <label>到达城市<em>*</em></label>
                        <input type="text" name="ticketTo" class="search3 ">
                        <span class="warn-txt" style="display:none;">请输入到达城市</span>
                    </li>

                    <li class="fl">
                        <label>车次<em>*</em></label>
                        <input name="trainNum" type="text">
                        <span class="warn-txt" style="display:none;">请输入车次</span>
                    </li>
                    <li class="fr">
                        <label>坐席<em>*</em></label>
                        <input name="trainSeat" type="text">
                        <span class="warn-txt" style="display:none;">请输入坐席</span>
                    </li>
                    <li class="fl">
                        <label>预计出发时间<em>*</em></label>
                        <input name="goTime" style="width:180px;" type="date">
                        <span class="warn-txt" style="display:none;">请输入预计出发时间</span>
                    </li>
                    <li class="fr">
                        <label>预计出行人数<em>*</em></label>
                        <input name="goPerson" type="text">
                        <span class="warn-txt" style="display:none;">请输入预计出行人数</span>
                    </li>
                </ul>

                <button type="submit" class="btn btn-primary" id="btn">提交咨询</button>
            </form>
        </div>
    </div>
    <script src="http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/kuCity.js"></script>
    <script>
        $('.search3').kuCity();
        $('#btn').on("click", function () {
            var m = document.getElementsByTagName("input");
            var s=  document.getElementsByTagName("span")
            for (var i = 0; i < m.length; i++) {
                if (m[i].value == "" || m[i].value == null) {
                    s[i].style.display="block";
                    return false;
                }
            }
            $.ajax({
                url:"<%=request.getContextPath()%>/saveTeamTicket",
                type:"post",
                data:$("form").serialize(),
                success:function (resp) {
                    alert("提交成功!,请等待短信通知!");
                }
            });
        });


    </script>


    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>

</html>