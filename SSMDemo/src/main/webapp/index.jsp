<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>心随乐动</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/icomoon.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/styleMain.css">
    <script src="js/modernizr-2.6.2.min.js"></script>
    <script src="js/respond.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
<!--导航-->
<header class="nav">
    <div class="container">
        <div class="wrap">
            <div class="logo">
                <a href="index.jsp"><img src="images/logo.jpg"> </a>
            </div>
            <nav class="nav-menu">
                <ul>
                    <li ><a href="#recommend">推荐</a> </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">歌曲<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><!-- <a href="${ctx}/html/player.html"> --><a href="#recent">最新歌曲</a></li>
                            <li><a href="#popular">最热歌曲</a></li>
                            <!-- <li><a href="#">下载最多</a></li> -->
                            <li><a href="#category">歌曲类别</a></li>
                            <li><a href="#language">歌曲语种</a></li>
                        </ul>
                    </li>
                    </li><li><a href="${ctx}/user/list">歌单</a></li>
                    </li><li><a href="#singer">歌手</a></li>
                </ul>
            </nav>
            <form action="${ctx}/song/search" class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input name="song" value="${song.song}" type="text" class="form-control" placeholder="发现音乐">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <div class="btn-group">
                <image class="dropdown-toggle" data-toggle="dropdown"src="images/geren.png" style="width: 57px;"> 
                    <ul class="dropdown-menu" role="menu">
                        <li class="showbtn"><a href="javascript:void(0);">加入心随乐动</a></li>
                        <!--<li><a href="#">个人中心</a></li>-->
                        <!--<li><a href="#">退出</a></li>-->
                    </ul>
            </div>
            <div id="bg"></div>
            <div class="box" style="display:none">
                <img class="dialogIco" width="50" height="50" src="images/ico.png" alt="" />
                <div class="dialogTop">
                    <a href="javascript:;" class="close">关闭</a>
                </div>
                <form action="${ctx}/user/login" method="post" id="editForm">
                    <ul class="editInfos">
                        <li><label><font color="#ff0000">* </font>用户名：<input type="text" name="id" required value="${user.id}" class="ipt" /></label></li>
                        <li><label><font color="#ff0000">* </font>密码&nbsp;&nbsp;：<input type="password" name="password" required value="${user.password}" class="ipt" /></label></li>
                        <li><a href="${ctx}/user/tosignup"><input type="button" value="注册" class="register"></input></a><a href="${ctx}/user/login"><input type="submit" value="登录" class="submitBtn"></input></a></li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</header>


<!--轮播-->
<div id="owl-demo" class="owl-carousel owl-carousel-main">
    <a class="item" href="${ctx}/html/player.html"><img src="images/slider1.jpg" alt=""></a>
    <a class="item" href="${ctx}/html/player.html"><img src="images/slider2.jpg" alt=""></a>
    <a class="item" href="${ctx}/html/player.html"><img src="images/slider1.jpg" alt=""></a>
    <a class="item" href="${ctx}/html/player.html"><img src="images/slider2.jpg" alt=""></a>
</div>


