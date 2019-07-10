<%@page contentType="text/html;charset=utf-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <title>旅游详情页面</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="icon" href="<%=request.getContextPath()%>/static/img/index/logo.png">
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
    <style type="text/css">
        body, html {
            width: 100%;
            height: 100%;
            margin: 0;
            font-family: "微软雅黑";
        }
        p {
            margin-left: 5px;
            font-size: 14px;
        }
    </style>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/index.js"></script>
<script src="<%=request.getContextPath()%>/static/js/global.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/js/head.js" type="text/javascript"></script>

<link href="<%=request.getContextPath()%>/static/css/scenic/css.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/scenic/main.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/scenic/basic.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/scenic/style.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/scenic/base.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/scenic/head.css"/>

<body>
<!--抬头开始-->
<div class="top">
    <div class="top1">
        <div class="top1_main"><span class="dl">您好，欢迎进入weTrip！<a
                href="<%=request.getContextPath()%>/preLogin"> [请登录]</a> <a
                href="<%=request.getContextPath()%>/preRegister">[免费注册]</a></span><span class="yh_zx"><a
                href="#">用户中心</a> | <a
                href="#">我的订单</a> |
          <a href="#">帮助中心</a> | <a href="#">联系方式</a></span></div>
    </div>
    <div class="top_logo">
        <div class="logo"><a href="index.html"><img src="<%=request.getContextPath()%>/static/img/scenic/logo.png"
                                                    width="338" height="113"
                                                    alt="weTrip的logo标志"></a></div>
    </div>
