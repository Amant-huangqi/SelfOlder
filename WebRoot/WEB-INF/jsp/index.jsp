<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>一步道味-后台管理系统</title>
<link rel="shortcut icon" type="image/x-icon" href="image/app.png" />
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<link rel="stylesheet" href="assets/css/djstyle.css">

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />
<link rel="stylesheet" href="assets/css/colorbox.css" />


<!-- text fonts -->
<link rel="stylesheet" href="assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<style>
.top {
	padding: 2px 0;
	
	background: #3c2611;
}

.top a {
	
	color:#FFF;
	
}

.top a:hover {
	
	color:#FFF;
	text-decoration:underline;
	
}

.box {
	background: #fff;
	margin: 10px auto;
	padding: 10px;
	-webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px
		rgba(0, 0, 0, 0.1) inset;
	-moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px
		rgba(0, 0, 0, 0.1) inset;
	box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1)
		inset;
}

.add {
	background: rgb(255, 235, 205);
	color: #630;
	width: 282px;
}

@media ( min-width : 1200px) {
	.container {
		width: 980px;
		padding: 0px;
	}
}

@media ( max-width : 1000px) {
	.none {
		display: none;
	}
}

@media ( max-width : 630px) {
	.none1 {
		display: none;
	}
}

@media ( max-width : 640px) {
	.nav {
		height: 50px;
	}
}

.ht_details .hd,.news .hd {
	background: url(img/leftbt.png) no-repeat;
	height: 25px;
	line-height: 25px;
	font-size: 14px;
	font-weight: bold;
	color: #630;
	padding: 9px 20px;
}

.hdbor {
	border: 1px solid #ddd;
	border-bottom: 1px solid #aaa;
	border-top: 0;
}

.bagd {
	background: url(image/bj.png);
	height: 350px;
}

.tabbable {
	border-bottom: 1px solid #CCC;
	background: #fff;
}

.tabbable li {
	margin-left: 15px;
}

.tabbable li a:hover {
	color: #fff;
	background-color: #f90;
}

.active {
	padding: 0px;
}

.had {
	background: url(image/leftbt.png)) no-repeat;
	height: 44px;
	line-height: 25px;
	font-size: 14px;
	font-weight: bold;
	color: #630;
	padding: 9px 20px;
}

input {
	height: 30px;
}
</style>




</head>

