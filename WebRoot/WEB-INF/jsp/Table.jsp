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
<link rel="stylesheet" href="assets/css/stylee.css" />


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
<script type='text/javascript'
	src='http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js'></script>
<script type="text/javascript"
	src="http://cdn.staticfile.org/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>

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

.table  thead tr th {
	text-align: center;
}

.table  tbody tr td {
	text-align: center;
}
</style>

</head>

<body class="skin-1">
	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default navbar-fixed-top ">
		<script type="text/javascript">
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
							class="user-info"> <small>欢迎</small> ${username}
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
				<li class=""><a href="User.html?username=${username}"> <i
						class="menu-icon fa fa-pencil-square-o "></i> <span
						class="menu-text">人员管理</span>
						<li class="active"><a href="table.html?username=${username}">
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
					<li class="active">餐桌管理</li>
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
					<div class="row ">

						<!-- PAGE CONTENT BEGINS -->


						<div class="  col-xs-5" style="left:25%">
							<div class="table-header" style="background-color:#ffc657">
								<i class="ace-icon glyphicon glyphicon-qrcode"></i>&nbsp;&nbsp;生成打印二维码
							</div>
							<table id="sample-table-1"
								class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="hidden-480"><i class="ace-icon fa fa-glass"></i>桌号</th>

										<th><i class="ace-icon glyphicon glyphicon-user"></i>
											是否空位</th>
										<th class="hidden-480"><i
											class="ace-icon glyphicon glyphicon-barcode"></i>在线生成二维码</th>


									</tr>
								</thead>

								<tbody>

									<tr>

										<td>1</td>

										<td class="hidden-480"><label class="inline"> <input
												id="id-button-borders1" checked="checked" type="checkbox" disabled="disabled"
												class="ace ace-switch ace-switch-5"> <span
												class="lbl middle"></span>
										</label></td>

										<td>
											<div class="hidden-sm hidden-xs btn-group">


												<a href="javascript:ovid(1)" onclick="change_Password(1)"
													class="btn btn-xs btn-warning"><i
													class="ace-icon fa fa-hand-o-right"></i></a>

											</div>

										</td>
									</tr>
									<tr>

										<td>2</td>

										<td class="hidden-480"><label class="inline"> <input
												id="id-button-borders2" checked="checked" type="checkbox" disabled="disabled"
												class="ace ace-switch ace-switch-5"> <span
												class="lbl middle"></span>
										</label></td>

										<td>
											<div class="hidden-sm hidden-xs btn-group">


												<a href="javascript:ovid(2)" onclick="change_Password(2)"
													class="btn btn-xs btn-warning"><i
													class="ace-icon fa fa-hand-o-right"></i></a>

											</div>

										</td>
									</tr>
									<tr>

										<td>3</td>

										<td class="hidden-480"><label class="inline"> <input
												id="id-button-borders3" checked="checked" type="checkbox" disabled="disabled"
												class="ace ace-switch ace-switch-5"> <span
												class="lbl middle"></span>
										</label></td>

										<td>
											<div class="hidden-sm hidden-xs btn-group">


												<a href="javascript:ovid(3)" onclick="change_Password(3)"
													class="btn btn-xs btn-warning"><i
													class="ace-icon fa fa-hand-o-right"></i></a>

											</div>

										</td>
									</tr>
									<tr>

										<td>4</td>

										<td class="hidden-480"><label class="inline"> <input
												id="id-button-borders4" checked="checked" type="checkbox" disabled="disabled"
												class="ace ace-switch ace-switch-5"> <span
												class="lbl middle"></span>
										</label></td>

										<td>
											<div class="hidden-sm hidden-xs btn-group">


												<a href="javascript:ovid(4)" onclick="change_Password(4)"
													class="btn btn-xs btn-warning"><i
													class="ace-icon fa fa-hand-o-right"></i></a>

											</div>

										</td>
									</tr>
									<tr>

										<td>5</td>

										<td class="hidden-480"><label class="inline"> <input
												id="id-button-borders5" checked="checked" type="checkbox" disabled="disabled"
												class="ace ace-switch ace-switch-5"> <span
												class="lbl middle"></span>
										</label></td>

										<td>
											<div class="hidden-sm hidden-xs btn-group">


												<a href="javascript:ovid(5)" onclick="change_Password(5)"
													class="btn btn-xs btn-warning"><i
													class="ace-icon fa fa-hand-o-right"></i></a>

											</div>

										</td>
									</tr>

									<tr>

										<td>6</td>

										<td class="hidden-480"><label class="inline"> <input
												id="id-button-borders6" checked="checked" type="checkbox" disabled="disabled"
												class="ace ace-switch ace-switch-5"> <span
												class="lbl middle"></span>
										</label></td>

										<td>
											<div class="hidden-sm hidden-xs btn-group">


												<a href="javascript:ovid(6)" onclick="change_Password(6)"
													class="btn btn-xs btn-warning"><i
													class="ace-icon fa fa-hand-o-right"></i></a>

											</div>

										</td>
									</tr>






								</tbody>
							</table>
						</div>




						<div class="change_Pass_style" id="change_Pass1">
							<div id="qrcode1" style="margin:50px 0 0 80px;"></div>
						</div>
						<div class="change_Pass_style" id="change_Pass2">
							<div id="qrcode2" style="margin:50px 0 0 80px;"></div>
						</div>
						<div class="change_Pass_style" id="change_Pass3">
							<div id="qrcode3" style="margin:50px 0 0 80px;"></div>
						</div>
						<div class="change_Pass_style" id="change_Pass4">
							<div id="qrcode4" style="margin:50px 0 0 80px;"></div>
						</div>
						<div class="change_Pass_style" id="change_Pass5">
							<div id="qrcode5" style="margin:50px 0 0 80px;"></div>
						</div>
						<div class="change_Pass_style" id="change_Pass6">
							<div id="qrcode6" style="margin:50px 0 0 80px;"></div>
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
		$(document).ready(function(){ 
		   
		   $.post("TableNumber.html",function(data){
		   for(var i=0;i<data.length;i++){
		       document.getElementById("id-button-borders"+data[i]).checked = false;
		   }
		 
		   });
		});
			function modify() {
				$('.text_info').attr("disabled", false);
				$('.text_info').addClass("add");
				$('#Personal').find('.xinxi').addClass("hover");
				$('#Personal').find('.btn-success').css({
					'display' : 'block'
				});
			};
			$(".admin_modify_style").height($(window).height());
			$(".recording_style").width($(window).width() - 400);
			$(window).resize(function() {
				$(".admin_modify_style").height($(window).height());
				$(".recording_style").width($(window).width() - 400);
			});

			function change_Password(id) {
				layer
						.open({
							type : 1,
							title : '',
							area : [ '300px', '300px' ],
							shadeClose : true,
							content : $('#change_Pass' + id),
							btn : [ '确认打印' ],
							yes : function(index, layero) {

								if (!$("#c_mew_pas").val
										|| $("#c_mew_pas").val() != $(
												"#Nes_pas").val()) {
									return false;
								} else {
									layer.alert('打印成功！', {
										title : '提示框',
										icon : 1,
									});
									layer.close(index);
								}
							}
						});
			}
		</script>

		<script>
			jQuery('#qrcode1').qrcode({
				width : 150,
				height : 150,
				text : "1"
			});

			jQuery('#qrcode2').qrcode({
				width : 150,
				height : 150,
				text : "2"
			});
			jQuery('#qrcode3').qrcode({
				width : 150,
				height : 150,
				text : "3"
			});
			jQuery('#qrcode4').qrcode({
				width : 150,
				height : 150,
				text : "4"
			});
			jQuery('#qrcode5').qrcode({
				width : 150,
				height : 150,
				text : "5"
			});
			jQuery('#qrcode6').qrcode({
				width : 150,
				height : 150,
				text : "6"
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