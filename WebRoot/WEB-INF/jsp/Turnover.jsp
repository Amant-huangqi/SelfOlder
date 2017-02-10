<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="assets/css/colorbox.css" />

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

<!-- 引入 Bootstrap -->
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="http://cdn.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
<script src="http://cdn.hcharts.cn/highstock/highstock.js"></script>
<script src="http://cdn.hcharts.cn/highmaps/highmaps.js"></script>

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

#container .highcharts-title {
	display: block;
}

#container .highcharts-subtitle {
	display: block;
}

#container svg g text {
	display: block;
}

#container svg text {
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
							
							
							<li><a href="login.html"> <i class="ace-icon fa fa-power-off"></i>
									退出登录
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
				<li ><a href="Menu.html?username=${username}">
						<i class="menu-icon fa fa-cutlery"></i> <span class="menu-text">完整菜单</span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="changeToday.html?username=${username}">
						<i class="menu-icon fa fa-pencil-square-o "></i> <span
						class="menu-text">修改今日菜单</span>
				</a> <b class="arrow"></b></li>
				<li ><a href="User.html?username=${username}"> <i
						class="menu-icon fa fa-pencil-square-o "></i> <span
						class="menu-text">人员管理</span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="table.html?username=${username}">
								<i class="menu-icon fa fa-pencil-square-o "></i> <span
								class="menu-text">餐桌管理</span>
						</a> <b class="arrow"></b></li>
				<li class="active"><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-calendar"></i> <span class="menu-text">菜评&
							报表 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li ><a href="Assess.html?username=${username}"> <i
								class="menu-icon fa fa-caret-right"></i> 每日菜评
						</a> <b class="arrow"></b></li>
						<li class="active"><a href="Turnover.html?username=${username}"> <i
								class="menu-icon fa fa-caret-right"></i> 每月报表 <span
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
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="login.html">登录</a>
					</li>
					<li class="active">每月报表</li>
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

			<div class="col-lg-6" style="width:160px">
				<div class="input-group">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button" style="height:34px">月份</button>
					</span> <select class="form-control" id="select-spinnera"
						onchange="javascript:changeData();" style="float:left;">
						<option value=" "></option>
						<option value="1">1月</option>
						<option value="2">2月</option>
						<option value="3">3月</option>
						<option value="4">4月</option>
						<option value="5">5月</option>
						<option value="6">6月</option>
						<option value="7">7月</option>
						<option value="8">8月</option>
						<option value="9">9月</option>
						<option value="10">10月</option>
						<option value="11">11月</option>
						<option value="12">12月</option>
					</select>
				</div>
				<!-- /input-group -->
			</div>
			<div id="container"></div>




		</div>
		<!-- /.col -->
	</div>
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
					<span class="bolder" style="color:#FF2020;">一步道味</span> &copy; 2016
				</span> &nbsp; &nbsp;  <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=154360916&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:154360916:52" alt="HSPLL" title="HSPLL"/></a>
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

	<script type="text/javascript">
		$(document).ready(function() {
			var myDate = new Date();
			var month = myDate.getMonth() + 1;
			var year = myDate.getFullYear();
			$("#select-spinnera").val(month);
			console.log(month);
			console.log(year);
			getData(year, month);
		});
		function changeData() {
			var myDate = new Date();
			var year = myDate.getFullYear();
			var month = document.getElementById("select-spinnera").value;
			getData(year, month);
		}
		function getData(year, month) {

			$.get("getMonthTurnover.html?year=" + year + "&month=" + month,
					function(data) {

						var b = [];
						for (var i = 0; i < data.length; i++) {
							b[i] = data[i];

						}

						$('#container').highcharts(
								{
									title : {
										text : month + '月营业额',
										x : -20
									//center
									},
									subtitle : {
										text : '一步到味',
										x : -20
									},
									xAxis : {
										categories : [ '1号', '2号', '3号', '4号',
												'5号', '6号', '7号', '8号', '9号',
												'10号', '11号', '12号', '13号',
												'14号', '15号', '16号', '17号',
												'18号', '19号', '20号', '21号',
												'22号', '23号', '24号', '25号',
												'26号', '27号', '28号', '29号',
												'30号', '31号' ]
									},
									yAxis : {
										title : {
											text : '元 (￥)'
										},
										plotLines : [ {
											value : 0,
											width : 1,
											color : '#808080'
										} ]
									},
									tooltip : {
										valueSuffix : '元'
									},
									legend : {
										layout : 'vertical',
										align : 'right',
										verticalAlign : 'middle',
										borderWidth : 0
									},
									series : [ {
										name : '营业额',
										data : b
									} ]
								});
					});
		};
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