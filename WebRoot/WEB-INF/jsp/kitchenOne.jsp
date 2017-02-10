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
<link rel="stylesheet" href="assets/css/style.css" media="screen"
	type="text/css" />

<script>
window.history.forward(1);
	// this is important for IEs
	var polyfilter_scriptpath = '/js/';
</script>
<script src="http://cdn.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>

<link rel="stylesheet" href="assets/css/chufang.css" type="text/css">


<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>一步道味-厨房管理系统</title>
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
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->




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
						<small> 厨房管理 </small>
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
			<!--  
				<li class=""><a href="#"> <i
						class="menu-icon ace-icon fa fa-shopping-cart"></i> <span
						class="menu-text">厨房管理</span>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class="active"><a href="kitchenOne.html?username=${username}"> <i
								class="menu-icon fa fa-caret-right"></i> 桌号账单
						</a> <b class="arrow"></b></li>

						<li ><a href="kitchenTwo.html?username=${username}"> <i
								class="menu-icon fa fa-caret-right"></i> 菜品账单
						</a> <b class="arrow"></b></li>
					</ul></li> -->
					
					
					<li class="active"><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-calendar"></i> <span class="menu-text">厨房管理 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class="active"><a href="kitchenOne.html?username=${username}">
								<i class="menu-icon fa fa-caret-right"></i>  桌号账单
						</a> <b class="arrow"></b></li>
						<li class=""><a href="kitchenTwo.html?username=${username}">
								<i class="menu-icon fa fa-caret-right"></i> 菜品账单 
						</a> <b class="arrow"></b></li>

				
			</ul>
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
					<li class="active">厨房管理</li>
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


									<!-- <div class="table-responsive"> -->

									<!-- <div class="dataTables_borderWrap"> -->
									<div>
										<!--中间左侧-->
										<div class="col-xs-7" id="ct-rt1" style="float:left;">
											<div class="bianqian" id="bianqian">
												<ul>
													<c:forEach var="ani" items="${kitchenOne}">
														<li id="li${ani.tablenumber}"
															onclick="javascript:showRight(${ani.tablenumber},${ani.carryOutNumber});"><a
															href="#" style="background:url(image/160.png)">
																<div
																	style="position:absolute; margin-top:-20px;margin-left:-15px;">
																	<img id="dingzi" src="image/ding-1.png" width="25"
																		height="25" />
																</div>
																<table style="text-align:center">
																	<tr>
																		<td colspan="2">桌号:<span
																			style="font-size:20px;color:red;">${ani.tablenumber}</span>
																		</td>

																	</tr>
																	<tr>
																		<!--提交订单时间-->
																		<td  style="text-align:left">时间:<f:formatDate value="${ani.time}" type="time" dateStyle="short"/></td>
																		
																	</tr>
																	<tr>
																		<td colspan="2"  style="text-align:left;padding-top:6px">点餐数量:<span>${ani.orderingNumber}</span></td>
																	</tr>
																	<tr>
																		<td colspan="2"  style="text-align:left;padding-top:6px">未上数量:<span style="color:red;">${ani.carryOutNumber}</span></td>
																	</tr>
																</table>

														</a></li>
													</c:forEach>




												</ul>

											</div>
										</div>
										<!--中间左侧-->
										<script>
											//function chuxian() {
											///document
											//.getElementById("ct-rt").style.display = "none";
											//	document
											//	.getElementById("ct-rt5").style.display = "block";
											//	}//
										</script>
										<!--中间右侧-->
										<div class="col-xs-5 right1" id="ct-rt"
											style="float:right;display:block;background:#fffae7;">
											<div id="ct-rt-1"
												style="width:100%; text-align:center; font-size:20px;padding:50px 0 50px 0">
												<p>点击左侧账单查看详细菜单</p>

											</div>
										</div>
										
										<div id="AddTablenumber" style="display:none"></div>
                                        <div id="AddCarryOutNumber" style="display:none"></div>
										<!--中间右侧-->
										<script>
										setInterval(
													function() {
														$("#bianqian")
																.load(
																		"changekitchenOne.html");
												var a = $("#AddTablenumber").text();
                                                var b = $("#AddCarryOutNumber").text();
                                                var c = '';
                                                if(a!=c){
                                                    $("#ct-rt")
														.load(
																"kitchenOneData.html?tablenumber="
																		+ a
																		+ "&carryOutNumber="
																		+ b);
                                                }
                                                

													}, 10000);
											function end(number) {
												var arr = new Array();
												var b = 0;
												var rows = document
														.getElementById("mytable").rows.length; //获得行数(包括thead)

												for (var i = 3; i < rows - 1; i++) {
													var a = document
															.getElementById("mytable").rows[i].cells[3].innerHTML;

													if (a == '完成') {
														b++;
													}
												}
												if (b == rows - 4) {
													var n = '<div id="ct-rt-1" style="width:100%; text-align:center; font-size:20px;padding:50px 0 50px 0"> <p>点击左侧账单查看详细菜单</p></div>';
													$("#li" + number).hide();
													$("#ct-rt").empty();
													$("#ct-rt").append(n);
													var c= '';
													$("#AddTablenumber").text(c);
                                                $("#AddCarryOutNumber").text(c);
												} else {
													alert("菜品未全部完成");
												}

											}
											function showRight(number,
													carryOutNumber) {
													
                                                $("#AddTablenumber").text(number);
                                                $("#AddCarryOutNumber").text(carryOutNumber);
                                                
												$("#ct-rt")
														.load(
																"kitchenOneData.html?tablenumber="
																		+ number
																		+ "&carryOutNumber="
																		+ carryOutNumber);
											}
											function bianse(obj, id,
													tablenumber, dishes,
													dishstatus) {
												var a = obj.className;
												if(a!='no'){
												   obj.parentNode.style.background = "#b4c2cc";
												var wenzi = obj.innerHTML;
												document
														.getElementById("zhuangtai"
																+ id).innerHTML = wenzi;
												$
														.post("changeDishstatus.html?tablenumber="
																+ tablenumber
																+ "&dishes="
																+ dishes
																+ "&dishstatus="
																+ dishstatus);
												obj.className = 'no';
												}										
											}
											
										</script>
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

		})
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
