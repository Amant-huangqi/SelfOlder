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

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet" href="assets/css/ace-fonts.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/style.css" />


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
<script src="assets/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="assets/js/layer.js" type="text/javascript"></script>

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<style type="text/css">
.cpimg {
	margin: -4px 0px -5px 0px;
	border-radius: 3px;
	border: 1px solid #AAA;
	padding: 2px;
}

.fr a {
	float: right;
}

.tuijian {
	float: right;
	line-height: 0px;
	margin: -8px;
	display: none;
}
</style>

</head>

<body class="skin-1">
	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default navbar-fixed-top ">
		<script type="text/javascript">
			window.history.forward(1);
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>
		<div class="navbar-container" id="navbar-container">
			<!-- #section:basics/sidebar.mobile.toggle -->
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<!-- /section:basics/sidebar.mobile.toggle -->
			<div class="navbar-header pull-left">
				<!-- #section:basics/navbar.layout.brand -->
				<a href="#" class="navbar-brand">
					<div
						style="height:33px; background:url(image/app_logo.png); width:33px;float:left;"></div>
					<div
						style="height:31px; margin:2px 0 0 6px; background:url(image/9.png); width:132px;float:left;"></div>
					<div style="float:left; margin:5px 0 0 6px;">
						<small> 后台管理 </small>
					</div>
				</a>

				<!-- /section:basics/navbar.layout.brand -->

				<!-- #section:basics/navbar.toggle -->

				<!-- /section:basics/navbar.toggle -->
			</div>

			<!-- #section:basics/navbar.dropdown -->
			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">

					<!-- #section:basics/navbar.user_menu -->
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="assets/avatars/user.jpg" alt="HSPLL's Photo" /> <span
							class="user-info"> <small>欢迎</small>${username}
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>
						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close"
							style="background:#FFF">

							<li><a href="login.html"> <i
									class="ace-icon fa fa-power-off"></i> 退出
							</a></li>
						</ul></li>

					<!-- /section:basics/navbar.user_menu -->
				</ul>
			</div>

			<!-- /section:basics/navbar.dropdown -->
		</div>
		<!-- /.navbar-container -->
	</div>

	<!-- /section:basics/navbar.layout -->
	<div class="main-container " id="main-container ">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<!-- #section:basics/sidebar -->
		<div id="sidebar" class="sidebar   responsive"
			style="display: block;position: fixed;top: 45px;bottom: 0;left: 0;display: block;margin: 0;padding: 0;z-index:1;">
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'fixed')
				} catch (e) {
				}
			</script>
			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<!--<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>-->

					<!-- #section:basics/sidebar.layout.shortcuts -->
					<!--<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>-->

					<div style="float:left; margin-left:10px">
						<span class="label label-lg 		label-yellow arrowed-right">主题</span>
					</div>
					<select id="skin-colorpicker" class="hide">
						<option data-skin="skin-1" value="#222A2D">#222A2D</option>
						<option data-skin="skin-2  " value=" #C6487E">#C6487E</option>
						<option data-skin=" no-skin" value="#438EB9">#438EB9</option>
						<option data-skin="skin-3" value="#EA7C1A">#EA7C1A</option>
					</select>

					<!-- /section:basics/sidebar.layout.shortcuts -->
				</div>
				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>
					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">
				<li><a href="TodayMenu.html?username=${username}"> <i
						class="menu-icon fa fa-bookmark "></i> <span class="menu-text">今日菜单</span>
				</a> <b class="arrow"></b></li>
				<li><a href="Menu.html?username=${username}"> <i
						class="menu-icon fa fa-cutlery"></i> <span class="menu-text">完整菜单</span>
				</a> <b class="arrow"></b></li>
				<li><a href="changeToday.html?username=${username}"> <i
						class="menu-icon fa fa-pencil-square-o "></i> <span
						class="menu-text">修改今日菜单</span>
				</a> <b class="arrow"></b></li>
				<li class="active"><a href="User.html?username=${username}">
						<i class="menu-icon fa fa-pencil-square-o "></i> <span
						class="menu-text">人员管理</span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="table.html?username=${username}">
								<i class="menu-icon fa fa-pencil-square-o "></i> <span
								class="menu-text">餐桌管理</span>
						</a> <b class="arrow"></b></li>
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-calendar"></i> <span class="menu-text">菜评&
							报表 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class=""><a href="Assess.html?username=${username}">
								<i class="menu-icon fa fa-caret-right"></i> 总体菜评
						</a> <b class="arrow"></b></li>
						<li class=""><a href="Turnover.html?username=${username}">
								<i class="menu-icon fa fa-caret-right"></i> 每月报表 <span
								class="badge badge-transparent tooltip-error" title="注意严谨">
									<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
							</span>
						</a> <b class="arrow"></b></li>
					</ul></li>
			</ul>
			<!-- /.nav-list -->

			<!-- #section:basics/sidebar.layout.minimize -->
			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i class="ace-icon fa fa-angle-double-left"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>

			<!-- /section:basics/sidebar.layout.minimize -->
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'collapsed')
				} catch (e) {
				}
			</script>
		</div>

		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<!-- #section:basics/content.breadcrumbs -->
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a
						href="login.html">登录</a></li>
					<li class="active">人员管理</li>
				</ul>
				<!-- /.breadcrumb -->

				<!-- #section:basics/content.searchbox -->
				<!--<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span> 	
						</form>
					</div> -->
				<!-- /.nav-search -->

				<div id='date' class=" label label-success arrowed pull-right"
					style="margin:10px 8px 0 0; font-size:14px; line-height:12px;">
					<script>
						getdates();
					</script>
				</div>
				<script language="javascript">
					function getdates() {
						var w_array = new Array("星期天", "星期一", "星期二", "星期三",
								"星期四", "星期五", "星期六");
						var d = new Date();
						var year = d.getFullYear();
						var month = d.getMonth() + 1;
						var day = d.getDate();
						var week = d.getDay();
						var h = d.getHours();
						var mins = d.getMinutes();
						var s = d.getSeconds();
						if (month < 10)
							month = "0" + month
						if (day < 10)
							day = "0" + day
						if (h < 10)
							h = "0" + h
						if (mins < 10)
							mins = "0" + mins
						if (s < 10)
							s = "0" + s
						var shows = "当前时间&nbsp;: <span>" + year + "-" + month
								+ "-" + day + " " + h + ":" + mins + ":" + s
								+ " " + w_array[week] + "</span>";
						document.getElementById("date").innerHTML = shows;
						setTimeout("getdates()", 1000);
					}
					getdates();
				</script>
				<!-- /section:basics/content.searchbox -->
			</div>

			<!-- /section:basics/content.breadcrumbs -->

			<div class="page-content">
				<div class="page-content-area">
					<div class="row">

						<!-- PAGE CONTENT BEGINS -->

						<c:forEach var="ani" items="${User}">
							<c:choose>
								<c:when test="${ani.permission!='boss'}">

									
										<div
											class="widget-box widget-color-dark light-border  col-xs-2"
											style=" width:320px;height:250px;margin-left:45px;">
											<div class="widget-header"
												style="border-radius: 10px 10px 0 0;">
												<h5 class="widget-title smaller">人员信息</h5>
											</div>




											<div class="widget-main padding-6"
												style="border:1px solid #CCC;">


												<div class="admin_info_style col-sm-10"
													style=" width:260px;">
													<div id="Personal${ani.id}">
													<form id="form${ani.id}">
														<div class="xinxi">
															<div class="form-group">
																<label
																	class="col-sm-3 control-label no-padding-right lihe"
																	for="form-field-1" style=" padding-left: 0px;">用户名:</label>
																<div>
																	<input type="text" name="username" id="username${ani.id}"
																		value="${ani.username}"
																		class=" text_info lihe input-small changeInput${ani.id}"
																		disabled="disabled" >
																</div>
															</div>
															<div class="form-group">
																<label
																	class="col-sm-3 control-label no-padding-right lihe"
																	for="form-field-1" style=" padding-left: 0px;">密&nbsp;&nbsp;&nbsp;&nbsp;码:</label>
																<div>
																	<input name="password" type="password" 
																		id="password${ani.id}" value="${ani.password}"
																		class=" text_info lihe input-small changeInput${ani.id}"
																		disabled="disabled">
																</div>
															</div>

															<div class="form-group" style="padding-top: 3px;">
																<label
																	class="col-sm-3 control-label no-padding-right lihe"
																	for="form-field-1" style=" padding-left: 0px;">权&nbsp;&nbsp;&nbsp;&nbsp;限:
																</label>
																<div class="col-sm-9">

																	<div class="add_sex">
																		<c:choose>
																			<c:when test="${ani.permission=='收银'}">
																				<label><input name="permission" type="radio"
																					class="ace" checked="checked" value="1"><span
																					class="lbl">收银</span></label>&nbsp;&nbsp; <label><input
																					name="permission" type="radio" class="ace" value="2"><span
																					class="lbl" >厨房</span></label>
																				<label><input name="permission" type="radio" value="3"
																					class="ace"><span class="lbl" >后台</span></label>
																			</c:when>
																			<c:when test="${ani.permission=='厨房'}">
																				<label><input name="permission" type="radio"
																					class="ace" value="1"><span class="lbl">收银</span></label>&nbsp;&nbsp; <label><input
																					name="permission" type="radio" class="ace" value="2"
																					checked="checked"><span class="lbl"
																					>厨房</span></label>
																				<label><input name="permission" type="radio"
																					class="ace" value="3"><span class="lbl" >后台</span></label>
																			</c:when>
																			<c:when test="${ani.permission=='后台'}">
																				<label><input name="permission" type="radio"
																					class="ace" value="1"><span class="lbl">收银</span></label>&nbsp;&nbsp; <label><input
																					name="permission" type="radio" class="ace" value="2"><span
																					class="lbl" >厨房</span></label>
																				<label><input name="permission" type="radio" value="3"
																					class="ace" checked="checked"><span
																					class="lbl" >后台</span></label>
																			</c:when>
																		</c:choose>

																	</div>
																</div>
															</div>


														</div>
														</form>
													</div>
												</div>



												<div class="Button_operation clearfix"
													style="padding:0 12px;">
													<button onclick="modify(${ani.id});" style="float:left;"
														class="btn btn-danger radius btn-xs" type="button">修改信息</button>
														<!--  <button onclick="deleteData(${ani.id});"
													style="display:block;margin-left:80px;"
													class="btn btn-success radius btn-xs" type="button">删除信息</button>-->
													<button onclick="save_info(${ani.id});"
														style="display:block; float:right;"
														class="btn btn-success radius btn-xs" type="button">保存修改</button>
													
												</div>

											</div>


										</div>
									
								</c:when>
							</c:choose>
						</c:forEach>








						<!-- /.row -->
					</div>
					<!-- /.page-content-area -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->




			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120"> <span class="blue bolder">HSPLL</span>
							<span class="bolder" style="color:#FF2020;">一步道味</span> &copy;
							2016
						</span> &nbsp; &nbsp; <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=154360916&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:154360916:52" alt="HSPLL" title="HSPLL"/></a>
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

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery.colorbox-min.js"></script>
		<!-- inline scripts related to this page -->


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
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script>
			function deleteData(id){
			   $.post("changeUser.html?id="+id);
			}
			//按钮点击事件
			function modify(id) {
				$('.changeInput' + id).attr("disabled", false);
				$('.changeInput' + id).addClass("add");
				$('#Personal' + id).find('.xinxi').addClass("hover");
				$('#Personal' + id).find('.btn-success').css({
					'display' : 'block'
				});
			};
			function save_info(id) {
				$('#Personal' + id).find('.xinxi').removeClass("hover");
				$('#Personal' + id).find('.text_info').removeClass("add").attr(
						"disabled", true);
				$('#Personal' + id).find('.btn-success').css({
					'display' : 'block'
				});
				var a= $("#form"+id).serialize(); 
				var b=$("#username"+id).val();
				var c=$("#password"+id).val(); 
				$.post("changeUser.html?username="+b+"&password="+c+"&"+a+"&id="+id);

			}

			//初始化宽度、高度    
			$(".admin_modify_style").height($(window).height());
			$(".recording_style").width($(window).width() - 400);
			//当文档窗口发生改变时 触发  
			$(window).resize(function() {
				$(".admin_modify_style").height($(window).height());
				$(".recording_style").width($(window).width() - 400);
			});
		</script>

		<!-- the following scripts are used in demo only for onpage help and you don't need them -->
		<link rel="stylesheet" href="assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css" />
		<script type="text/javascript">
			ace.vars['base'] = '..';
		</script>
		<script src="assets/js/ace/elements.onpage-help.js"></script>
		<script src="assets/js/ace/ace.onpage-help.js"></script>
</body>
</html>