<!--中间的内容区域-->
<section>
    <div class="container">
        <div class="section-left">
            <div class="left-top-menu">
                <div class="lt-menu-name">
                    <ul class="tab-name">
                        <li id="recommend" class="selected-yellow"><a href="javascript:void(0)">推荐</a></li>
                        <li id="#"><a href="javascript:void(0)">最新</a></li>
                        <li id="#"><a href="javascript:void(0)">最热</a></li>
                    </ul>
                    <a href="${ctx}/user/list" class="more">
                        更多
                    </a>
                </div>
                <div class="lt-menu-content tab-box">
                    <section class="">
                        <ul>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p10.jpg">
                                    <b class="song-name">不能说的秘密</b>
                                    <p>周杰伦</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="images/p10.jpg">
                                <b class="song-name">不能说的秘密</b>
                                <p>周杰伦</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="images/p10.jpg">
                                <b class="song-name">不能说的秘密</b>
                                <p>周杰伦</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="images/p10.jpg">
                                <b class="song-name">不能说的秘密</b>
                                <p>周杰伦</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="images/p10.jpg">
                                <b class="song-name">不能说的秘密</b>
                                <p>周杰伦</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="images/p10.jpg">
                                <b class="song-name">不能说的秘密</b>
                                <p>周杰伦</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="images/p10.jpg">
                                <b class="song-name">不能说的秘密</b>
                                <p>周杰伦</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="images/p10.jpg">
                                <b class="song-name">不能说的秘密</b>
                                <p>周杰伦</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    </section>
                    <section class="hide-hide">
                        <ul>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p4.jpg">
                                    <b class="song-name">天空</b>
                                    <p>蔡依林</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p4.jpg">
                                    <b class="song-name">不能说的秘密</b>
                                    <p>周杰伦</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p4.jpg">
                                    <b class="song-name">天空</b>
                                    <p>蔡依林</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p4.jpg">
                                    <b class="song-name">不能说的秘密</b>
                                    <p>周杰伦</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p4.jpg">
                                    <b class="song-name">天空</b>
                                    <p>蔡依林</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p4.jpg">
                                    <b class="song-name">不能说的秘密</b>
                                    <p>周杰伦</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p4.jpg">
                                    <b class="song-name">天空</b>
                                    <p>蔡依林</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p4.jpg">
                                    <b class="song-name">不能说的秘密</b>
                                    <p>周杰伦</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </section>
                    <section class="hide-hide">
                        <ul>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p3.jpg">
                                    <b class="song-name">没离开过</b>
                                    <p>林志炫</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p3.jpg">
                                    <b class="song-name">没离开过</b>
                                    <p>林志炫</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p3.jpg">
                                    <b class="song-name">没离开过</b>
                                    <p>林志炫</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p3.jpg">
                                    <b class="song-name">没离开过</b>
                                    <p>林志炫</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p3.jpg">
                                    <b class="song-name">没离开过</b>
                                    <p>林志炫</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p3.jpg">
                                    <b class="song-name">没离开过</b>
                                    <p>林志炫</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p3.jpg">
                                    <b class="song-name">没离开过</b>
                                    <p>林志炫</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="images/p3.jpg">
                                    <b class="song-name">没离开过</b>
                                    <p>林志炫</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </section>
                </div>
            </div>
            <div class="post-image-left">
                <a href="${ctx}/html/player.html"><img src="images/slider2.jpg" style="width: 760px;height: 100px; margin-bottom: 30px"></a>
            </div>
            <div class="left-bottom-menu">
                <div class="llb-menu">
                   <div class="llb-menu-name">
                       <ul class="style-tab-name">
                           <li id="language" class="selected-green"><a href="javascript:void(0)">华语</a> </li>
                           <li><a href="javascript:void(0)">日韩</a> </li>
                           <li><a href="javascript:void(0)">欧美</a> </li>
                       </ul>
                       <a href="${ctx}/user/list" class="more">
                           更多
                       </a>
                   </div>
                    <div>
                        <section class="llb-menu-content">
                            <ul>
                                <li class="line hight-light">
                                    <span>1.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                        
                                </li>
                                <li class="line">
                                    <span>2.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                </li>
                                <li class="line hight-light">
                                    <span>3.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                                <li class="line">
                                    <span>4.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>5.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                                <li class="line">
                                    <span>6.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>7.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                                <li class="line">
                                    <span>8.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>9.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                                <li class="line">
                                    <span>10.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>11.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                                <li class="line">
                                    <span>12.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                    
                                </li>
                            </ul>
                        </section>
                        <section class="llb-menu-content hide-hide">
                            <ul>
                                <li class="line hight-light">
                                    <span>1.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line">
                                    <span>2.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>3.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line">
                                    <span>4.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>5.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line">
                                    <span>6.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>7.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line">
                                    <span>8.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>9.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line">
                                    <span>10.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>11.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                </li>
                                <li class="line">
                                    <span>12.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                            </ul>
                        </section>
                        <section class="llb-menu-content hide-hide">
                            <ul>
                                <li class="line hight-light">
                                    <span>1.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line">
                                    <span>2.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>3.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line">
                                    <span>4.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>5.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line">
                                    <span>6.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>7.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line">
                                    <span>8.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>9.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line">
                                    <span>10.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>11.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line">
                                    <span>12.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                            </ul>
                        </section>
                    </div>
                </div>
                <div class="lrb-menu">
                    <div class="lrb-menu-name">
                        <ul>
                         <li id="recent"><a>最新歌曲</a></li>
                        </ul>
                        <a href="${ctx}/user/list" class="more">
                            更多
                        </a>
                    </div>
                    <div class="lrb-menu-content">
                        <ul>
                            <li>
                            <img src="images/m15.jpg" >
                            <div>
                                <b>无心</b>
                                <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                            </div>
                        </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="images/m15.jpg" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-right">
            <div class="right-bottom-menu">
                <div class="right-bottom-name">
                    <ul>
                        <li id="popular"><a>最热歌曲</a></li>
                    </ul>
                    <a href="${ctx}/user/list" class="more">
                        更多
                    </a>
                </div>
                <div class="right-bottom-content">
                    <ul>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge red">1</span>
                        </li>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge red">2</span>
                        </li>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge red">3</span>
                        </li>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge">4</span>
                        </li>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge">5</span>
                        </li>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge">6</span>
                        </li>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge">7</span>
                        </li>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge">8</span>
                        </li>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge">9</span>
                        </li>
                        <li>
                            <img src="images/m0.jpg">
                            <a href="${ctx}/html/player.html"><b>你不知道的事</b></a>
                            <span>王力宏</span>
                            <span class="badge">10</span>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="tag">
                <div id="category" class="tag-name">歌曲类别</div>
                <ul>
                    <li><a href="${ctx}/user/list">轻音乐</a> </li>
                    <li><a href="${ctx}/user/list">日韩流行</a> </li>
                    <li><a href="${ctx}/user/list">排行榜</a> </li>
                    <li><a href="${ctx}/user/list">新歌速递</a> </li>
                    <li><a href="${ctx}/user/list">伤感</a> </li>
                    <li><a href="${ctx}/user/list">下午茶</a> </li>
                    <li><a href="${ctx}/user/list">说唱</a> </li>
                    <li><a href="${ctx}/user/list">爵士</a> </li>
                    <li><a href="${ctx}/user/list">影视原声</a> </li>
                    <li><a href="${ctx}/user/list">校园风</a> </li>
                </ul>
            </div>
            <div class="right-top-menu">
                <div class="rt-menu-name">
                    <ul>
                        <li id="singer"><a>歌手</a> </li>
                        <li><a href="${ctx}/user/list">更多</a> </li>
                    </ul>
                </div>
                <div class="rt-menu-content">
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="images/sin1.png" >
                            <div>&nbsp;&nbsp;周杰伦是一代流行天王，是我们童年的回忆，伴随我们整个青少年</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>周杰伦</b></a>
                        <p>嘻哈音乐小王子，不简单的音乐人</p>
                    </div>
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="images/sin1.png" >
                            <div>&nbsp;&nbsp;周杰伦是一代流行天王，是我们童年的回忆，伴随我们整个青少年</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>周杰伦</b></a>
                        <p>嘻哈音乐小王子，不简单的音乐人</p>
                    </div>
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="images/sin1.png" >
                            <div>&nbsp;&nbsp;周杰伦是一代流行天王，是我们童年的回忆，伴随我们整个青少年</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>周杰伦</b></a>
                        <p>嘻哈音乐小王子，不简单的音乐人</p>
                    </div>
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="images/sin1.png" >
                            <div>&nbsp;&nbsp;周杰伦是一代流行天王，是我们童年的回忆，伴随我们整个青少年</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>周杰伦</b></a>
                        <p>嘻哈音乐小王子，不简单的音乐人</p>
                    </div>
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="images/sin1.png" >
                            <div>&nbsp;&nbsp;周杰伦是一代流行天王，是我们童年的回忆，伴随我们整个青少年</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>周杰伦</b></a>
                        <p>嘻哈音乐小王子，不简单的音乐人</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>


<!--底部-->
<footer>
    <div class="container">
        <div class="left">
            <h1>关于心随乐动</h1>
            <p>音乐，不仅仅是一种音与韵，而是在于聆听者用心聆听时</p>
            <p>能真实地享受音乐给自己带来的那份美丽心境</p>
            <p>心随乐动旨在帮助您徜徉在音乐的长河中</p>
        </div>
        <div class="center">
            <h1>ABOUT US</h1>
            <ul>
                <li><a href="#">关于我们</a></li>
                <li><a href="http://www.baidu.com">友情链接</a></li>
                <li><a href="${ctx}/html/index-rect.html">管理员模式</a></li>
            </ul>
        </div>
        <div class="right">
            <h1>CONTACT US</h1>
            <ul>
                <li><span class="glyphicon glyphicon-earphone"></span> 联系电话：13866666666</li>
                <li><span class="glyphicon glyphicon-envelope"></span> 电子邮箱：12345678@qq.com</li>
                <li><span class="glyphicon glyphicon-map-marker"></span> 地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：华中科技大学东校区软件学院</li>
            </ul>
        </div>
    </div>

</footer>


<script src="js/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="js/login.js"></script>
</body>
</html>