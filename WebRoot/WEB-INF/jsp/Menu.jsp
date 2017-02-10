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
<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />

<!-- text fonts -->
<link rel="stylesheet" href="assets/css/ace-fonts.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/colorbox.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
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

.change th {
	background: rgba(232, 55, 61, 0.88);
	color: #FFF;
}

.change1 th {
	background: #2a8bcb;
	color: #FFF;
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
				<li><a href="TodayMenu.html?username=${username}"> <i
						class="menu-icon fa fa-bookmark "></i> <span class="menu-text">今日菜单</span>
				</a> <b class="arrow"></b></li>
				<li class="active"><a href="Menu.html?username=${username}"> <i
						class="menu-icon fa fa-cutlery"></i> <span class="menu-text">完整菜单</span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="changeToday.html?username=${username}"> <i
						class="menu-icon fa fa-pencil-square-o "></i> <span
						class="menu-text">修改今日菜单</span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="User.html?username=${username}"> <i
						class="menu-icon fa fa-pencil-square-o "></i> <span
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
						<li class=""><a href="Assess.html?username=${username}"> <i
								class="menu-icon fa fa-caret-right"></i> 总体菜评
						</a> <b class="arrow"></b></li>
						<li class=""><a href="Turnover.html?username=${username}"> <i
								class="menu-icon fa fa-caret-right"></i> 每日报表 <span
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
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="login.html">登录</a>
					</li>
					<li class="active">完整菜单</li>
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
									<div class="table-header"
										style="background-color:rgba(232, 55, 61, 0.88)">
										<i class="fa fa-coffee " style="padding-right:10px;"></i>查看完整菜单<a
											href="javascript:add();" id="bootbox-options1"
											style="color:#FFF; float:right; padding-right:10px;"><i
											class="ace-icon glyphicon glyphicon-plus"></i>添加菜品</a>
									</div>

									<!-- <div class="table-responsive"> -->

									<!-- <div class="dataTables_borderWrap"> -->

									<div style="height:445px">
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
													<th style="width:350px"><i
														class="ace-icon glyphicon glyphicon-picture"></i>菜品美图</th>

													<th><i class="ace-icon glyphicon glyphicon-edit"></i>菜品管理</th>
												</tr>
											</thead>
											<tbody style="height:auto;" id="tbodya">
												<c:forEach var="ani" items="${pagehelper.list}">
													<tr id="xiajia${ani.id}">
														<td class="center"><label class="position-relative">
																<input type="checkbox" class="ace" /> <span class="lbl"></span>
														</label></td>
														<td id="td1${ani.id}">${ani.sort}</td>
														<td id="td2${ani.id}">${ani.dishes}</td>
														<td class="hidden-480" id="td3${ani.id}">${ani.price}</td>
														<c:choose>
															<c:when test="${ani.ass>=0 && ani.ass<=2}">
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

														<td class="hidden-480">

															<form id="frm3" enctype="multipart/form-data"
																action="SubmitImg.html" method="post" target="id_iframe">
																<div class="form-group ace-thumbnails clearfix	  ">
																	<div class="action-buttons"
																		style="float:right; margin-top: -2px;">
																		<a
																			href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																			id="a${ani.id}" title="${ani.dishes}"
																			data-rel="colorbox"><img class="cpimg"
																			src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																			id="img${ani.id}" width="30px" height="30px"
																			style=" "></a> <input type="submit"
																			class="btn btn-warning btn-xs"
																			onclick="javascript:changeImage(${ani.id},'${IP}',${port});"
																			value="确认更改" /> <input type="hidden" name="id"
																			value="${ani.id}" />

																	</div>
																	<!-- #section:custom/file-input -->
																	<div style="float:left">
																		<input type="file" id="id-input-file-2"
																			name="uploadPhoto"
																			class="input-small id-input-file-2${ani.id}" />
																	</div>

																</div>
															</form> <iframe id="id_iframe" name="id_iframe"
																style="display:none;"></iframe>
														</td>
														<td><div class="hidden-sm hidden-xs">
																<span id="bootbox-options${ani.id}" class="green"
																	style="cursor:pointer;"><i
																	class="ace-icon fa fa-pencil bigger-130"></i><a
																	href="javascript:change(${ani.id});" id="${ani.id}">点击修改</a></span>
																<span id="xj${ani.id}" class="red"
																	style=" cursor:pointer; margin-left:20px;"><i
																	class="ace-icon fa fa-trash-o bigger-130"></i><a
																	href="javascript:deleteMenu(${ani.id});">点击下架</a></span>
															</div> <script type="text/javascript">
																document
																		.getElementById("xj"
																				+ ${ani.id}).onclick = function() {

																	document
																			.getElementById("xiajia"
																					+ ${ani.id}).style.display = "none";
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






		<script type="text/javascript">
			jQuery(function($) {
				/**
				$('#myTab a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
				  console.log(e.target.getAttribute("href"));
				})
					
				$('#accordion').on('shown.bs.collapse', function (e) {
					console.log($(e.target).is('#collapseTwo'))
				});
				 */

				$('#myTab a[data-toggle="tab"]').on('shown.bs.tab',
						function(e) {
							if ($(e.target).attr('href') == "#home")
								drawChartNow();
						})

				/**
					//go to next tab, without user clicking
					$('#myTab > .active').next().find('> a').trigger('click');
				 */

				$('#accordion-style').on('click', function(ev) {
					var target = $('input', ev.target);
					var which = parseInt(target.val());
					if (which == 2)
						$('#accordion').addClass('accordion-style2');
					else
						$('#accordion').removeClass('accordion-style2');
				});

				//$('[href="#collapseTwo"]').trigger('click');

				var oldie = /msie\s*(8|7|6)/.test(navigator.userAgent
						.toLowerCase());
				$('.easy-pie-chart.percentage').each(function() {
					$(this).easyPieChart({
						barColor : $(this).data('color'),
						trackColor : '#EEEEEE',
						scaleColor : false,
						lineCap : 'butt',
						lineWidth : 8,
						animate : oldie ? false : 1000,
						size : 75
					}).css('color', $(this).data('color'));
				});

				$('[data-rel=tooltip]').tooltip();
				$('[data-rel=popover]').popover({
					html : true
				});

				$("#gritter-remove").on(ace.click_event, function() {
					$.gritter.removeAll();
					return false;
				});

				///////

				$("#bootbox-regular").on(ace.click_event, function() {
					bootbox.prompt("What is your name?", function(result) {
						if (result === null) {

						} else {

						}
					});
				});

				$("#bootbox-confirm").on(ace.click_event, function() {
					bootbox.confirm("Are you sure?", function(result) {
						if (result) {
							//
						}
					});
				});

				/**
					$("#bootbox-confirm").on(ace.click_event, function() {
						bootbox.confirm({
							message: "Are you sure?",
							buttons: {
							  confirm: {
								 label: "OK",
								 className: "btn-primary btn-sm",
							  },
							  cancel: {
								 label: "Cancel",
								 className: "btn-sm",
							  }
							},
							callback: function(result) {
								if(result) alert(1)
							}
						  }
						);
					});
				 **/

				

				$('#spinner-opts small').css({
					display : 'inline-block',
					width : '60px'
				})

				var slide_styles = [ '', 'green', 'red', 'purple', 'orange',
						'dark' ];
				var ii = 0;
				$("#spinner-opts input[type=text]").each(
						function() {
							var $this = $(this);
							$this.hide().after('<span />');
							$this.next().addClass('ui-slider-small').addClass(
									"inline ui-slider-"
											+ slide_styles[ii++
													% slide_styles.length])
									.css({
										'width' : '125px'
									}).slider({
										value : parseInt($this.val()),
										range : "min",
										animate : true,
										min : parseInt($this.data('min')),
										max : parseInt($this.data('max')),
										step : parseFloat($this.data('step')),
										slide : function(event, ui) {
											$this.val(ui.value);
											spinner_update();
										}
									});
						});

				$.fn.spin = function(opts) {
					this.each(function() {
						var $this = $(this), data = $this.data();

						if (data.spinner) {
							data.spinner.stop();
							delete data.spinner;
						}
						if (opts !== false) {
							data.spinner = new Spinner($.extend({
								color : $this.css('color')
							}, opts)).spin(this);
						}
					});
					return this;
				};

				function spinner_update() {
					var opts = {};
					$('#spinner-opts input[type=text]').each(function() {
						opts[this.name] = parseFloat(this.value);
					});
					$('#spinner-preview').spin(opts);
				}

				$('#id-pills-stacked').removeAttr('checked').on('click',
						function() {
							$('.nav-pills').toggleClass('nav-stacked');
						});

			});
		</script>
		<!-- /.main-content -->
		<script type="text/javascript">
			function changeImage(id,ip,port) {
			   //alert(ip);
				var a = $(".id-input-file-2" + id).val();
				a = a.replace(/\\/g, "/");
				
				var arr = a.split('/');
				var b = arr[arr.length - 1];
				
				$("#img" + id).attr('src',
						"http://"+ip+":"+port+"/SelfOrder/image/" + b);
				$("#a" + id).attr("href",
						"http://"+ip+":"+port+"/SelfOrder/image/" + b);
			}

			function add() {
				bootbox
						.dialog({
							message : "<form id='frm2'><table id='sample-table-1' class='table table-striped table-bordered table-hover'><thead><tr class='change1'><th><i class='ace-icon glyphicon 				glyphicon-list-alt'></i>菜品系别</th><th><i class='ace-icon fa fa-glass'></i>菜品名称</th><th class='hidden-480'><i class='ace-icon fa'>$</i>菜品价格</th></tr></thead><tbody><tr><td><ahref='#'><input  class='input-small' type='text'   placeholder='' name='sort'/></a></td><td><input style='width:100%' class='input-small' type='text'  placeholder='' name='dishes'></td><td class='hidden-480'><input class='input-small' type='text'  placeholder='' name='price'></td></tr></tbody></table></form>",
							buttons : {
								"success" : {
									"label" : "<i class='ace-icon fa fa-check'></i>保存",
									"className" : "btn-sm btn-success",
									"callback" : function() {
										var a = $("#frm2").serialize();
										var sort = $("#sort").val();
										var dishes = $("#dishes").val();
										var price = $("#price").val();
										var aa = ' ';
										if (sort != aa && dishes != aa
												&& price != aa) {
											$.post("addMenu.html?id=" + 1 + "&"
													+ a);
											
											
											$("#modal-content").hide();
										} else {
											alert("数据不能为空");
										}

									}
								},
								"click" : {
									"label" : "<i class='ace-icon fa fa-reply icon-only'></i><span onclick='formReset()'>重置</span>",
									"className" : "btn-sm btn-primary",
									"callback" : function formReset() {
										document.getElementById("frm1").reset();
										Example.show("Primary button");
									}
								},

							}
						});
			}

			function deleteMenu(id) {
				$.post("deleteMenu.html?id=" + id);
			}

			function change(id) {

				bootbox
						.dialog({
							message : "<form id='frm1'><table id='sample-table-2' class='table table-striped table-bordered table-hover'><thead><tr class='change'><th><i class='ace-icon glyphicon 				glyphicon-list-alt'></i>菜品系别</th><th><i class='ace-icon fa fa-glass'></i>菜品名称</th><th class='hidden-480'><i class='ace-icon fa'>$</i>菜品价格</th></tr></thead><tbody><tr><td><ahref='#'><input  class='input-small' type='text'   placeholder='' name='sort' id='sort'/></a></td><td><input style='width:100%' class='input-small' type='text'  placeholder='' name='dishes' id='dishes'></td><td class='hidden-480'><input class='input-small' type='text'  placeholder='' name='price' id='price'></td></tr></tbody></table></form>",
							buttons : {
								"success" : {
									"label" : "<i class='ace-icon fa fa-check'></i>保存",
									"className" : "btn-sm btn-success",
									"callback" : function() {
										var sort = $("#sort").val();
										var dishes = $("#dishes").val();
										var price = $("#price").val();
										var a = '';
										if (sort != a) {
											$('#td1' + id).html(sort);
										}

										if (dishes != a) {
											$('#td2' + id).html(dishes);
										}

										if (price != a) {
											$('#td3' + id).html(price);
										}

										var a = $("#frm1").serialize();
										$.post("updataMenu.html?id=" + id + "&"
												+ a);
									}
								},
								"click" : {
									"label" : "<i class='ace-icon fa fa-reply icon-only'></i><span onclick='formReset()'>重置</span>",
									"className" : "btn-sm btn-primary",
									"callback" : function formReset() {
										document.getElementById("frm2").reset();
										Example.show("Primary button");
									}
								},

							}
						});

			}

			$("#huangqi").click(function() {
				$("#myModal").hide();
			});
			function queryAllPerson(pageNum, pageSize) {

				$("#changeDiv").load(
						"MenuPage.html?pageNum=" + pageNum + "&pageSize="
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
 window.jQuery || document.write("<script src='../assets/js/jquery1x.min.js'>"+"<"+"/script>");
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

	<!-- page specific plugin scripts -->
	<script src="assets/js/jquery-ui.min.js"></script>


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
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="assets/js/jquery.maskedinput.min.js"></script>
	<script src="assets/js/jquery.autosize.min.js"></script>

	<!--可删-->
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/chosen.jquery.min.js"></script>
	<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
	<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/date-time/bootstrap-timepicker.min.js"></script>
	<script src="assets/js/date-time/moment.min.js"></script>
	<script src="assets/js/date-time/daterangepicker.min.js"></script>
	<script src="assets/js/date-time/bootstrap-datetimepicker.min.js"></script>
	<script src="assets/js/bootstrap-colorpicker.min.js"></script>
	<script src="assets/js/jquery.knob.min.js"></script>
	<script src="assets/js/jquery.autosize.min.js"></script>
	<script src="assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="assets/js/jquery.maskedinput.min.js"></script>
	<script src="assets/js/bootstrap-tag.min.js"></script>
	<script src="assets/js/typeahead.jquery.min.js"></script>


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

	<script type="text/javascript">
		//下面用于图片上传预览功能
		function setImagePreview(avalue) {

			var docObj = document.getElementById("doc");

			var imgObjPreview = document.getElementById("preview");
			if (docObj.files && docObj.files[0]) {
				//火狐下，直接设img属性
				imgObjPreview.style.display = 'block';
				imgObjPreview.style.width = '30px';
				imgObjPreview.style.height = '30px';
				//imgObjPreview.src = docObj.files[0].getAsDataURL();

				//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
				imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
			} else {
				//IE下，使用滤镜
				docObj.select();
				var imgSrc = document.selection.createRange().text;
				var localImagId = document.getElementById("localImag");
				//必须设置初始大小
				localImagId.style.width = "30px";
				localImagId.style.height = "30px";
				//图片异常的捕捉，防止用户修改后缀来伪造图片
				try {
					localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
					localImagId.filters
							.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
				} catch (e) {
					alert("您上传的图片格式不正确，请重新选择!");
					return false;
				}
				imgObjPreview.style.display = 'none';
				document.selection.empty();
			}
			return true;
		}
	</script>
	<script type="text/javascript">
		jQuery(function($) {
			$('#id-disable-check').on('click', function() {
				var inp = $('#form-input-readonly').get(0);
				if (inp.hasAttribute('disabled')) {
					inp.setAttribute('readonly', 'true');
					inp.removeAttribute('disabled');
					inp.value = "This text field is readonly!";
				} else {
					inp.setAttribute('disabled', 'disabled');
					inp.removeAttribute('readonly');
					inp.value = "This text field is disabled!";
				}
			});

			$('.chosen-select').chosen({
				allow_single_deselect : true
			});
			//resize the chosen on window resize

			$(window).off('resize.chosen').on('resize.chosen', function() {
				$('.chosen-select').each(function() {
					var $this = $(this);
					$this.next().css({
						'width' : $this.parent().width()
					});
				})
			}).trigger('resize.chosen');

			$('#chosen-multiple-style').on('click', function(e) {
				var target = $(e.target).find('input[type=radio]');
				var which = parseInt(target.val());
				if (which == 2)
					$('#form-field-select-4').addClass('tag-input-style');
				else
					$('#form-field-select-4').removeClass('tag-input-style');
			});

			$('[data-rel=tooltip]').tooltip({
				container : 'body'
			});
			$('[data-rel=popover]').popover({
				container : 'body'
			});

			$('textarea[class*=autosize]').autosize({
				append : "\n"
			});
			$('textarea.limited').inputlimiter({
				remText : '%n character%s remaining...',
				limitText : 'max allowed : %n.'
			});

			$.mask.definitions['~'] = '[+-]';
			$('.input-mask-date').mask('99/99/9999');
			$('.input-mask-phone').mask('(999) 999-9999');
			$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
			$(".input-mask-product").mask("a*-999-a999", {
				placeholder : " ",
				completed : function() {
					alert("You typed the following: " + this.val());
				}
			});

			$("#input-size-slider").css('width', '200px').slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 8,
						step : 1,
						slide : function(event, ui) {
							var sizing = [ '', 'input-sm', 'input-lg',
									'input-mini', 'input-small',
									'input-medium', 'input-large',
									'input-xlarge', 'input-xxlarge' ];
							var val = parseInt(ui.value);
							$('#form-field-4').attr('class', sizing[val]).val(
									'.' + sizing[val]);
						}
					});

			$("#input-span-slider").slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 12,
						step : 1,
						slide : function(event, ui) {
							var val = parseInt(ui.value);
							$('#form-field-5').attr('class', 'col-xs-' + val)
									.val('.col-xs-' + val);
						}
					});

			//"jQuery UI Slider"
			//range slider tooltip example
			$("#slider-range")
					.css('height', '200px')
					.slider(
							{
								orientation : "vertical",
								range : true,
								min : 0,
								max : 100,
								values : [ 17, 67 ],
								slide : function(event, ui) {
									var val = ui.values[$(ui.handle).index() - 1]
											+ "";

									if (!ui.handle.firstChild) {
										$(
												"<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>")
												.prependTo(ui.handle);
									}
									$(ui.handle.firstChild).show().children()
											.eq(1).text(val);
								}
							}).find('a').on('blur', function() {
						$(this.firstChild).hide();
					});

			$("#slider-range-max").slider({
				range : "max",
				min : 1,
				max : 10,
				value : 2
			});

			$("#slider-eq > span").css({
				width : '90%',
				'float' : 'left',
				margin : '15px'
			}).each(function() {
				// read initial values from markup and remove that
				var value = parseInt($(this).text(), 10);
				$(this).empty().slider({
					value : value,
					range : "min",
					animate : true

				});
			});

			$("#slider-eq > span.ui-slider-purple").slider('disable');//disable third item

			$('#id-input-file-1 , #id-input-file-2').ace_file_input({
				no_file : '点击更改图片',
				btn_choose : 'Choose',
				btn_change : 'Change',
				droppable : false,
				onchange : null,
				thumbnail : false
			//| true | large
			//whitelist:'gif|png|jpg|jpeg'
			//blacklist:'exe|php'
			//onchange:''
			//
			});
			//pre-show a file name, for example a previously selected file
			//$('#id-input-file-1').ace_file_input('show_file_list', ['myfile.txt'])

			$('#id-input-file-3').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'ace-icon fa fa-cloud-upload',
				droppable : true,
				thumbnail : 'small'//large | fit
				//,icon_remove:null//set null, to hide remove/reset button
				/**,before_change:function(files, dropped) {
							//Check an example below
							//or examples/file-upload.html
							return true;
						}*/
				/**,before_remove : function() {
							return true;
						}*/
				,
				preview_error : function(filename, error_code) {
					//name of the file that failed
					//error_code values
					//1 = 'FILE_LOAD_FAILED',
					//2 = 'IMAGE_LOAD_FAILED',
					//3 = 'THUMBNAIL_FAILED'
					//alert(error_code);
				}

			}).on('change', function() {
				//console.log($(this).data('ace_input_files'));
				//console.log($(this).data('ace_input_method'));
			});

			//datepicker plugin
			//link
			$('.date-picker').datepicker({
				autoclose : true,
				todayHighlight : true
			})
			//show datepicker when clicking on the icon
			.next().on(ace.click_event, function() {
				$(this).prev().focus();
			});

			//or change it into a date range picker
			$('.input-daterange').datepicker({
				autoclose : true
			});

			//to translate the daterange picker, please copy the "examples/daterange-fr.js" contents here before initialization
			$('input[name=date-range-picker]').daterangepicker({
				'applyClass' : 'btn-sm btn-success',
				'cancelClass' : 'btn-sm btn-default',
				locale : {
					applyLabel : 'Apply',
					cancelLabel : 'Cancel',
				}
			}).prev().on(ace.click_event, function() {
				$(this).next().focus();
			});

			$('#timepicker1').timepicker({
				minuteStep : 1,
				showSeconds : true,
				showMeridian : false
			}).next().on(ace.click_event, function() {
				$(this).prev().focus();
			});

			$('#date-timepicker1').datetimepicker().next().on(ace.click_event,
					function() {
						$(this).prev().focus();
					});

			$('#colorpicker1').colorpicker();

			$('#simple-colorpicker-1').ace_colorpicker();
			//$('#simple-colorpicker-1').ace_colorpicker('pick', 2);//select 2nd color
			//$('#simple-colorpicker-1').ace_colorpicker('pick', '#fbe983');//select #fbe983 color
			//var picker = $('#simple-colorpicker-1').data('ace_colorpicker')
			//picker.pick('red', true);//insert the color if it doesn't exist

			$(".knob").knob();

			var tag_input = $('#form-field-tags');
			try {
				tag_input.tag({
					placeholder : tag_input.attr('placeholder'),
					//enable typeahead by specifying the source array
					source : ace.vars['US_STATES'],//defined in ace.js >> ace.enable_search_ahead
				/**
				 //or fetch data from database, fetch those that match "query"
				 source: function(query, process) {
				  $.ajax({url: 'remote_source.php?q='+encodeURIComponent(query)})
				  .done(function(result_items){
					process(result_items);
				  });
				}
				 */
				})

				//programmatically add a new
				var $tag_obj = $('#form-field-tags').data('tag');
				$tag_obj.add('Programmatically Added');
			} catch (e) {
				//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
				tag_input.after(
						'<textarea id="' + tag_input.attr('id') + '" name="'
								+ tag_input.attr('name') + '" rows="3">'
								+ tag_input.val() + '</textarea>').remove();
				//$('#form-field-tags').autosize({append: "\n"});
			}

			//////////

			//typeahead.js
			//example taken from plugin's page at: https://twitter.github.io/typeahead.js/examples/
			var substringMatcher = function(strs) {
				return function findMatches(q, cb) {
					var matches, substringRegex;

					// an array that will be populated with substring matches
					matches = [];

					// regex used to determine if a string contains the substring `q`
					substrRegex = new RegExp(q, 'i');

					// iterate through the pool of strings and for any string that
					// contains the substring `q`, add it to the `matches` array
					$.each(strs, function(i, str) {
						if (substrRegex.test(str)) {
							// the typeahead jQuery plugin expects suggestions to a
							// JavaScript object, refer to typeahead docs for more info
							matches.push({
								value : str
							});
						}
					});

					cb(matches);
				}
			}

			$('input.typeahead').typeahead({
				hint : true,
				highlight : true,
				minLength : 1
			}, {
				name : 'states',
				displayKey : 'value',
				source : substringMatcher(ace.vars['US_STATES'])
			});

			/////////
			$('#modal-form input[type=file]').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'ace-icon fa fa-cloud-upload',
				droppable : true,
				thumbnail : 'large'
			})

			//chosen plugin inside a modal will have a zero width because the select element is originally hidden
			//and its width cannot be determined.
			//so we set the width after modal is show
			$('#modal-form').on('shown.bs.modal', function() {
				$(this).find('.chosen-container').each(function() {
					$(this).find('a:first-child').css('width', '210px');
					$(this).find('.chosen-drop').css('width', '210px');
					$(this).find('.chosen-search input').css('width', '200px');
				});
			})
			/**
			 //or you can activate the chosen plugin after modal is shown
			 //this way select element becomes visible with dimensions and chosen works as expected
			 $('#modal-form').on('shown', function () {
						$(this).find('.modal-chosen').chosen();
					})
			 */

		});
	</script>

	<!-- the following scripts are used in demo only for onpage help and you don't need them -->

	<script type="text/javascript">
		ace.vars['base'] = '..';
	</script>
	<script src="assets/js/ace/elements.onpage-help.js"></script>
	<script src="assets/js/ace/ace.onpage-help.js"></script>

</body>
</html>