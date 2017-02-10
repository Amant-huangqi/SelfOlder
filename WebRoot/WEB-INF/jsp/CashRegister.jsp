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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link rel="stylesheet" href="assets/css/style.css" media="screen"
	type="text/css" />

<script>
	window.history.forward(1);
	// this is important for IEs
	var polyfilter_scriptpath = '/js/';
</script>





<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>一步道味-收银管理系统</title>
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
						<small> 收银管理 </small>
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


					<li class="purple" id="changeNeedCall"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-bell icon-animated-bell"></i> <span
							class="badge badge-important">${number}</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-exclamation-triangle"></i> ${number}桌呼叫</li>
							<c:forEach var="ani" items="${needCall}">
								<li><a href="#">
										<div class="clearfix">
											<span class="pull-left"> <i
												class="btn btn-xs no-hover btn-pink fa fa-comment"></i>${ani}号桌
											</span>
										</div>
								</a></li>
							</c:forEach>

						</ul></li>



					<!-- #section:basics/navbar.user_menu -->
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="assets/avatars/user.jpg" alt="HSPLL's Photo" /> <span
							class="user-info"> <small>欢迎,管理员</small><span>${username}</span>
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close"
							style="background:#FFF">


							<li><a href="login.html"> <i
									class="ace-icon fa fa-power-off"></i> 退出登陆
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
			$(document).ready(function() {
				//do something  
				alert('a');
			});
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
				<!--  <li class="active"><a href="#"> <i
						class="menu-icon ace-icon fa fa-shopping-cart"></i> <span
						class="menu-text">收银管理/未支付</span>
				</a> <b class="arrow"></b></li>
				<li class="active"><a href="#"> <i
						class="menu-icon ace-icon fa fa-shopping-cart"></i> <span
						class="menu-text">收银管理/已支付</span>
				</a> <b class="arrow"></b></li>
				<li class="active"><a href="#"> <i
						class="menu-icon ace-icon fa fa-shopping-cart"></i> <span
						class="menu-text">打印发票</span>
				</a> <b class="arrow"></b></li>
				-->
				<li class="active"><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-calendar"></i> <span class="menu-text">收银管理</span>
						<b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class="active"><a href="CashRegister.html?username=${username}"> <i
								class="menu-icon fa fa-caret-right"></i>未支付
						</a> <b class="arrow"></b></li>
						<li class=""><a href="CashRegisterTwo.html?username=${username}"> <i
								class="menu-icon fa fa-caret-right"></i>已支付
						</a> <b class="arrow"></b></li>
                        <li class=""><a href="CashRegisterThr.html?username=${username}"> <i
								class="menu-icon fa fa-caret-right"></i>打印发票
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
					<li class="active">收银管理</li>
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
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="row">
								<div class="col-xs-12">
									<div class="table-header">
										<i class="fa fa-coffee " style="padding-right:10px;"></i>查看收银信息
									</div>

									<!-- <div class="table-responsive"> -->

									<!-- <div class="dataTables_borderWrap"> -->

									<div>
										<div id="changeTable">
											<table id="sample-table-2"
												class="table table-striped table-bordered table-hover"
												style="text-align:center">
												<thead>
													<tr>
														<th class="center" style="width:100px;"><i
															class="ace-icon fa fa-glass"></i>桌号</th>
														<th class="center" style="width:100px;"><i
															class="ace-icon glyphicon glyphicon-star"></i>账单状态</th>
														<th class="center" style="width:150px;"><i
															class="ace-icon fa">$</i>支付方式</th>
														<th class="center" style="width:200px;"><i
															class="ace-icon glyphicon glyphicon-list-alt"></i>查看账单</th>
														<th class="center" style="width:200px;"><i
															class="ace-icon fa">$</i>支付</th>
														<th class="center" style="width:200px;"><i
															class="ace-icon glyphicon glyphicon-picture"></i>打印发票</th>

														<th class="center" style="width:200px;"><i
															class="ace-icon glyphicon glyphicon-edit"></i>离席重置</th>
													</tr>
												</thead>
												<tbody style="height:auto;">
													<c:forEach var="ani" items="${CashRegister}">
													<c:choose>
													<c:when test="${ani.paymentstatus==0}">
														<tr id="tr${ani.id}">
															<td class="center">${ani.tablenumber}</td>
															<c:choose>
																<c:when test="${ani.paymentstatus==1}">
																	<td id="tda${ani.tablenumber}">已支付</td>
																</c:when>
																<c:when test="${ani.paymentstatus==2}">
																	<td id="tda${ani.tablenumber}">已支付</td>
																</c:when>
																<c:when test="${ani.paymentstatus==0}">
																	<td id="tda${ani.tablenumber}">未支付</td>
																</c:when>
															</c:choose>
															<c:choose>
																<c:when test="${ani.paymentstatus==0}">
																	<td id="tdb${ani.tablenumber}">无</td>
																</c:when>
															<c:when test="${ani.paymentstatus==1}">
																	<td id="tdb${ani.tablenumber}">现金支付</td>
																</c:when>
																<c:when test="${ani.paymentstatus==2}">
																	<td id="tdb${ani.tablenumber}">网上支付</td>
																</c:when>
															</c:choose>
															<td class="hidden-480"><button
																	class="btn btn-pink btn-xs md-trigger"
																	data-modal="modal-3"
																	onclick="javascript:LookBill(${ani.tablenumber});">
																	<i class="ace-icon glyphicon glyphicon-list"></i> 账单信息
																</button></td>
															<c:choose>
																<c:when test="${ani.paymentstatus==0}">
																	<td><button id="btn${ani.tablenumber}"
																			class="btn btn-yellow btn-xs md-trigger"
																			onclick="javascript:LookPay(${ani.tablenumber});">
																			<i class="ace-icon fa">$</i> 结账支付
																		</button></td>
																</c:when>
																<c:when test="${ani.paymentstatus==1}">
																	<td><button class="btn btn- btn-xs">
																			<i class="ace-icon fa">$</i> 结账支付
																		</button></td>
																</c:when>
																<c:when test="${ani.paymentstatus==2}">
																	<td><button class="btn btn- btn-xs">
																			<i class="ace-icon fa">$</i> 结账支付
																		</button></td>
																</c:when>
															</c:choose>

															<c:choose>
																<c:when test="${ani.invoice==1}">
																	<td class="hidden-480"><button
																			class="btn btn-purple btn-xs">
																			<i class="ace-icon glyphicon glyphicon-pencil"></i>
																			打印发票
																		</button></td>
																</c:when>
																<c:when test="${ani.invoice==0}">
																	<td class="hidden-480"><button class="btn  btn-xs">
																			<i class="ace-icon glyphicon glyphicon-pencil"></i>
																			打印发票
																		</button></td>
																</c:when>
															</c:choose>

															<td><button id="chongzhi${ani.id}"
																	class="btn btn-inverse btn-xs"
																	onClick="Restart(${ani.id},${ani.tablenumber})">
																	<i class="ace-icon fa fa-undo"></i> 离席重置
																</button></td>
														</tr>
														</c:when>
														</c:choose>
													</c:forEach>

												</tbody>
											</table>
										</div>

										<div id="changeDiv"
											style="display:none;position:absolute;top:20px;left:300px; overflow:auto;z-index:5;max-height:500px;"></div>


										<script type="text/javascript">
											function Restart(id, tablenumber) {
												$
														.post(
																"Restart.html?tablenumber="
																		+ tablenumber,
																function(data) {
																	if (data == "重置完成") {
																		document
																				.getElementById("tr"
																						+ id).style.display = "none";
																		alert(data);
																	} else {
																		alert(data);
																	}

																});
											}
											function LookBill(id) {

												$("#changeDiv").show();
												$("#changeDiv").load(
														"getTableData.html?tablenumber="
																+ id);
											}
											function LookPay(id) {

												$("#changeDiv").show();
												$("#changeDiv").load(
														"getPayData.html?tablenumber="
																+ id);
											}
											function modal3guanbi() {
												$("#changeDiv").hide();
											}
											function jisuan(tablenumber, total) {

												var zongjine = document
														.getElementById("zongjine").innerHTML;
												document
														.getElementById("zhaoling").value = "";
												var value = document
														.getElementById("shoukuan").value;
												if (value * 1 <= 0) {
													alert("输入有误");
													return;
												}
												var zhaoling = value * 1
														- zongjine * 1;
												if (zhaoling < 0) {
													alert("输入有误");
													return;
												}
												document
														.getElementById("zhaoling").value = zhaoling;
												gettime();
												document
														.getElementById("shoukuanqueren").style.display = "none";
												$
														.post("CashPay.html?tablenumber="
																+ tablenumber
																+ "&total="
																+ total);
												$("#tda" + tablenumber).html(
														"已支付");
												$("#tdb" + tablenumber).html(
														"现金支付");
												$("#btn" + tablenumber)
														.removeClass(
																"btn-yellow");

											}
											function gettime() {
												var d = new Date();
												var year = d.getFullYear();
												var month = d.getMonth() + 1;
												var day = d.getDate();
												var h = d.getHours();
												var mins = d.getMinutes();
												var s = d.getSeconds();

												if (h < 10)
													h = "0" + h;
												if (mins < 10)
													mins = "0" + mins;
												if (s < 10)
													s = "0" + s;
												//var shows="结算时间："+year+"-"+mounth+"-"+day+"&nbsp;"+h+"-"+mins;
												//document.getElementById("time").value=shows;
												var shows = "结算时间:" + year
														+ "-" + month + "-"
														+ day + " " + h + ":"
														+ mins + ":" + s;
												document.getElementById("time").innerHTML = shows;
											}
											setInterval(
													function() {
														$("#changeTable")
																.load(
																		"CashRegisterChange.html");
														$("#changeNeedCall")
																.load(
																		"needCall.html");

													}, 10000);
										</script>

									</div>



								</div>
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




	<div class="footer">
		<div class="footer-inner">
			<!-- #section:basics/footer -->
			<div class="footer-content">
				<span class="bigger-120"> <span class="blue bolder">HSPLL</span>
					<span class="bolder" style="color:#FF2020;">一步道味</span> &copy; 2016
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

		});
	</script>


	<script src="assets/js/index.js"></script>


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