<body>
	<div style=" background:#27221E url(image/bgd.png);">
		<!-- #section:basics/navbar.layout -->

		<div class="site-title">
			<div>
				<div class="top">
					<table class=" container">
						<tbody>
							<tr>
								<td align="left"><span style="display: inline;">欢迎来到<span
										style="color:#F00;">一步道味</span>！
								</span></td>
								<td align="right"><i
									class="ace-icon glyphicon glyphicon-home"></i><a href="">网站首页</a>
									| <i
									class="ace-icon glyphicon glyphicon-download"></i><a
									href="http://www.appfun.cn/app/info/appid/356264">APP下载</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /section:basics/navbar.dropdown -->
			</div>
			<!-- /.navbar-container -->
		</div>

		<div class="bagd"></div>

		<div class="container" style="margin-top:-300px;">


			<div>

				<div>
					<div style=" height:350px; ">
						<div>
							<div class="topName">
								<span><img src="image/rexian.png">HSPLL</span><img
									width="60px" height="60px" src="image/logo.png"><strong
									style="vertical-align:middle;">一步道味</strong>&nbsp;&nbsp;
								<tt class="tBq">特色环境</tt>
								<tt class="tBq">食品安全等级A</tt>
								<tt class="tBq">知名餐馆</tt>
								<tt class="tBq">人气</tt>
							</div>

							<div class="topImg">
								<img width="980px" height="300px" src="image/tup.png">
							</div>
						</div>
					</div>
					<!-- /section:basics/navbar.dropdown -->
				</div>
				<!-- /.navbar-container -->
			</div>





			<!-- /section:basics/navbar.layout -->

			<div>
				<script type="text/javascript">
					try {
						ace.settings.check('main-container', 'fixed')
					} catch (e) {
					}
				</script>

				<!-- #section:basics/sidebar -->


				<!-- /section:basics/sidebar -->
				<div class="container" style="margin:50px 0 0 10px;">
					<div class="  main-content ">
						<!-- #section:basics/content.breadcrumbs -->

						<!-- /section:basics/content.breadcrumbs -->



						<!--内容-->
						<div class="container">
							<div class="col-xs-4">


								<div class="ht_details mb10">
									<div class="had"
										style="background:url(image/leftbt.png);border-left:1px solid #ddd; border-right:1px solid #ddd;">本店信息</div>
									<div class="bg">

										<div class="styTm" style="padding: 5px 9px;">
											<p>本店环境：</p>
											<p class="logoimg"
												style="text-align:center;background-color:#fff;">
												<a href=""><img src="image/bdtp.jpg"></a>
											</p>
											<br>
											<p>
												本店介绍：<span>本店一步道味环境古朴典雅，专注商务宴请、婚宴酒席、生日聚会、朋友聚会本店一步道味环境古朴典雅，专注商务宴请、婚宴酒席、生日聚会、朋友聚会。</span>
											</p>
											<p>
												主营菜系：<span style="font-weight:bold; color:#f90;">家常菜</span>
											</p>
											<p>
												营业时间：<span>10:00-22:00</span>
											</p>
											<p>
												<img src="image/te.png" style="vertical-align:text-top">
												电话：<span id="spDh">HSPLL phone</span>
											</p>
											<p>
												<img src="image/ad.png" style="vertical-align:text-top">
												地址：<span>青岛科技大学HSPLL工作室</span>
											</p>
											<p>
												店家氛围：<span>商务宴请、朋友聚会、婚庆宴席</span>
											</p>
											<p>
												交通指南：<span>公交路线:19路、打的</span>
											</p>
											<p>
												更多服务：<span>外卖送餐</span>
											</p>
										</div>
									</div>



								</div>
								<div class="ht_details mb10">
									<div class="had"
										style="background:url(image/leftbt.png); border-left:1px solid #ddd; border-right:1px solid #ddd;">顾客预定信息</div>
									<div class="bg">
										<div class="styTm" style="padding: 15px 9px;">
											<p>
												<span style="color:#F00">*</span>联&nbsp;&nbsp;系&nbsp;&nbsp;人：
												<span><input class="input-large  pull-right"
													type="text" id="form-field-4"></span>
											</p>
											<p>
												<span style="color:#F00">*</span>联系手机：<span><input
													class="input-large pull-right" type="text"
													id="form-field-4"></span>
											</p>
											<p>
												<span style="color:#F00">*</span>预期人数：<span><input
													class="input-large pull-right" type="text"
													id="form-field-4"></span>
											</p>
											<p>
												<span style="color:#F00">*</span>预计到店时间(当天)：<span><select
													class="form-control input-medium pull-right"
													id="form-field-select-1" style="height:30px;">
														<option value=""></option>
														<option value="a">10:00</option>
														<option value="b">10:15</option>
														<option value="c">10:30</option>
														<option value="d">10:45</option>
														<option value="e">11:00</option>
														<option value="f">11:15</option>
														<option value="g">11:30</option>
														<option value="h">11:45</option>
														<option value="i">12:00</option>
														<option value="j">12:15</option>
														<option value="k">12:30</option>
														<option value="l">12:45</option>
														<option value="m">13:00</option>
														<option value="n">13:15</option>

												</select></span>
											</p>
											<p>
												<span style="color:#F00">注意:</span>&nbsp;&nbsp;若在预定时间超出30分钟内您未能到达店内，本店将自动取消该桌位，诚信为本，谢谢合作！
												<button class="btn  btn-warning pull-right "
													style="font-weight:bold;">预订座位</button>
											</p>
										</div>
									</div>
								</div>



							</div>

							<div class="col-xs-8 pull-right" style="padding-right:0px;">
								<!-- #section:elements.tab.option -->
								<div class="tabbable">
									<ul
										class="nav nav-tabs padding-12 tab-color-blue background-blue"
										id="myTab4">
										<li><i class="ace-icon glyphicon glyphicon-th"></i>类型:</li>
										<li class="active"><a data-toggle="tab" href="#cp-0">店长推荐</a>
										</li>

										<li><a data-toggle="tab" href="#cp-1">家常菜</a></li>

										<li><a data-toggle="tab" href="#cp-2">凉菜</a></li>

										<li><a data-toggle="tab" href="#cp-3">面食</a></li>
										<li><a data-toggle="tab" href="#cp-4">热菜</a></li>

										<li><a data-toggle="tab" href="#cp-5">粥</a></li>

										<li><a data-toggle="tab" href="#cp-6">饮料</a></li>
									</ul>

									<div class="tab-content">

										<div id="cp-0" class="tab-pane in active">
											<c:forEach var="ani" items="${Data}">
												<div id="ULst">
													<table class="dishes_list ace-thumbnails">
														<tbody>
															<tr>
																<td class="dis_img"><a
																	href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																	title="土豆丝" data-rel="colorbox"><img
																		src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																		width="30px" height="30px"></a></td>

																<td class="tdRight"><span style=" float:right;"></span><strong
																	style="font-size:13px;"> <a href="#CmXx"
																		onclick="fXx(1036,2)">${ani.dishes}</a></strong><br> <br>
																	<c:choose>
																		<c:when test="${ani.ass>=0 && ani.ass<=2}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>2 && ani.ass<=4}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>4 && ani.ass<=6}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>6 && ani.ass<=8}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>8 && ani.ass<10}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																	</c:choose> <span class="fc9 none"><span>菜品介绍：</span>暂无</span>
																	<div class="dLstPr">
																		<strong class="co">￥${ani.price}/份</strong><br>
																		<div class="dis_con_btn">
																			<span class="btn_insert"
																				onclick="addDishes('${ani.dishes}',${ani.price})"><b>+
																					加入菜单</b></span>
																		</div>
																	</div></td>
															</tr>
														</tbody>
													</table>
												</div>
											</c:forEach>
										</div>


										<div id="cp-1" class="tab-pane">
											<c:forEach var="ani" items="${DataHomeCooking}">
												<div id="ULst">
													<table class="dishes_list ace-thumbnails">
														<tbody>
															<tr>
																<td class="dis_img"><a
																	href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																	title="土豆丝" data-rel="colorbox"><img
																		src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																		width="30px" height="30px"></a></td>

																<td class="tdRight"><span style=" float:right;"></span><strong
																	style="font-size:13px;"> <a href="#CmXx"
																		onclick="fXx(1036,2)">${ani.dishes}</a></strong><br> <br>
																	<c:choose>
																		<c:when test="${ani.ass>=0 && ani.ass<=2}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>2 && ani.ass<=4}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>4 && ani.ass<=6}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>6 && ani.ass<=8}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>8 && ani.ass<10}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																	</c:choose> <span class="fc9 none"><span>菜品介绍：</span>暂无</span>
																	<div class="dLstPr">
																		<strong class="co">￥${ani.price}/份</strong><br>
																		<div class="dis_con_btn">
																			<span class="btn_insert"
																				onclick="addDishes('${ani.dishes}',${ani.price})"><b>+
																					加入菜单</b></span>
																		</div>
																	</div></td>
															</tr>
														</tbody>
													</table>
												</div>
											</c:forEach>

										</div>

										<div id="cp-2" class="tab-pane">
											<c:forEach var="ani" items="${DataColdDish}">
												<div id="ULst">
													<table class="dishes_list ace-thumbnails">
														<tbody>
															<tr>
																<td class="dis_img"><a
																	href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																	title="土豆丝" data-rel="colorbox"><img
																		src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																		width="30px" height="30px"></a></td>

																<td class="tdRight"><span style=" float:right;"></span><strong
																	style="font-size:13px;"> <a href="#CmXx"
																		onclick="fXx(1036,2)">${ani.dishes}</a></strong><br> <br>
																	<c:choose>
																		<c:when test="${ani.ass>=0 && ani.ass<=2}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>2 && ani.ass<=4}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>4 && ani.ass<=6}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>6 && ani.ass<=8}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>8 && ani.ass<10}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																	</c:choose> <span class="fc9 none"><span>菜品介绍：</span>暂无</span>
																	<div class="dLstPr">
																		<strong class="co">￥${ani.price}/份</strong><br>
																		<div class="dis_con_btn">
																			<span class="btn_insert"
																				onclick="addDishes('${ani.dishes}',${ani.price})"><b>+
																					加入菜单</b></span>
																		</div>
																	</div></td>
															</tr>
														</tbody>
													</table>
												</div>
											</c:forEach>
										</div>

										<div id="cp-3" class="tab-pane">
											<c:forEach var="ani" items="${DataPasta}">
												<div id="ULst">
													<table class="dishes_list ace-thumbnails">
														<tbody>
															<tr>
																<td class="dis_img"><a
																	href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																	title="土豆丝" data-rel="colorbox"><img
																		src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																		width="30px" height="30px"></a></td>

																<td class="tdRight"><span style=" float:right;"></span><strong
																	style="font-size:13px;"> <a href="#CmXx"
																		onclick="fXx(1036,2)">${ani.dishes}</a></strong><br> <br>
																	<c:choose>
																		<c:when test="${ani.ass>=0 && ani.ass<=2}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>2 && ani.ass<=4}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>4 && ani.ass<=6}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>6 && ani.ass<=8}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>8 && ani.ass<10}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																	</c:choose> <span class="fc9 none"><span>菜品介绍：</span>暂无</span>
																	<div class="dLstPr">
																		<strong class="co">￥${ani.price}/份</strong><br>
																		<div class="dis_con_btn">
																			<span class="btn_insert"
																				onclick="addDishes('${ani.dishes}',${ani.price})"><b>+
																					加入菜单</b></span>
																		</div>
																	</div></td>
															</tr>
														</tbody>
													</table>
												</div>
											</c:forEach>
										</div>

										<div id="cp-4" class="tab-pane">
											<c:forEach var="ani" items="${DataHot}">
												<div id="ULst">
													<table class="dishes_list ace-thumbnails">
														<tbody>
															<tr>
																<td class="dis_img"><a
																	href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																	title="土豆丝" data-rel="colorbox"><img
																		src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																		width="30px" height="30px"></a></td>

																<td class="tdRight"><span style=" float:right;"></span><strong
																	style="font-size:13px;"> <a href="#CmXx"
																		onclick="fXx(1036,2)">${ani.dishes}</a></strong><br> <br>
																	<c:choose>
																		<c:when test="${ani.ass>=0 && ani.ass<=2}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>2 && ani.ass<=4}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>4 && ani.ass<=6}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>6 && ani.ass<=8}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>8 && ani.ass<10}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																	</c:choose> <span class="fc9 none"><span>菜品介绍：</span>暂无</span>
																	<div class="dLstPr">
																		<strong class="co">￥${ani.price}/份</strong><br>
																		<div class="dis_con_btn">
																			<span class="btn_insert"
																				onclick="addDishes('${ani.dishes}',${ani.price})"><b>+
																					加入菜单</b></span>
																		</div>
																	</div></td>
															</tr>
														</tbody>
													</table>
												</div>
											</c:forEach>
										</div>

										<div id="cp-5" class="tab-pane">
											<c:forEach var="ani" items="${DataGruel}">
												<div id="ULst">
													<table class="dishes_list ace-thumbnails">
														<tbody>
															<tr>
																<td class="dis_img"><a
																	href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																	title="土豆丝" data-rel="colorbox"><img
																		src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																		width="30px" height="30px"></a></td>

																<td class="tdRight"><span style=" float:right;"></span><strong
																	style="font-size:13px;"> <a href="#CmXx"
																		onclick="fXx(1036,2)">${ani.dishes}</a></strong><br> <br>
																	<c:choose>
																		<c:when test="${ani.ass>=0 && ani.ass<=2}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>2 && ani.ass<=4}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>4 && ani.ass<=6}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>6 && ani.ass<=8}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>8 && ani.ass<10}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																	</c:choose> <span class="fc9 none"><span>菜品介绍：</span>暂无</span>
																	<div class="dLstPr">
																		<strong class="co">￥${ani.price}/份</strong><br>
																		<div class="dis_con_btn">
																			<span class="btn_insert"
																				onclick="addDishes('${ani.dishes}',${ani.price})"><b>+
																					加入菜单</b></span>
																		</div>
																	</div></td>
															</tr>
														</tbody>
													</table>
												</div>
											</c:forEach>
										</div>

										<div id="cp-6" class="tab-pane">
											<c:forEach var="ani" items="${Drink}">
												<div id="ULst">
													<table class="dishes_list ace-thumbnails">
														<tbody>
															<tr>
																<td class="dis_img"><a
																	href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																	title="土豆丝" data-rel="colorbox"><img
																		src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																		width="30px" height="30px"></a></td>

																<td class="tdRight"><span style=" float:right;"></span><strong
																	style="font-size:13px;"> <a href="#CmXx"
																		onclick="fXx(1036,2)">${ani.dishes}</a></strong><br> <br>
																	<c:choose>
																		<c:when test="${ani.ass>=0 && ani.ass<=2}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>2 && ani.ass<=4}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>4 && ani.ass<=6}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>6 && ani.ass<=8}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																		<c:when test="${ani.ass>8 && ani.ass<10}">
																			<span class="fc9 none1"><span>星级：</span><img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;<img
																				src="image/star1.gif">&nbsp;</span>
																			<br>
																		</c:when>
																	</c:choose> <span class="fc9 none"><span>菜品介绍：</span>暂无</span>
																	<div class="dLstPr">
																		<strong class="co">￥${ani.price}/份</strong><br>
																		<div class="dis_con_btn">
																			<span class="btn_insert"
																				onclick="addDishes('${ani.dishes}',${ani.price})"><b>+
																					加入菜单</b></span>
																		</div>
																	</div></td>
															</tr>
														</tbody>
													</table>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>
					<!-- /.main-content -->
					<script>
						function a() {
							var aa = document.getElementById("s");
							if (aa.style.display == 'none') {
								aa.style.display = 'block';
							} else {
								aa.style.display = 'none';
							}

						}
						function addDishes(dishes, price) {
							var rows = document.getElementById("changeTbody").rows.length; //获得行数(包括thead)
							var colums = document.getElementById("changeTbody").rows[0].cells.length; //获得列数

							var aa = [];
							var b = 0;
							for (var i = 1; i < rows; i++) {
								var a = document.getElementById("changeTbody").rows[i].cells[0].innerHTML;
								aa.push(a);

							}

							for (var j = 0; j < aa.length; j++) {
								if (aa[j] == dishes) {
									b = 1;
								}
							}

							if (b == 0) {

								var a = '<tr class="add" id="add'+dishes+'"><td style="width:130px;">'
										+ dishes
										+ '</td><td id="'+dishes+'" style="width:57px;">1</td><td style="width:57px;">'
										+ price
										+ '</td><td onClick="deleteTr(this)" ><img src="image/del.png"/></td></tr>';
								$("#changeTbody").append(a);
							} else {
								var v = $("#" + dishes).html();
								$("#" + dishes).html(parseInt(v) + 1);

							}
							var num = 0;
							var rowsa = document.getElementById("changeTbody").rows.length; //获得行数(包括thead)
							for (var z = 1; z < rowsa; z++) {
								var m = document.getElementById("changeTbody").rows[z].cells[2].innerHTML;
								var p = document.getElementById("changeTbody").rows[z].cells[1].innerHTML;
								num = parseInt(m) * parseInt(p) + num;

							}
							console.log(num);
							$("#zongjia").html(num);
						}

						function deleteTr(obj) {
							var t = $(obj).parent();
							var str = t.attr('id');
							document.getElementById(str).remove();
							var num = 0;
							var rowsa = document.getElementById("changeTbody").rows.length; //获得行数(包括thead)
							for (var z = 1; z < rowsa; z++) {
								var m = document.getElementById("changeTbody").rows[z].cells[2].innerHTML;
								var p = document.getElementById("changeTbody").rows[z].cells[1].innerHTML;
								num = parseInt(m) * parseInt(p) + num;

							}
							//console.log(num);
							$("#zongjia").html(num);
						}

						function fCdJs() {
							var JsonData = {
								tablenumber : "",
								total : "",
								invoice : ""
							};
							var aa = [];
							var hasChk = $('#checkboxc').is(':checked');
							if (hasChk) {
								JsonData.invoice = "1";
							} else {
								JsonData.invoice = "0";
							}
							var tnu = Math.ceil(Math.random() * 10);
							JsonData.tablenumber = tnu;
							JsonData.total = $("#zongjia").html();

							var mn = JSON.stringify(JsonData);

							var JsonData1 = {
								dishes : "",
								amount : ""
							}
							var vb = [];

							var rows = document.getElementById("changeTbody").rows.length; //获得行数(包括thead)

							for (var i = 1; i < rows; i++) {

								var JsonData1 = new Object();
								JsonData1.dishes = document
										.getElementById("changeTbody").rows[i].cells[0].innerHTML;

								JsonData1.amount = document
										.getElementById("changeTbody").rows[i].cells[1].innerHTML;

								vb.push(JsonData1);
							}

							var obj = JSON.stringify(vb);
							console.log(obj);

							$.post("sendIndexData.html?json1=" + mn + "&json2="
									+ obj);
							alert("提交成功!您的桌号是" + tnu);
							$("#fCdJs").remove();
						}
						function b(){
							 var bb=document.getElementById("s");
							     bb.style.display='none';
							 }
					</script>

					<div style="position:fixed; top: 170px; right: 100px; z-index: 11;">
						<div id="dis" href="" onClick="a()" style="cursor:pointer;">
							<img src="image/caidan.png">
						</div>

					</div>

					<div id="s"
						style="  position:fixed; top: 180px; right: 100px; z-index: 11;display:none;">
						<div class="Caidan_Box">
							<div class="hd">我的菜单<span style="float:right; cursor:pointer; margin: -1px 12px 0px 0;" onClick="b()"><img src="image/cdxs1.png"></span></div>
							
							<div id="dDdJs">
								<div id="dClLb">
									<table class="DdBt">
										<tbody id="changeTbody">
											<tr>
												<td style="width:130px;">菜品</td>
												<td style="width:57px;">数量</td>
												<td style="width:57px;">价格</td>
											</tr>
										</tbody>
									</table>
									<table id="dCl1" class="dClLst">
										<tbody></tbody>
									</table>
									<table class="Cmlsttb" id="tbCl71" cellspacing="3"></table>
								</div>
								<div class="con_show_js ">
									<span>总价:<span id="zongjia">0</span></span> <input
										type="checkbox" name="checkbox1" id="checkboxc"
										value="checkbox">是否需要发票
									<button id="fCdJs" class="Cursor" onclick="fCdJs()">结算</button>

								</div>

							</div>
						</div>
					</div>







					<div class="footer">
						<div class="footer-inner">
							<!-- #section:basics/footer -->
							<div class="footer-content">
								<span class="bigger-120"> <span class="blue bolder">HSPLL</span>
									<span class="bolder" style="color:#FF2020;">一步道味</span> &copy;
									2016
								</span> &nbsp; &nbsp; <a target="_blank"
									href="http://wpa.qq.com/msgrd?v=3&uin=154360916&site=qq&menu=yes"><img
									border="0" src="http://wpa.qq.com/pa?p=2:154360916:52"
									alt="HSPLL" title="HSPLL" /></a>
							</div>

							<!-- /section:basics/footer -->
						</div>
					</div>

					<a href="#" id="btn-scroll-up"
						class="btn-scroll-up btn btn-sm btn-inverse"> <i
						class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
					</a>
				</div>
				<!-- /.main-container -->

			</div>
		</div>

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery
					|| document.write("<script src='assets/js/jquery.min.js'>"
							+ "<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if ('ontouchstart' in document.documentElement)
				document
						.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
								+ "<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery-ui.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>

		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/jquery.easypiechart.min.js"></script>
		<script src="assets/js/jquery.sparkline.min.js"></script>
		<script src="assets/js/flot/jquery.flot.min.js"></script>
		<script src="assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="assets/js/flot/jquery.flot.resize.min.js"></script>



		<script src="assets/js/jquery.colorbox-min.js"></script>

		<script type="text/javascript">
			jQuery(function($) {
				var $overflow = '';
				var colorbox_params = {
					rel : 'colorbox',
					reposition : true,
					scalePhotos : true,
					scrolling : false,
					previous : '<i class="ace-icon fa fa-arrow-left"></i>',
					next : '<i class="ace-icon fa fa-arrow-right"></i>',
					close : '&times;',
					current : '{current} of {total}',
					maxWidth : '100%',
					maxHeight : '100%',
					onOpen : function() {
						$overflow = document.body.style.overflow;
						document.body.style.overflow = 'hidden';
					},
					onClosed : function() {
						document.body.style.overflow = $overflow;
					},
					onComplete : function() {
						$.colorbox.resize();
					}
				};

				$('.ace-thumbnails [data-rel="colorbox"]').colorbox(
						colorbox_params);
				$("#cboxLoadingGraphic").html(
						"<i class='ace-icon fa fa-spinner orange'></i>");//let's add a custom loading icon
			})
		</script>





		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				$('.easy-pie-chart.percentage')
						.each(
								function() {
									var $box = $(this).closest('.infobox');
									var barColor = $(this).data('color')
											|| (!$box.hasClass('infobox-dark') ? $box
													.css('color')
													: 'rgba(255,255,255,0.95)');
									var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)'
											: '#E2E2E2';
									var size = parseInt($(this).data('size')) || 50;
									$(this)
											.easyPieChart(
													{
														barColor : barColor,
														trackColor : trackColor,
														scaleColor : false,
														lineCap : 'butt',
														lineWidth : parseInt(size / 10),
														animate : /msie\s*(8|7|6)/
																.test(navigator.userAgent
																		.toLowerCase()) ? false
																: 1000,
														size : size
													});
								})

				$('.sparkline')
						.each(
								function() {
									var $box = $(this).closest('.infobox');
									var barColor = !$box
											.hasClass('infobox-dark') ? $box
											.css('color') : '#FFF';
									$(this)
											.sparkline(
													'html',
													{
														tagValuesAttribute : 'data-values',
														type : 'bar',
														barColor : barColor,
														chartRangeMin : $(this)
																.data('min') || 0
													});
								});

				//flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
				//but sometimes it brings up errors with normal resize event handlers
				$.resize.throttleWindow = false;

				var placeholder = $('#piechart-placeholder').css({
					'width' : '90%',
					'min-height' : '150px'
				});
				var data = [ {
					label : "social networks",
					data : 38.7,
					color : "#68BC31"
				}, {
					label : "search engines",
					data : 24.5,
					color : "#2091CF"
				}, {
					label : "ad campaigns",
					data : 8.2,
					color : "#AF4E96"
				}, {
					label : "direct traffic",
					data : 18.6,
					color : "#DA5430"
				}, {
					label : "other",
					data : 10,
					color : "#FEE074"
				} ]
				function drawPieChart(placeholder, data, position) {
					$.plot(placeholder, data, {
						series : {
							pie : {
								show : true,
								tilt : 0.8,
								highlight : {
									opacity : 0.25
								},
								stroke : {
									color : '#fff',
									width : 2
								},
								startAngle : 2
							}
						},
						legend : {
							show : true,
							position : position || "ne",
							labelBoxBorderColor : null,
							margin : [ -30, 15 ]
						},
						grid : {
							hoverable : true,
							clickable : true
						}
					})
				}
				drawPieChart(placeholder, data);

				/**
				we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
				so that's not needed actually.
				 */
				placeholder.data('chart', data);
				placeholder.data('draw', drawPieChart);

				//pie chart tooltip example
				var $tooltip = $(
						"<div class='tooltip top in'><div class='tooltip-inner'></div></div>")
						.hide().appendTo('body');
				var previousPoint = null;

				placeholder.on('plothover', function(event, pos, item) {
					if (item) {
						if (previousPoint != item.seriesIndex) {
							previousPoint = item.seriesIndex;
							var tip = item.series['label'] + " : "
									+ item.series['percent'] + '%';
							$tooltip.show().children(0).text(tip);
						}
						$tooltip.css({
							top : pos.pageY + 10,
							left : pos.pageX + 10
						});
					} else {
						$tooltip.hide();
						previousPoint = null;
					}

				});

				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([ i, Math.sin(i) ]);
				}

				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([ i, Math.cos(i) ]);
				}

				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([ i, Math.tan(i) ]);
				}

				var sales_charts = $('#sales-charts').css({
					'width' : '100%',
					'height' : '220px'
				});
				$.plot("#sales-charts", [ {
					label : "Domains",
					data : d1
				}, {
					label : "Hosting",
					data : d2
				}, {
					label : "Services",
					data : d3
				} ], {
					hoverable : true,
					shadowSize : 0,
					series : {
						lines : {
							show : true
						},
						points : {
							show : true
						}
					},
					xaxis : {
						tickLength : 0
					},
					yaxis : {
						ticks : 10,
						min : -2,
						max : 2,
						tickDecimals : 3
					},
					grid : {
						backgroundColor : {
							colors : [ "#fff", "#fff" ]
						},
						borderWidth : 1,
						borderColor : '#555'
					}
				});

				$('#recent-box [data-rel="tooltip"]').tooltip({
					placement : tooltip_placement
				});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();

					var off2 = $source.offset();
					//var w2 = $source.width();

					if (parseInt(off2.left) < parseInt(off1.left)
							+ parseInt(w1 / 2))
						return 'right';
					return 'left';
				}

				$('.dialogs,.comments').ace_scroll({
					size : 300
				});

				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if ("ontouchstart" in document && /applewebkit/.test(agent)
						&& /android/.test(agent))
					$('#tasks').on('touchstart', function(e) {
						var li = $(e.target).closest('#tasks li');
						if (li.length == 0)
							return;
						var label = li.find('label.inline').get(0);
						if (label == e.target || $.contains(label, e.target))
							e.stopImmediatePropagation();
					});

				$('#tasks').sortable({
					opacity : 0.8,
					revert : true,
					forceHelperSize : true,
					placeholder : 'draggable-placeholder',
					forcePlaceholderSize : true,
					tolerance : 'pointer',
					stop : function(event, ui) {
						//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
				});
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click',
						function() {
							if (this.checked)
								$(this).closest('li').addClass('selected');
							else
								$(this).closest('li').removeClass('selected');
						});

				//show the dropdowns on top or bottom depending on window height and menu position
				$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
					var offset = $(this).offset();

					var $w = $(window)
					if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
						$(this).addClass('dropup');
					else
						$(this).removeClass('dropup');
				});

			})
		</script>




		<!-- the following scripts are used in demo only for onpage help and you don't need them -->
		<link rel="stylesheet" href="assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css" />

		<script type="text/javascript">
			ace.vars['base'] = '..';
		</script>
		<script src="assets/js/ace/elements.onpage-help.js"></script>
		<script src="assets/js/ace/ace.onpage-help.js"></script>
		<script src="docs/assets/js/rainbow.js"></script>
		<script src="docs/assets/js/language/generic.js"></script>
		<script src="docs/assets/js/language/html.js"></script>
		<script src="docs/assets/js/language/css.js"></script>
		<script src="docs/assets/js/language/javascript.js"></script>
</body>
</html>
