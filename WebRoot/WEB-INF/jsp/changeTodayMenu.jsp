<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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
									<th style="width:150px;"><i class="ace-icon fa fa-glass"></i>菜品名称</th>
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
												<td><i class="message-star ace-icon fa fa-star orange2"></i></td>
											</c:when>
											<c:when test="${ani.ass>2 && ani.ass<=4}">
												<td><i class="message-star ace-icon fa fa-star orange2"></i><i
													class="message-star ace-icon fa fa-star orange2"></i></td>
											</c:when>
											<c:when test="${ani.ass>4 && ani.ass<=6}">
												<td><i class="message-star ace-icon fa fa-star orange2"></i><i
													class="message-star ace-icon fa fa-star orange2"></i><i
													class="message-star ace-icon fa fa-star orange2"></i></td>
											</c:when>
											<c:when test="${ani.ass>6 && ani.ass<=8}">
												<td><i class="message-star ace-icon fa fa-star orange2"></i><i
													class="message-star ace-icon fa fa-star orange2"></i><i
													class="message-star ace-icon fa fa-star orange2"></i><i
													class="message-star ace-icon fa fa-star orange2"></i></td>
											</c:when>
											<c:when test="${ani.ass>8 && ani.ass<=10}">
												<td><i class="message-star ace-icon fa fa-star orange2"></i><i
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
													src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
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
															"#span" + ${ani.id})
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
															"#span" + ${ani.id})
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
													<button class="btn btn-minier btn-yellow dropdown-toggle"
														data-toggle="dropdown" data-position="auto">
														<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
													</button>
													<ul
														class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
														<li><a href="#" class="tooltip-info"
															data-rel="tooltip" title="View"> <span class="blue">
																	<i class="ace-icon fa fa-search-plus bigger-120"></i>
															</span>
														</a></li>
														<li><a href="#" class="tooltip-success"
															data-rel="tooltip" title="Edit"> <span class="green">
																	<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
															</span>
														</a></li>
														<li><a href="#" class="tooltip-error"
															data-rel="tooltip" title="Delete"> <span class="red">
																	<i class="ace-icon fa fa-trash-o bigger-120"></i>
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

				$('.ace-thumbnails [data-rel="colorbox"]').colorbox(
						colorbox_params);
				$("#cboxLoadingGraphic").html(
						"<i class='ace-icon fa fa-spinner orange'></i>");//let's add a custom loading icon
			});
		</script>
	