</div>
<div class="con_ny">
    <div class="con_dqwz">您的当前位置：<a href="<%=request.getContextPath()%>/index">首页</a> >> 景点详情</div>
    <!--景点详情介绍开始-->
    <div class="cpxq_ny1">
        <!--相册放大镜开始-->
        <div class="fdj">
            <SCRIPT src="<%=request.getContextPath()%>/static/js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
            <SCRIPT src="<%=request.getContextPath()%>/static/js/base.js"
                    type=text/javascript></SCRIPT>
            <div id=preview>
                <div class=jqzoom id=spec-n1 onClick="window.open('#')"><IMG height=306
                                                                             src="<%=request.getContextPath()%>/static/img/${picture.picturePath}"
                                                                             jqimg="<%=request.getContextPath()%>/static/img/${picture.picturePath}"
                                                                             width=350>
                </div>
                <div id=spec-n5>
                    <div class=control id=spec-left>
                        <img src="<%=request.getContextPath()%>/static/img/scenic/left.jpg"/>
                    </div>
                    <div id=spec-list>
                        <ul class=list-h>
                            <li><img src="<%=request.getContextPath()%>/static/img/${picture.picturePath}"></li>
                            <li><img src="<%=request.getContextPath()%>/static/img/scenic/scenic2.jpg"></li>
                            <li><img src="<%=request.getContextPath()%>/static/img/scenic/scenic3.jpg"></li>
                            <li><img src="<%=request.getContextPath()%>/static/img/scenic/scenic4.jpg"></li>
                            <li><img src="<%=request.getContextPath()%>/static/img/scenic/scenic5.jpg"></li>
                            <li><img src="<%=request.getContextPath()%>/static/img/scenic/scenic6.jpg"></li>
                        </ul>
                    </div>
                    <div class=control id=spec-right>
                        <img src="<%=request.getContextPath()%>/static/img/scenic/right.jpg"/>
                    </div>
                </div>
            </div>
            <SCRIPT type=text/javascript>
                $(function () {
                    $(".jqzoom").jqueryzoom({
                        xzoom: 400,
                        yzoom: 400,
                        offset: 10,
                        position: "right",
                        preload: 1,
                        lens: 1
                    });
                    $("#spec-list").jdMarquee({
                        deriction: "left",
                        width: 350,
                        height: 56,
                        step: 2,
                        speed: 4,
                        delay: 10,
                        control: true,
                        _front: "#spec-right",
                        _back: "#spec-left"
                    });
                    $("#spec-list img").bind("mouseover", function () {
                        var src = $(this).attr("src");
                        $("#spec-n1 img").eq(0).attr({
                            src: src.replace("\/n5\/", "\/n1\/"),
                            jqimg: src.replace("\/n5\/", "\/n0\/")
                        });
                        $(this).css({
                            "border": "2px solid #ff6600",
                            "padding": "1px"
                        });
                    }).bind("mouseout", function () {
                        $(this).css({
                            "border": "1px solid #ccc",
                            "padding": "2px"
                        });
                    });
                })
            </SCRIPT>
            <SCRIPT src="<%=request.getContextPath()%>/static/js/lib.js" type=text/javascript></SCRIPT>
            <SCRIPT src="<%=request.getContextPath()%>/static/js/163css.js" type=text/javascript>
            </SCRIPT>
        </div> <!--相册放大镜结束-->

        <div class="xjmc_jjsm">
            <div class="cpxq_mc_1">${scenic.scenicName}</div>
            <div class="none" style="height:15px;"></div>
            <div class="zzl">大 众 评 分：<span style="color:#C00; font-weight:600; font-size:18px;">${average}</span></div>
            <div class="zzl">价 格：<span style="color:#C00; font-weight:600; font-size:18px;">￥${scenic.price}/人</span>
            </div>
            <div class="address">所 属 地 区：${scenic.address}</div>
            <div class="zzl">推荐理由：★ ${scenic.description}</div>
            </br>
            <div class="dgsc">
                <span class="jrsc_2" style="padding-left:100px;"><a
                        href="<%=request.getContextPath()%>/favorite?scenicId=${scenic.scenicId}"><img
                        src="<%=request.getContextPath()%>/static/img/scenic/shoucang.jpg" width="170" height="34"/></a></span>
                <span class="jrsc_2" style="padding-left:150px;"><a
                        href="<%=request.getContextPath()%>/ha?scenicId=${scenic.scenicId}"><img
                        src="<%=request.getContextPath()%>/static/img/scenic/dinggou.jpg" width="170" height="34"/></a></span>
                <a href="tencent://message/?uin=610376950&Site=Sambow&Menu=yes"><img
                        style="position: relative;top:-165px; left: -10px;"
                        src="<%=request.getContextPath()%>/static/img/qq.jpg"></a>
            </div>
            <div class="fenx"><a style="font-size: 1.5em"
                                 href="<%=request.getContextPath()%>/review?scenicId=${scenic.scenicId}">查看该景点评论</a>
            </div>
        </div>
    </div>
    <!--景点详情介绍结束-->


    <!--中部2开始-->

    <div class="cpxq_ny_con">

        <!--中部2左侧开始-->
        <div class="cpxq_left_1">

            <!--为您推荐开始-->
            <div class="wntj">

                <div class="wntj_bt">旅游推荐</div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/scenic5.jpg" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">海南三亚 蜜月双人游</a></span><span class="wntj_jg">￥4000元/人</span>
                    </div>
                </div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/hai2.jpg" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">峨眉山+乐山大佛+都江堰</a></span><span
                            class="wntj_jg">￥600元/人</span>
                    </div>
                </div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/hai.jpg" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">海螺沟+泸定桥2日1晚跟团游</a></span><span
                            class="wntj_jg">￥375元/人</span>
                    </div>
                </div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/riben.jpg" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">日本大阪+京都+箱根+东京7日6晚跟团游</a></span><span
                            class="wntj_jg">￥7153元/人</span>
                    </div>
                </div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/tai1.jpg" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">泰国曼谷+芭堤雅6日5晚半自助游</a></span><span
                            class="wntj_jg">￥2056元/人</span>
                    </div>
                </div>

            </div>
            <!--为您推荐结束-->


            <div class="none" style="height:20px;"></div>


            <!--本周热销开始-->


            <div class="wntj">

                <div class="wntj_bt">本季度热销</div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/xg.jpg" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">香港+澳门6日5晚半自助游(4钻)·直飞香港+接机</a></span><span
                            class="wntj_jg">￥5313元/人</span>
                    </div>
                </div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/bas.png" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">印度尼西亚巴厘省8日6晚跟团游</a></span><span
                            class="wntj_jg">￥4067元/人</span>
                    </div>
                </div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/scenic3.jpg" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">泰国普吉岛7日5晚半自助游(4钻)</a></span><span
                            class="wntj_jg">￥2687元/人</span>
                    </div>
                </div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/ya.jpg" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">越南芽庄6日5晚私家团(5钻)</a></span><span
                            class="wntj_jg">￥5683元/人</span>
                    </div>
                </div>


                <div class="wntj_lb">
                    <div class="wntj_bt1"><a href="#"><img
                            src="<%=request.getContextPath()%>/static/img/scenic/scenic6.jpg" width="80"
                            height="79"/></a></div>
                    <div class="wntj_bt2"><span class="wntj_mc"><a href="#">西安兵马俑+华清池+法门寺+华山5日4晚跟团游(4钻)</a></span><span
                            class="wntj_jg">￥2364元/人</span>
                    </div>
                </div>

            </div>

            <!--本周热销结束-->

        </div>
        <!--中部2左侧结束-->


        <!--中部2右侧开始-->

        <div class="cpxq_zbyc">

            <!--产品详情开始-->

            <div class="cpxq_yi">

                <style type="text/css">

                    ul {
                        list-style: none;
                    }

                    /*选项卡1*/
                    #Tab1 {
                        width: 960px;
                        height: auto;
                        overflow: hidden;
                        clear: both;
                    }

                    /*选项卡2*/
                    #Tab2 {
                        width: 576px;
                        margin: 0px;
                        padding: 0px;
                        margin: 0 auto;
                    }

                    /*菜单class*/
                    .Menubox {
                        width: 100%;
                        background: #fff;
                        height: 33px;
                        line-height: 33px;
                        border-bottom: 2px solid #acc90b;
                    }

                    .Menubox ul {
                        margin: 0px;
                        padding: 0px;
                    }

                    .Menubox li {
                        float: left;
                        display: block;
                        cursor: pointer;
                        width: 150px;
                        text-align: center;
                        color: #413e3e;
                        font-weight: bold;
                        background: #f3f3f3;
                    }

                    .Menubox li.hover {
                        padding: 0px;
                        background: #acc90b;
                        width: 150px;
                        color: #fff;
                        font-weight: bold;
                        height: 33px;
                        line-height: 33px;
                        font-family: "微软雅黑";
                    }

                    .Contentbox {
                        clear: both;
                        margin-top: 0px;
                        border-top: none;
                        height: auto;
                        padding-top: 8px;
                    }

                    .STYLE2 {
                        font-size: 18px
                    }

                </style>

                <script>
                    /*第一种形式 第二种形式 更换显示样式*/
                    function setTab(name, cursel, n) {
                        for (var i = 1; i <= n; i++) {
                            var menu = document.getElementById(name + i);
                            var con = document.getElementById("con_" + name + "_" + i);
                            menu.className = i == cursel ? "hover" : "";
                            con.style.display = i == cursel ? "block" : "none";
                        }
                    }
                </script>
                <div id="Tab1">
                    <div class="Menubox">
                        <ul>
                            <li id="one1" onmousedown="setTab('one',1,4)" class="hover">景区特色</li>
                            <li id="one2" onmousedown="setTab('one',2,4)">地图定位</li>
                        </ul>
                    </div>
                    <div class="Contentbox">
                        <div id="con_one_1" class="hover">
                            <div class="spjs_2"><span class="spxq_js1">景区介绍 </span><span
                                    class="xqyw">Scenic Ovierview</span></div>
                            <div class="none" style=" height:10px; clear:both;"></div>
                            <div class="cpts_jr">
                                <img src="<%=request.getContextPath()%>/static/img/scenic/cpts.jpg" alt="">
                                <img src="<%=request.getContextPath()%>/static/img/scenic/cpts2.jpg" alt="">
                            </div>
                        </div>
                        <div id="con_one_2" style="display:none">
                            <div class="sccj_2xq">
                                <div class="sccj_2bt">位置可能会是模糊定位</div>
                                <div class="sccj_nr">
                                    <a href="<%=request.getContextPath()%>/searchAddress?address=${scenic.scenicName}" class="btn btn-success">查看景点位置</a>
                                    <a href="<%=request.getContextPath()%>/distance" class="btn btn-success">查看出发路线</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--产品详情结束-->
        </div>
        <!--中部2右侧结束-->
    </div>
    <!--中部2结束-->
</div>
<!--中部结束-->

<!--友情连接开始-->
<div class="links">
    <div class="links_main">友情连接：&nbsp;<a href="#">郑州卓普科技</a> &nbsp; | &nbsp; 本亲生活网 &nbsp;| &nbsp;郑州卓普科技 &nbsp; | &nbsp;
        本亲生活网 &nbsp; | &nbsp; 郑州卓普科技 &nbsp; | &nbsp; 本亲生活网 &nbsp; | &nbsp; 郑州卓普科技 &nbsp; | &nbsp;本亲生活网 &nbsp; |
        &nbsp;郑州卓普科技 &nbsp; | &nbsp; 本亲生活网&nbsp; |&nbsp; 郑州卓普科技
    </div>
</div>
<div class="banquan">Copyright © 2014-2019 All Right Reserved 版权所有：本亲生活网 备案号： 豫ICP 450051256-1号<br/>

    公司地址：你猜 联系人：叶丛林 联系电话：15808203316

    <div class="banquan2"><img src="<%=request.getContextPath()%>/static/img/scenic/xinr.jpg" width="589" height="51"/>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>

</html>