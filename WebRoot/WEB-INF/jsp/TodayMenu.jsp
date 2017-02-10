<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
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
			<link rel="stylesheet" href="../assets/css/ace-part2.min.css" />
		<![endif]-->
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="../assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="../assets/js/html5shiv.min.js"></script>
		<script src="../assets/js/respond.min.js"></script>
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
									class="ace-icon fa fa-power-off"></i> 退出登录
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

					<div style="float:left; margin-left:10px;">
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
				<li class="active"><a
					href="TodayMenu.html?username=${username}"> <i
						class="menu-icon fa fa-bookmark "></i> <span class="menu-text">今日菜单</span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="Menu.html?username=${username}"> <i
						class="menu-icon fa fa-cutlery"></i> <span class="menu-text">完整菜单</span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="changeToday.html?username=${username}">
						<i class="menu-icon fa fa-pencil-square-o "></i> <span
						class="menu-text">修改今日菜单</span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="User.html?username=${username}"> <i
						class="menu-icon fa fa-pencil-square-o "></i> <span
						class="menu-text">人员管理</span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="table.html?username=${username}"> <i
						class="menu-icon fa fa-pencil-square-o "></i> <span
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
								<i class="menu-icon fa fa-caret-right"></i> 每日报表 <span
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
				<ul class="breadcrumb" style="margin-top:10px">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a
						href="login.html">登录</a></li>
					<li class="active">今日菜单</li>
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
							month = "0" + day
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

			<div class="page-content" id="changeDiv">
				<div class="page-content-area">
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="row">
								<div class="col-xs-12">
									<div class="table-header">
										<i class="fa fa-coffee " style="padding-right:10px;"></i>查看今日菜单
									</div>

									<!-- <div class="table-responsive"> -->

									<!-- <div class="dataTables_borderWrap"> -->

									<div>
										<table id="sample-table-2"
											class="table table-striped table-bordered table-hover"
											style="font-size:10px;">
											<thead>
												<tr>
													<th class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></th>
													<th style="width:100px;"><i
														class="ace-icon glyphicon 				glyphicon-list-alt"></i>菜品系别</th>
													<th style="width:150px;"><i
														class="ace-icon fa fa-glass"></i>菜品名称</th>
													<th style="width:100px;"><i class="ace-icon fa">$</i>菜品价格</th>
													<th style="width:150px;"><i
														class="ace-icon glyphicon glyphicon-star"></i>菜品评星</th>
													<th style="width:200px"><i
														class="ace-icon glyphicon glyphicon-picture"></i>菜品美图</th>

													<th><i class="ace-icon glyphicon glyphicon-edit"></i>添加今日推荐</th>
												</tr>
											</thead>
											<tbody style="height:auto;">
												<c:forEach var="ani" items="${pagehelper.list}">
													<tr>
														<td class="center"><label class="position-relative">
																<input type="checkbox" class="ace" /> <span class="lbl"></span>
														</label></td>
														<td><a href="#">${ani.sort}</a></td>
														<td>${ani.dishes}<span id="span${ani.id}"
															style="display:none">${ani.dishes}</span> <c:choose>
																<c:when test="${ani.characteristic==1}">
																	<span id="tuijian${ani.id}" class="sticker tuijian"
																		style="display:block;"> <span
																		class="label label-danger arrowed-in"> 推荐 </span>
																	</span>
																</c:when>
																<c:when test="${ani.characteristic==0}">
																	<span id="tuijian${ani.id}" class="sticker tuijian"
																		style="display:none;"> <span
																		class="label label-danger arrowed-in"> 推荐 </span>
																	</span>
																</c:when>
															</c:choose>
														</td>
														<td class="hidden-480">${ani.price}</td>
														<c:choose>
															<c:when test="${ani.ass>0 && ani.ass<=2}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
															<c:when test="${ani.ass>2 && ani.ass<=4}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
															<c:when test="${ani.ass>4 && ani.ass<=6}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
															<c:when test="${ani.ass>6 && ani.ass<=8}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
															<c:when test="${ani.ass>8 && ani.ass<=10}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
														</c:choose>
														<td class="hidden-480"><div
																class="ace-thumbnails clearfix	 action-buttons fr"
																style=" color:#B3B3B3">
																<span>查看大图</span><a
																	href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																	title="${ani.dishes}" data-rel="colorbox"><img
																	class="cpimg"
																	src=http://${IP}:${port}/SelfOrder/image/${ani.image}
																	width="30px" height="30px" style=" "></a>
															</div></td>

														<td><div class="hidden-sm hidden-xs">
																<span id="xianshi${ani.id}" class="green"
																	style="cursor:pointer;"><i
																	class="ace-icon fa fa-pencil bigger-130"></i>点击添加</span><span
																	id="yincang${ani.id}" class="red"
																	style="margin-left:20px; cursor:pointer;"><i
																	class="ace-icon fa fa-trash-o bigger-130"></i>点击去除</span>
															</div> <script type="text/javascript">
																document
																		.getElementById("xianshi"
																				+ ${ani.id}).onclick = function() {

																	document
																			.getElementById("tuijian"
																					+ ${ani.id}).style.display = "block";

																	var dishes = $(
																			"#span"
																					+ ${ani.id})
																			.text();

																	var characteristic = '1';
																	$
																			.get("changecharacteristic.html?dishes="
																					+ dishes
																					+ "&characteristic="
																					+ characteristic);
																}
																document
																		.getElementById("yincang"
																				+ ${ani.id}).onclick = function() {
																	document
																			.getElementById("tuijian"
																					+ ${ani.id}).style.display = "none";
																	var dishes = $(
																			"#span"
																					+ ${ani.id})
																			.text();
																	var characteristic = '0';
																	$
																			.get("changecharacteristic.html?dishes="
																					+ dishes
																					+ "&characteristic="
																					+ characteristic);
																}
															</script>
															<div class="hidden-md hidden-lg">
																<div class="inline position-relative">
																	<button
																		class="btn btn-minier btn-yellow dropdown-toggle"
																		data-toggle="dropdown" data-position="auto">
																		<i
																			class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																	</button>
																	<ul
																		class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																		<li><a href="#" class="tooltip-info"
																			data-rel="tooltip" title="View"> <span
																				class="blue"> <i
																					class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
																		</a></li>
																		<li><a href="#" class="tooltip-success"
																			data-rel="tooltip" title="Edit"> <span
																				class="green"> <i
																					class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
																		</a></li>
																		<li><a href="#" class="tooltip-error"
																			data-rel="tooltip" title="Delete"> <span
																				class="red"> <i
																					class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
																		</a></li>
																	</ul>
																</div>
															</div></td>
													</tr>
												</c:forEach>

											</tbody>
										</table>
									</div>
									<!-- 分页 -->
									<div id="page_div">
										<%@ include file="/WEB-INF/jsp/common/pagehelper.jsp"%>
									</div>
									<!-- 分页结束 -->
								</div>
							</div>
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
		<script type="text/javascript">
			function queryAllPerson(pageNum, pageSize) {

				$("#changeDiv").load(
						"TodayMenuPage.html?pageNum=" + pageNum + "&pageSize="
								+ pageSize);

			}
		</script>


		<div class="footer">
			<div class="footer-inner">
				<!-- #section:basics/footer -->
				<div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">HSPLL</span>
						<span class="bolder" style="color:#FF2020;">一步道味</span> &copy;
						2016
					</span> &nbsp; &nbsp; <a target="_blank"
						href="http://wpa.qq.com/msgrd?v=3&uin=154360916&site=qq&menu=yes"><img
						border="0" src="http://wpa.qq.com/pa?p=2:154360916:52" alt="HSPLL"
						title="HSPLL" /></a>
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
 window.jQuery || document.write("<script src='../assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='../assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->
	<script src="assets/js/jquery.colorbox-min.js"></script>
	<!-- inline scripts related to this page -->
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

			$('.ace-thumbnails [data-rel="colorbox"]')
					.colorbox(colorbox_params);
			$("#cboxLoadingGraphic").html(
					"<i class='ace-icon fa fa-spinner orange'></i>");//let's add a custom loading icon
		})
	</script>



	<!--[if lte IE 8]>
		  <script src="../assets/js/excanvas.min.js"></script>
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
		jQuery(function($) {
			var oTable1 = $('#sample-table-2')
			//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
			.dataTable({
				bAutoWidth : false,
				"aoColumns" : [ {
					"bSortable" : false
				}, null, null, null, null, null, {
					"bSortable" : false
				} ],
				"aaSorting" : [],

			//,
			//"sScrollY": "200px",
			//"bPaginate": false,

			//"sScrollX": "100%",
			//"sScrollXInner": "120%",
			//"bScrollCollapse": true,
			//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
			//you may want to wrap the table inside a "div.dataTables_borderWrap" element

			//"iDisplayLength": 50
			});
			/**
			var tableTools = new $.fn.dataTable.TableTools( oTable1, {
				"sSwfPath": "../../copy_csv_xls_pdf.swf",
			    "buttons": [
			        "copy",
			        "csv",
			        "xls",
					"pdf",
			        "print"
			    ]
			} );
			$( tableTools.fnContainer() ).insertBefore('#sample-table-2');
			 */

			$(document).on(
					'click',
					'th input:checkbox',
					function() {
						var that = this;
						$(this).closest('table').find(
								'tr > td:first-child input:checkbox').each(
								function() {
									this.checked = that.checked;
									$(this).closest('tr').toggleClass(
											'selected');
								});
					});

			$('[data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('table')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}

		})
	</script>





	<!-- the following scripts are used in demo only for onpage help and you don't need them -->

	<script type="text/javascript">
		ace.vars['base'] = '..';
	</script>
	<script src="assets/js/ace/elements.onpage-help.js"></script>
	<script src="assets/js/ace/ace.onpage-help.js"></script>

</body>
</html>