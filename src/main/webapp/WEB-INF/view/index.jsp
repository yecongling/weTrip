<%@page contentType="text/html;charset=utf-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>weTrip</title>
    <!--引入bootstrap的css文件-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/css/bootstrap.css">
    <!--引入自定义的样式文件-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/reset.css"/>
    <link rel="stylesheet" href="./../css/font-awesome.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css"/>
    <link rel="icon" href="<%=request.getContextPath()%>/static/img/index/logo.png">
</head>
<body>
<div>
    <img class="img-responsive" src="<%=request.getContextPath()%>/static/img/index/index001.jpg">
</div>

<div class="container">
    <nav class="navbar navbar-default"
         style="background-color: rgba(215,238,250,0.91);font-size: 16px;font-weight: bold">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=request.getContextPath()%>/index">首页</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown" id="dropdown01">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-haspopup="true"
                           aria-expanded="false">旅游 <span class="caret"></span></a>
                        <ul class="dropdown-menu" id="dropdown-menu01"
                            style="display: none;background-color: rgb(213, 255, 239)">
                            <li><a href="#body1">国内游</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#body2">国外游</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#body3">省内游</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#body4">港澳台游</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#body5">周边</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/ticketSearch">车票</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <c:choose>
                        <c:when test="${sessionScope.user != null}">
                            <li><a href="<%=request.getContextPath()%>/feedback">我要反馈</a></li>
                            <li class="dropdown" id="dropdown02">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true"
                                   aria-expanded="false">欢迎您,${sessionScope.user.userName} <span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu" id="dropdown-menu02"
                                    style="display: none;background-color: rgb(213, 255, 239)">
                                    <li><a href="#">我的信息</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="<%=request.getContextPath()%>/myOrder">我的订单</a></li>
                                    <li role="separator" class="divider"></li>

                                    <li><a href="<%=request.getContextPath()%>/exit">退出登录</a></li>
                                </ul>
                            </li>

                        </c:when>
                        <c:otherwise>
                            <li><a href="<%=request.getContextPath()%>/feedback">我要反馈</a></li>
                            <li><a href="<%=request.getContextPath()%>/preLogin">登录</a></li>
                            <li><a href="<%=request.getContextPath()%>/preRegister">注册</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </nav>
    <div class="col-lg-12">
        <!--树形导航和轮播图-->
        <div class="col-lg-2" style="margin-top: 10px">
            <!--树形导航-->
            <div class="sidebar">
                <h3>旅游类别</h3>
                <!--sidebar-info-->
                <div class="sidebar-info">
                    <ul class="side-li" style="font-size: 14px">
                        <li class="s_1"><h3>国内旅游<span class="fa fa-angle-right fa-loc"></span></h3></li>
                        <li class="s_2"><h3>港澳台旅游<span class="fa fa-angle-right fa-loc"></span></h3></li>
                        <li class="s_3"><h3>周边旅游<span class="fa fa-angle-right fa-loc"></span></h3></li>
                        <li class="s_4"><h3>省内旅游<span class="fa fa-angle-right fa-loc"></span></h3></li>
                        <li class="s_5"><h3>组团出游<span class="fa fa-angle-right fa-loc"></span></h3></li>
                        <li class="s_6"><h3>自驾游<span class="fa fa-angle-right fa-loc"></span></h3></li>
                        <li class="s_7"><h3>海边游<span class="fa fa-angle-right fa-loc"></span></h3></li>
                        <li class="s_8"><h3>高山风景<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    </ul>
                    <!--hidden-li-box-->
                    <ul class="hiden-box">
                        <li data-hidden="li" id="hiden-1">
                            <div class="sub-nav-right">
                                <div class="cell-box">
                                    <h1>国内热门</h1>
                                    <div class="a-box">
                                        <c:forEach items="${requestScope.scenicList}" var="scenicList">
                                            <a href="<%=request.getContextPath()%>/scenic?scenicId=${scenicList.scenicId}">${scenicList.scenicName}</a><span>|</span>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>四川省内</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">武侯祠</a><span>|</span>
                                        <a href="#">西岭雪山</a><span>|</span>
                                        <a href="#" class="orange">峨眉山</a>
                                        <a href="#">九皇山</a><span>|</span>
                                        <a href="#">大渡河</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">海螺沟</a><span>|</span>
                                        <a href="#">稻城</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>四川省内</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">武侯祠</a><span>|</span>
                                        <a href="#">西岭雪山</a><span>|</span>
                                        <a href="#" class="orange">峨眉山</a>
                                        <a href="#">九皇山</a><span>|</span>
                                        <a href="#">大渡河</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">海螺沟</a><span>|</span>
                                        <a href="#">稻城</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sub-nav-left">
                                <div class="cell-box">
                                    <h1>四川省内</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">武侯祠</a><span>|</span>
                                        <a href="#">西岭雪山</a><span>|</span>
                                        <a href="#" class="orange">峨眉山</a>
                                        <a href="#">九皇山</a><span>|</span>
                                        <a href="#">大渡河</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">海螺沟</a><span>|</span>
                                        <a href="#">稻城</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>四川省内</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">武侯祠</a><span>|</span>
                                        <a href="#">西岭雪山</a><span>|</span>
                                        <a href="#" class="orange">峨眉山</a>
                                        <a href="#">九皇山</a><span>|</span>
                                        <a href="#">大渡河</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">海螺沟</a><span>|</span>
                                        <a href="#">稻城</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>四川省内</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">武侯祠</a><span>|</span>
                                        <a href="#">西岭雪山</a><span>|</span>
                                        <a href="#" class="orange">峨眉山</a>
                                        <a href="#">九皇山</a><span>|</span>
                                        <a href="#">大渡河</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">海螺沟</a><span>|</span>
                                        <a href="#">稻城</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-hidden="li" id="hiden-2">
                            <div class="sub-nav-right">
                                <div class="cell-box">
                                    <h1>台湾</h1>
                                    <div class="a-box">
                                        <a href="#">日月潭</a><span>|</span>
                                        <a href="#">台中孔庙</a><span>|</span>
                                        <a href="#">阿里山风景区</a><span>|</span>
                                        <a href="#">台南孔庙</a><span>|</span>
                                        <a href="#" class="orange">清境农场</a>
                                        <a href="#">阴阳山公园</a><span>|</span>
                                        <a href="#">阿里山森林游乐区</a><span>|</span>
                                        <a href="#">玉山公园</a><span>|</span>
                                        <a href="#">新北投温泉</a><span>|</span>
                                        <a href="#">台湾昆虫科学博物馆</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>台湾</h1>
                                    <div class="a-box">
                                        <a href="#">日月潭</a><span>|</span>
                                        <a href="#">台中孔庙</a><span>|</span>
                                        <a href="#">阿里山风景区</a><span>|</span>
                                        <a href="#">台南孔庙</a><span>|</span>
                                        <a href="#" class="orange">清境农场</a>
                                        <a href="#">阴阳山公园</a><span>|</span>
                                        <a href="#">阿里山森林游乐区</a><span>|</span>
                                        <a href="#">玉山公园</a><span>|</span>
                                        <a href="#">新北投温泉</a><span>|</span>
                                        <a href="#">台湾昆虫科学博物馆</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>台湾</h1>
                                    <div class="a-box">
                                        <a href="#">日月潭</a><span>|</span>
                                        <a href="#">台中孔庙</a><span>|</span>
                                        <a href="#">阿里山风景区</a><span>|</span>
                                        <a href="#">台南孔庙</a><span>|</span>
                                        <a href="#" class="orange">清境农场</a>
                                        <a href="#">阴阳山公园</a><span>|</span>
                                        <a href="#">阿里山森林游乐区</a><span>|</span>
                                        <a href="#">玉山公园</a><span>|</span>
                                        <a href="#">新北投温泉</a><span>|</span>
                                        <a href="#">台湾昆虫科学博物馆</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sub-nav-left">
                                <div class="cell-box">
                                    <h1>台湾</h1>
                                    <div class="a-box">
                                        <a href="#">日月潭</a><span>|</span>
                                        <a href="#">台中孔庙</a><span>|</span>
                                        <a href="#">阿里山风景区</a><span>|</span>
                                        <a href="#">台南孔庙</a><span>|</span>
                                        <a href="#" class="orange">清境农场</a>
                                        <a href="#">阴阳山公园</a><span>|</span>
                                        <a href="#">阿里山森林游乐区</a><span>|</span>
                                        <a href="#">玉山公园</a><span>|</span>
                                        <a href="#">新北投温泉</a><span>|</span>
                                        <a href="#">台湾昆虫科学博物馆</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>台湾</h1>
                                    <div class="a-box">
                                        <a href="#">日月潭</a><span>|</span>
                                        <a href="#">台中孔庙</a><span>|</span>
                                        <a href="#">阿里山风景区</a><span>|</span>
                                        <a href="#">台南孔庙</a><span>|</span>
                                        <a href="#" class="orange">清境农场</a>
                                        <a href="#">阴阳山公园</a><span>|</span>
                                        <a href="#">阿里山森林游乐区</a><span>|</span>
                                        <a href="#">玉山公园</a><span>|</span>
                                        <a href="#">新北投温泉</a><span>|</span>
                                        <a href="#">台湾昆虫科学博物馆</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>台湾</h1>
                                    <div class="a-box">
                                        <a href="#">日月潭</a><span>|</span>
                                        <a href="#">台中孔庙</a><span>|</span>
                                        <a href="#">阿里山风景区</a><span>|</span>
                                        <a href="#">台南孔庙</a><span>|</span>
                                        <a href="#" class="orange">清境农场</a>
                                        <a href="#">阴阳山公园</a><span>|</span>
                                        <a href="#">阿里山森林游乐区</a><span>|</span>
                                        <a href="#">玉山公园</a><span>|</span>
                                        <a href="#">新北投温泉</a><span>|</span>
                                        <a href="#">台湾昆虫科学博物馆</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-hidden="li" id="hiden-3">
                            <div class="sub-nav-right">
                                <div class="cell-box">
                                    <h1>成都市周围</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">成都杜甫草堂</a><span>|</span>
                                        <a href="#">大邑刘氏庄园</a><span>|</span>
                                        <a href="#" class="orange">成都武侯祠</a>
                                        <a href="#">幸福梅林</a><span>|</span>
                                        <a href="#">江南管街街坊遗址</a><span>|</span>
                                        <a href="#">彭州九峰山风景名胜区</a><span>|</span>
                                        <a href="#">洛带古镇</a><span>|</span>
                                        <a href="#">宝光桂湖文化旅游区</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>成都市周围</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">成都杜甫草堂</a><span>|</span>
                                        <a href="#">大邑刘氏庄园</a><span>|</span>
                                        <a href="#" class="orange">成都武侯祠</a>
                                        <a href="#">幸福梅林</a><span>|</span>
                                        <a href="#">江南管街街坊遗址</a><span>|</span>
                                        <a href="#">彭州九峰山风景名胜区</a><span>|</span>
                                        <a href="#">洛带古镇</a><span>|</span>
                                        <a href="#">宝光桂湖文化旅游区</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>成都市周围</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">成都杜甫草堂</a><span>|</span>
                                        <a href="#">大邑刘氏庄园</a><span>|</span>
                                        <a href="#" class="orange">成都武侯祠</a>
                                        <a href="#">幸福梅林</a><span>|</span>
                                        <a href="#">江南管街街坊遗址</a><span>|</span>
                                        <a href="#">彭州九峰山风景名胜区</a><span>|</span>
                                        <a href="#">洛带古镇</a><span>|</span>
                                        <a href="#">宝光桂湖文化旅游区</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sub-nav-left">
                                <div class="cell-box">
                                    <h1>成都市周围</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">成都杜甫草堂</a><span>|</span>
                                        <a href="#">大邑刘氏庄园</a><span>|</span>
                                        <a href="#" class="orange">成都武侯祠</a>
                                        <a href="#">幸福梅林</a><span>|</span>
                                        <a href="#">江南管街街坊遗址</a><span>|</span>
                                        <a href="#">彭州九峰山风景名胜区</a><span>|</span>
                                        <a href="#">洛带古镇</a><span>|</span>
                                        <a href="#">宝光桂湖文化旅游区</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>成都市周围</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">成都杜甫草堂</a><span>|</span>
                                        <a href="#">大邑刘氏庄园</a><span>|</span>
                                        <a href="#" class="orange">成都武侯祠</a>
                                        <a href="#">幸福梅林</a><span>|</span>
                                        <a href="#">江南管街街坊遗址</a><span>|</span>
                                        <a href="#">彭州九峰山风景名胜区</a><span>|</span>
                                        <a href="#">洛带古镇</a><span>|</span>
                                        <a href="#">宝光桂湖文化旅游区</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>成都市周围</h1>
                                    <div class="a-box">
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">都江堰</a><span>|</span>
                                        <a href="#">成都杜甫草堂</a><span>|</span>
                                        <a href="#">大邑刘氏庄园</a><span>|</span>
                                        <a href="#" class="orange">成都武侯祠</a>
                                        <a href="#">幸福梅林</a><span>|</span>
                                        <a href="#">江南管街街坊遗址</a><span>|</span>
                                        <a href="#">彭州九峰山风景名胜区</a><span>|</span>
                                        <a href="#">洛带古镇</a><span>|</span>
                                        <a href="#">宝光桂湖文化旅游区</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-hidden="li" id="hiden-4">
                            <div class="sub-nav-right">
                                <div class="cell-box">
                                    <h1>省内旅游</h1>
                                    <div class="a-box">
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">丹巴</a><span>|</span>
                                        <a href="#" class="orange">贡嘎山</a>
                                        <a href="#">倒湾八卦古战场</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">广安邓小平故居</a><span>|</span>
                                        <a href="#">汶川特别旅游区</a><span>|</span>
                                        <a href="#">剑门蜀道</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>省内旅游</h1>
                                    <div class="a-box">
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">丹巴</a><span>|</span>
                                        <a href="#" class="orange">贡嘎山</a>
                                        <a href="#">倒湾八卦古战场</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">广安邓小平故居</a><span>|</span>
                                        <a href="#">汶川特别旅游区</a><span>|</span>
                                        <a href="#">剑门蜀道</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>省内旅游</h1>
                                    <div class="a-box">
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">丹巴</a><span>|</span>
                                        <a href="#" class="orange">贡嘎山</a>
                                        <a href="#">倒湾八卦古战场</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">广安邓小平故居</a><span>|</span>
                                        <a href="#">汶川特别旅游区</a><span>|</span>
                                        <a href="#">剑门蜀道</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sub-nav-left">
                                <div class="cell-box">
                                    <h1>省内旅游</h1>
                                    <div class="a-box">
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">丹巴</a><span>|</span>
                                        <a href="#" class="orange">贡嘎山</a>
                                        <a href="#">倒湾八卦古战场</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">广安邓小平故居</a><span>|</span>
                                        <a href="#">汶川特别旅游区</a><span>|</span>
                                        <a href="#">剑门蜀道</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>省内旅游</h1>
                                    <div class="a-box">
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">丹巴</a><span>|</span>
                                        <a href="#" class="orange">贡嘎山</a>
                                        <a href="#">倒湾八卦古战场</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">广安邓小平故居</a><span>|</span>
                                        <a href="#">汶川特别旅游区</a><span>|</span>
                                        <a href="#">剑门蜀道</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>省内旅游</h1>
                                    <div class="a-box">
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">青城山</a><span>|</span>
                                        <a href="#">丹巴</a><span>|</span>
                                        <a href="#" class="orange">贡嘎山</a>
                                        <a href="#">倒湾八卦古战场</a><span>|</span>
                                        <a href="#">乐山大佛</a><span>|</span>
                                        <a href="#">广安邓小平故居</a><span>|</span>
                                        <a href="#">汶川特别旅游区</a><span>|</span>
                                        <a href="#">剑门蜀道</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-hidden="li" id="hiden-5">
                            <div class="sub-nav-right">
                                <div class="cell-box">
                                    <h1>组团去</h1>
                                    <div class="a-box">
                                        <a href="#">海南三亚</a><span>|</span>
                                        <a href="#">东岳泰山</a><span>|</span>
                                        <a href="#">贵州梵净山</a><span>|</span>
                                        <a href="#">云南大理</a><span>|</span>
                                        <a href="#" class="orange">香港迪士尼</a>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">神农架</a><span>|</span>
                                        <a href="#">张家界</a><span>|</span>
                                        <a href="#">长城</a><span>|</span>
                                        <a href="#">兵马俑</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>组团去</h1>
                                    <div class="a-box">
                                        <a href="#">海南三亚</a><span>|</span>
                                        <a href="#">东岳泰山</a><span>|</span>
                                        <a href="#">贵州梵净山</a><span>|</span>
                                        <a href="#">云南大理</a><span>|</span>
                                        <a href="#" class="orange">香港迪士尼</a>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">神农架</a><span>|</span>
                                        <a href="#">张家界</a><span>|</span>
                                        <a href="#">长城</a><span>|</span>
                                        <a href="#">兵马俑</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>组团去</h1>
                                    <div class="a-box">
                                        <a href="#">海南三亚</a><span>|</span>
                                        <a href="#">东岳泰山</a><span>|</span>
                                        <a href="#">贵州梵净山</a><span>|</span>
                                        <a href="#">云南大理</a><span>|</span>
                                        <a href="#" class="orange">香港迪士尼</a>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">神农架</a><span>|</span>
                                        <a href="#">张家界</a><span>|</span>
                                        <a href="#">长城</a><span>|</span>
                                        <a href="#">兵马俑</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sub-nav-left">
                                <div class="cell-box">
                                    <h1>组团去</h1>
                                    <div class="a-box">
                                        <a href="#">海南三亚</a><span>|</span>
                                        <a href="#">东岳泰山</a><span>|</span>
                                        <a href="#">贵州梵净山</a><span>|</span>
                                        <a href="#">云南大理</a><span>|</span>
                                        <a href="#" class="orange">香港迪士尼</a>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">神农架</a><span>|</span>
                                        <a href="#">张家界</a><span>|</span>
                                        <a href="#">长城</a><span>|</span>
                                        <a href="#">兵马俑</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>组团去</h1>
                                    <div class="a-box">
                                        <a href="#">海南三亚</a><span>|</span>
                                        <a href="#">东岳泰山</a><span>|</span>
                                        <a href="#">贵州梵净山</a><span>|</span>
                                        <a href="#">云南大理</a><span>|</span>
                                        <a href="#" class="orange">香港迪士尼</a>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">神农架</a><span>|</span>
                                        <a href="#">张家界</a><span>|</span>
                                        <a href="#">长城</a><span>|</span>
                                        <a href="#">兵马俑</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>组团去</h1>
                                    <div class="a-box">
                                        <a href="#">海南三亚</a><span>|</span>
                                        <a href="#">东岳泰山</a><span>|</span>
                                        <a href="#">贵州梵净山</a><span>|</span>
                                        <a href="#">云南大理</a><span>|</span>
                                        <a href="#" class="orange">香港迪士尼</a>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">神农架</a><span>|</span>
                                        <a href="#">张家界</a><span>|</span>
                                        <a href="#">长城</a><span>|</span>
                                        <a href="#">兵马俑</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-hidden="li" id="hiden-6">
                            <div class="sub-nav-right">
                                <div class="cell-box">
                                    <h1>自驾出游</h1>
                                    <div class="a-box">
                                        <a href="#">云南丽江</a><span>|</span>
                                        <a href="#">四川稻城亚丁</a><span>|</span>
                                        <a href="#">嘉峪关</a><span>|</span>
                                        <a href="#">敦煌莫高窟</a><span>|</span>
                                        <a href="#" class="orange">武夷山</a>
                                        <a href="#">凤凰古城</a><span>|</span>
                                        <a href="#">故宫</a><span>|</span>
                                        <a href="#">普陀山</a><span>|</span>
                                        <a href="#">桂林山水</a><span>|</span>
                                        <a href="#">安徽黄山</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>自驾出游</h1>
                                    <div class="a-box">
                                        <a href="#">云南丽江</a><span>|</span>
                                        <a href="#">四川稻城亚丁</a><span>|</span>
                                        <a href="#">嘉峪关</a><span>|</span>
                                        <a href="#">敦煌莫高窟</a><span>|</span>
                                        <a href="#" class="orange">武夷山</a>
                                        <a href="#">凤凰古城</a><span>|</span>
                                        <a href="#">故宫</a><span>|</span>
                                        <a href="#">普陀山</a><span>|</span>
                                        <a href="#">桂林山水</a><span>|</span>
                                        <a href="#">安徽黄山</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>自驾出游</h1>
                                    <div class="a-box">
                                        <a href="#">云南丽江</a><span>|</span>
                                        <a href="#">四川稻城亚丁</a><span>|</span>
                                        <a href="#">嘉峪关</a><span>|</span>
                                        <a href="#">敦煌莫高窟</a><span>|</span>
                                        <a href="#" class="orange">武夷山</a>
                                        <a href="#">凤凰古城</a><span>|</span>
                                        <a href="#">故宫</a><span>|</span>
                                        <a href="#">普陀山</a><span>|</span>
                                        <a href="#">桂林山水</a><span>|</span>
                                        <a href="#">安徽黄山</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sub-nav-left">
                                <div class="cell-box">
                                    <h1>自驾出游</h1>
                                    <div class="a-box">
                                        <a href="#">云南丽江</a><span>|</span>
                                        <a href="#">四川稻城亚丁</a><span>|</span>
                                        <a href="#">嘉峪关</a><span>|</span>
                                        <a href="#">敦煌莫高窟</a><span>|</span>
                                        <a href="#" class="orange">武夷山</a>
                                        <a href="#">凤凰古城</a><span>|</span>
                                        <a href="#">故宫</a><span>|</span>
                                        <a href="#">普陀山</a><span>|</span>
                                        <a href="#">桂林山水</a><span>|</span>
                                        <a href="#">安徽黄山</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>自驾出游</h1>
                                    <div class="a-box">
                                        <a href="#">云南丽江</a><span>|</span>
                                        <a href="#">四川稻城亚丁</a><span>|</span>
                                        <a href="#">嘉峪关</a><span>|</span>
                                        <a href="#">敦煌莫高窟</a><span>|</span>
                                        <a href="#" class="orange">武夷山</a>
                                        <a href="#">凤凰古城</a><span>|</span>
                                        <a href="#">故宫</a><span>|</span>
                                        <a href="#">普陀山</a><span>|</span>
                                        <a href="#">桂林山水</a><span>|</span>
                                        <a href="#">安徽黄山</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>自驾出游</h1>
                                    <div class="a-box">
                                        <a href="#">云南丽江</a><span>|</span>
                                        <a href="#">四川稻城亚丁</a><span>|</span>
                                        <a href="#">嘉峪关</a><span>|</span>
                                        <a href="#">敦煌莫高窟</a><span>|</span>
                                        <a href="#" class="orange">武夷山</a>
                                        <a href="#">凤凰古城</a><span>|</span>
                                        <a href="#">故宫</a><span>|</span>
                                        <a href="#">普陀山</a><span>|</span>
                                        <a href="#">桂林山水</a><span>|</span>
                                        <a href="#">安徽黄山</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-hidden="li" id="hiden-7">
                            <div class="sub-nav-right">
                                <div class="cell-box">
                                    <h1>海边游</h1>
                                    <div class="a-box">
                                        <a href="#">荷包岛</a><span>|</span>
                                        <a href="#">东澳岛</a><span>|</span>
                                        <a href="#">外伶仃岛</a><span>|</span>
                                        <a href="#">北海</a><span>|</span>
                                        <a href="#" class="orange">大连金石滩景区</a>
                                        <a href="#">三亚大东海旅游区</a><span>|</span>
                                        <a href="#">盘锦红海滩景区</a><span>|</span>
                                        <a href="#">北海银滩旅游区</a><span>|</span>
                                        <a href="#">日照万平口海滨风景区</a><span>|</span>
                                        <a href="#">深圳大梅沙海滨公园</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>海边游</h1>
                                    <div class="a-box">
                                        <a href="#">荷包岛</a><span>|</span>
                                        <a href="#">东澳岛</a><span>|</span>
                                        <a href="#">外伶仃岛</a><span>|</span>
                                        <a href="#">北海</a><span>|</span>
                                        <a href="#" class="orange">大连金石滩景区</a>
                                        <a href="#">三亚大东海旅游区</a><span>|</span>
                                        <a href="#">盘锦红海滩景区</a><span>|</span>
                                        <a href="#">北海银滩旅游区</a><span>|</span>
                                        <a href="#">日照万平口海滨风景区</a><span>|</span>
                                        <a href="#">深圳大梅沙海滨公园</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>海边游</h1>
                                    <div class="a-box">
                                        <a href="#">荷包岛</a><span>|</span>
                                        <a href="#">东澳岛</a><span>|</span>
                                        <a href="#">外伶仃岛</a><span>|</span>
                                        <a href="#">北海</a><span>|</span>
                                        <a href="#" class="orange">大连金石滩景区</a>
                                        <a href="#">三亚大东海旅游区</a><span>|</span>
                                        <a href="#">盘锦红海滩景区</a><span>|</span>
                                        <a href="#">北海银滩旅游区</a><span>|</span>
                                        <a href="#">日照万平口海滨风景区</a><span>|</span>
                                        <a href="#">深圳大梅沙海滨公园</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sub-nav-left">
                                <div class="cell-box">
                                    <h1>海边游</h1>
                                    <div class="a-box">
                                        <a href="#">荷包岛</a><span>|</span>
                                        <a href="#">东澳岛</a><span>|</span>
                                        <a href="#">外伶仃岛</a><span>|</span>
                                        <a href="#">北海</a><span>|</span>
                                        <a href="#" class="orange">大连金石滩景区</a>
                                        <a href="#">三亚大东海旅游区</a><span>|</span>
                                        <a href="#">盘锦红海滩景区</a><span>|</span>
                                        <a href="#">北海银滩旅游区</a><span>|</span>
                                        <a href="#">日照万平口海滨风景区</a><span>|</span>
                                        <a href="#">深圳大梅沙海滨公园</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>海边游</h1>
                                    <div class="a-box">
                                        <a href="#">荷包岛</a><span>|</span>
                                        <a href="#">东澳岛</a><span>|</span>
                                        <a href="#">外伶仃岛</a><span>|</span>
                                        <a href="#">北海</a><span>|</span>
                                        <a href="#" class="orange">大连金石滩景区</a>
                                        <a href="#">三亚大东海旅游区</a><span>|</span>
                                        <a href="#">盘锦红海滩景区</a><span>|</span>
                                        <a href="#">北海银滩旅游区</a><span>|</span>
                                        <a href="#">日照万平口海滨风景区</a><span>|</span>
                                        <a href="#">深圳大梅沙海滨公园</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>海边游</h1>
                                    <div class="a-box">
                                        <a href="#">荷包岛</a><span>|</span>
                                        <a href="#">东澳岛</a><span>|</span>
                                        <a href="#">外伶仃岛</a><span>|</span>
                                        <a href="#">北海</a><span>|</span>
                                        <a href="#" class="orange">大连金石滩景区</a>
                                        <a href="#">三亚大东海旅游区</a><span>|</span>
                                        <a href="#">盘锦红海滩景区</a><span>|</span>
                                        <a href="#">北海银滩旅游区</a><span>|</span>
                                        <a href="#">日照万平口海滨风景区</a><span>|</span>
                                        <a href="#">深圳大梅沙海滨公园</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-hidden="li" id="hiden-8">
                            <div class="sub-nav-right">
                                <div class="cell-box">
                                    <h1>高山风景</h1>
                                    <div class="a-box">
                                        <a href="#">黄山</a><span>|</span>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">张家界武陵源风景名胜区</a><span>|</span>
                                        <a href="#" class="orange">龟峰风景名胜区</a>
                                        <a href="#">泰山风景名胜区</a><span>|</span>
                                        <a href="#">普陀山风景名胜区</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">泰山</a><span>|</span>
                                        <a href="#">九皇山</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>高山风景</h1>
                                    <div class="a-box">
                                        <a href="#">黄山</a><span>|</span>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">张家界武陵源风景名胜区</a><span>|</span>
                                        <a href="#" class="orange">龟峰风景名胜区</a>
                                        <a href="#">泰山风景名胜区</a><span>|</span>
                                        <a href="#">普陀山风景名胜区</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">泰山</a><span>|</span>
                                        <a href="#">九皇山</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>高山风景</h1>
                                    <div class="a-box">
                                        <a href="#">黄山</a><span>|</span>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">张家界武陵源风景名胜区</a><span>|</span>
                                        <a href="#" class="orange">龟峰风景名胜区</a>
                                        <a href="#">泰山风景名胜区</a><span>|</span>
                                        <a href="#">普陀山风景名胜区</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">泰山</a><span>|</span>
                                        <a href="#">九皇山</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sub-nav-left">
                                <div class="cell-box">
                                    <h1>高山风景</h1>
                                    <div class="a-box">
                                        <a href="#">黄山</a><span>|</span>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">张家界武陵源风景名胜区</a><span>|</span>
                                        <a href="#" class="orange">龟峰风景名胜区</a>
                                        <a href="#">泰山风景名胜区</a><span>|</span>
                                        <a href="#">普陀山风景名胜区</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">泰山</a><span>|</span>
                                        <a href="#">九皇山</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>高山风景</h1>
                                    <div class="a-box">
                                        <a href="#">黄山</a><span>|</span>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">张家界武陵源风景名胜区</a><span>|</span>
                                        <a href="#" class="orange">龟峰风景名胜区</a>
                                        <a href="#">泰山风景名胜区</a><span>|</span>
                                        <a href="#">普陀山风景名胜区</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">泰山</a><span>|</span>
                                        <a href="#">九皇山</a><span>|</span>
                                    </div>
                                </div>
                                <div class="cell-box">
                                    <h1>高山风景</h1>
                                    <div class="a-box">
                                        <a href="#">黄山</a><span>|</span>
                                        <a href="#">武夷山</a><span>|</span>
                                        <a href="#">九寨沟</a><span>|</span>
                                        <a href="#">张家界武陵源风景名胜区</a><span>|</span>
                                        <a href="#" class="orange">龟峰风景名胜区</a>
                                        <a href="#">泰山风景名胜区</a><span>|</span>
                                        <a href="#">普陀山风景名胜区</a><span>|</span>
                                        <a href="#">峨眉山</a><span>|</span>
                                        <a href="#">泰山</a><span>|</span>
                                        <a href="#">九皇山</a><span>|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--风景区的轮播图-->
        <div class="col-lg-7 box" id="box" style="margin-top: 10px;height: 300px">
            <div class="inner">
                <ul>
                    <c:forEach items="${requestScope.scenicUtilList}" var="scenicUtilList">
                        <li><a href="<%=request.getContextPath()%>/scenic?scenicId=${scenicUtilList.scenicId}"><img
                                width="600px" height="300px"
                                src="<%=request.getContextPath()%>/static/img/${scenicUtilList.picturePath}"
                                alt="图片无法加载"
                                title="${scenicUtilList.description}"></a></li>
                    </c:forEach>
                </ul>

                <ol class="bar">

                </ol>
                <!--左右焦点-->
                <div id="arr">
                    <span id="left">
                        <
                    </span>
                    <span id="right">
                        >
                    </span>
                </div>
            </div>
        </div>

        <div class="col-lg-3 ac-sc" style="height: 300px;margin-top:10px;">
            <a href="#"><img src="<%=request.getContextPath()%>/static/img/index/active02.jpg" alt="图片无法加载"
                             title="这里是最美的地方"></a>
            <a href="#"><img src="<%=request.getContextPath()%>/static/img/index/active01.jpg" alt="图片无法加载"></a>
            <a href="#"><img src="<%=request.getContextPath()%>/static/img/index/active03.jpg" class="sub-pic"
                             alt="图片无法加载"></a>
            <a href="#"><img src="<%=request.getContextPath()%>/static/img/index/active04.jpg" class="sub-pic"
                             alt="图片无法加载"></a>
        </div>
    </div>
    <!--平铺信息的主体部分-->
    <div class="col-lg-12 main-info1" id="body1">
        <!--标题-->
        <span>${list1.get(0).scenicTypeName}</span>
        <!--分隔线-->
        <div class="divider"></div>
        <div class="col-lg-2 img">
            <img src="<%=request.getContextPath()%>/static/img/index/side01.jpg"/>
        </div>
        <div class="col-lg-9 pu-info">
            <c:forEach items="${list1}" var="list1">
                <div class="col-lg-3 sm-pic1 eee1" style="border: none">
                    <a href="<%=request.getContextPath()%>/scenic?scenicId=${list1.scenicId}">
                        <img width="150px" height="90px"
                             src="<%=request.getContextPath()%>/static/img/${list1.picturePath}"
                             title="${list1.description}">
                    </a><a href="<%=request.getContextPath()%>/scenic?scenicId=${list1.scenicId}"
                           style="font-weight: bold;font-size: 12px;"
                           title="${list1.description}">${list1.description}</a>
                    <label class="price" style="margin-top: 5px">￥${list1.price}元</label>
                </div>
            </c:forEach>
        </div>

    </div>
    <!--平铺信息的主体部分-->
    <div class="col-lg-12 main-info2" id="body2">
        <!--标题-->
        <span>${list2.get(0).scenicTypeName}</span>
        <!--分隔线-->
        <div class="divider"></div>
        <div class="col-lg-2 img">
            <img src="<%=request.getContextPath()%>/static/img/index/gangaotai.jpg"/>
        </div>
        <div class="col-lg-9 pu-info">
            <c:forEach items="${list2}" var="list2">
                <div class="col-lg-3 sm-pic1 eee2" style="border: none">
                    <a href="<%=request.getContextPath()%>/scenic?scenicId=${list2.scenicId}">
                        <img width="150px" height="90px"
                             src="<%=request.getContextPath()%>/static/img/${list2.picturePath}"
                             title="${list2.description}">
                    </a><a href="<%=request.getContextPath()%>/scenic?scenicId=${list2.scenicId}"
                           style="font-weight: bold;font-size: 12px;"
                           title="${list2.description}">${list2.description}</a>
                    <label class="price" style="margin-top: 5px">￥${list2.price}元</label>

                </div>
            </c:forEach>
        </div>

    </div>
    <!--平铺信息的主体部分-->
    <div class="col-lg-12 main-info3" id="body3">
        <!--标题-->
        <span>${list3.get(0).scenicTypeName}</span>
        <!--分隔线-->
        <div class="divider"></div>
        <div class="col-lg-2 img">
            <img src="<%=request.getContextPath()%>/static/img/index/sichuan.jpg"/>
        </div>
        <div class="col-lg-9 pu-info">
            <c:forEach items="${list3}" var="list3">
                <div class="col-lg-3 sm-pic1 eee3" style="border: none">
                    <a href="<%=request.getContextPath()%>/scenic?scenicId=${list3.scenicId}">
                        <img width="150px" height="90px"
                             src="<%=request.getContextPath()%>/static/img/${list3.picturePath}"
                             title="${list3.description}">
                    </a><a href="<%=request.getContextPath()%>/scenic?scenicId=${list3.scenicId}"
                           style="font-weight: bold;font-size: 12px;"
                           title="${list3.description}">${list3.description}</a>
                    <label class="price" style="margin-top: 5px">￥${list3.price}元</label>

                </div>
            </c:forEach>


        </div>

    </div>
    <!--平铺信息的主体部分-->
    <div class="col-lg-12 main-info4" id="body4">
        <!--标题-->
        <span>${list4.get(0).scenicTypeName}</span>
        <!--分隔线-->
        <div class="divider"></div>
        <div class="col-lg-2 img">
            <img src="<%=request.getContextPath()%>/static/img/index/zhoubian.jpg"/>
        </div>
        <div class="col-lg-9 pu-info">
            <c:forEach items="${list4}" var="list4">
                <div class="col-lg-3 sm-pic1 eee4" style="border: none">
                    <a href="<%=request.getContextPath()%>/scenic?scenicId=${list4.scenicId}">
                        <img width="150px" height="90px"
                             src="<%=request.getContextPath()%>/static/img/${list4.picturePath}"
                             title="${list4.description}">
                    </a><a href="<%=request.getContextPath()%>/scenic?scenicId=${list4.scenicId}"
                           style="font-weight: bold;font-size: 12px;"
                           title="${list4.description}">${list4.description}</a>
                    <label class="price" style="margin-top: 5px">￥${list4.price}元</label>

                </div>
            </c:forEach>

        </div>

    </div>


    <!--平铺信息的主体部分-->
    <div class="col-lg-12 main-info5" id="body5">
        <!--标题-->
        <span>${list5.get(0).scenicTypeName}</span>
        <!--分隔线-->
        <div class="divider"></div>
        <div class="col-lg-2 img">
            <img src="<%=request.getContextPath()%>/static/img/index/zutuan.jpg"/>
        </div>
        <div class="col-lg-9 pu-info">
            <c:forEach items="${list5}" var="list5">
                <div class="col-lg-3 sm-pic1 eee5" style="border: none">
                    <a href="<%=request.getContextPath()%>/scenic?scenicId=${list5.scenicId}">
                        <img width="150px" height="90px"
                             src="<%=request.getContextPath()%>/static/img/${list5.picturePath}"
                             title="${list5.description}">
                    </a><a href="<%=request.getContextPath()%>/scenic?scenicId=${list5.scenicId}"
                           style="font-weight: bold;font-size: 12px;"
                           title="${list5.description}">${list5.description}</a>
                    <label class="price" style="margin-top: 5px">￥${list5.price}元</label>

                </div>
            </c:forEach>

        </div>

    </div>

    <!--底部信息-->
    <div class="col-lg-12 footer">
        <div class="divider" style="border:2px solid orange"></div>
        <p style="margin-top: 20px">我们为你推荐热门旅游城市和地方</p>
        <p style="margin-top: 20px;margin-bottom:10px;font-size: 16px;font-weight: bold">热门省份旅游</p>
        <a href="#">云南</a>
        <a href="#">新疆</a>
        <a href="#">西藏</a>
        <a href="#">青海</a>
        <a href="#">甘肃</a>
        <a href="#">山西</a>
        <a href="#">陕西</a>
        <a href="#">重庆</a>
        <a href="#">贵州</a>
        <a href="#">广西</a>
        <a href="#">湖南</a>
        <a href="#">湖北</a>
        <a href="#">河南</a>
        <a href="#">河北</a>
        <a href="#">安徽</a>
        <a href="#">浙江</a>
        <a href="#">内蒙古</a>
        <a href="#">黑龙江</a>
        <a href="#">吉林</a>
        <a href="#">辽林</a>
        <a href="#">天津</a>
        <a href="#">山东</a>
        <a href="#">江苏</a>
        <a href="#">福建</a>
        <a href="#">广东</a>
        <a href="#">海南</a>
        <a href="#">香港</a>
        <a href="#">澳门</a>
        <a href="#">台湾</a>
        <p style="margin-top: 20px;margin-bottom:10px;font-size: 16px;font-weight: bold">热门景点旅游</p>
        <a href="#">四川峨眉山</a>
        <a href="#">青海湖</a>
        <a href="#">八达岭长城</a>
        <a href="#">秦始皇陵兵马俑</a>
        <a href="#">故宫</a>
        <a href="#">安徽黄山</a>
        <a href="#">山东泰山</a>
        <a href="#">湖北张家界</a>
        <a href="#">四川西领雪山</a>
        <a href="#">三亚</a>
        <a href="#">长江三峡</a>
        <a href="#">香格里拉</a>
        <a href="#">云南大理</a>
        <a href="#">敦煌莫高窟</a>
        <a href="#">杭州西湖</a>
        <a href="#">丽江</a>
        <a href="#">长白山</a>
        <a href="#">西双版纳</a>
        <a href="#">凤凰城</a>
        <a href="#">四川都江堰</a>
        <a href="#">四川青城山</a>
        <a href="#">秦皇岛</a>
        <a href="#">香港迪士尼</a>
        <a href="#">四川乐山大佛</a>
        <a href="#">稻城亚丁</a>
        <a href="#">普陀山</a>
        <a href="#">横店影视城</a>
        <a href="#">中华恐龙园</a>
        <a href="#">大明山万松林滑雪场</a>
        <a href="#">重庆三峡大坝</a>

        <div class="col-lg-8 col-lg-offset-2" style="height: 40px;margin-top:20px">
            <img src="<%=request.getContextPath()%>/static/img/index/alipay.jpg" alt="图片无法显示" title="本网站只支持支付宝支付">
            <img src="<%=request.getContextPath()%>/static/img/index/alipay.jpg" alt="图片无法显示" title="本网站只支持支付宝支付">
            <img src="<%=request.getContextPath()%>/static/img/index/alipay.jpg" alt="图片无法显示" title="本网站只支持支付宝支付">
            <img src="<%=request.getContextPath()%>/static/img/index/alipay.jpg" alt="图片无法显示" title="本网站只支持支付宝支付">
            <img src="<%=request.getContextPath()%>/static/img/index/alipay.jpg" alt="图片无法显示" title="本网站只支持支付宝支付">
            <img src="<%=request.getContextPath()%>/static/img/index/alipay.jpg" alt="图片无法显示" title="本网站只支持支付宝支付">
            <img src="<%=request.getContextPath()%>/static/img/index/alipay.jpg" alt="图片无法显示" title="本网站只支持支付宝支付">
            <img src="<%=request.getContextPath()%>/static/img/index/alipay.jpg" alt="图片无法显示" title="本网站只支持支付宝支付">
        </div>

    </div>
</div>
<!--引入支持jQuery的js文件-->
<script src="<%=request.getContextPath()%>/static/js/jquery-3.3.1.js"></script>
<!--引入bootstrap的js文件-->
<script src="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<!--引入自定义的js文件-->
<script src="<%=request.getContextPath()%>/static/js/main.js"></script>
<script src="<%=request.getContextPath()%>/static/js/rollOfIndex.js"></script>
</body>
</html>