<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th style="display:none"></th>
			<th style="width:100px;"><i
				class="ace-icon glyphicon 				glyphicon-list-alt"></i>菜品系别</th>
			<th style="width:110px;"><i class="ace-icon fa fa-glass"></i>菜品名称</th>
			<th style="width:100px;"><i class="ace-icon fa">$</i>菜品价格</th>
			<th style="width:110px;"><i
				class="ace-icon glyphicon glyphicon-star"></i>菜品评星</th>
			<th style="width:100px"><i
				class="ace-icon glyphicon glyphicon-picture"></i>菜品美图</th>

			<th><i class="ace-icon glyphicon glyphicon-edit"></i></th>
		</tr>
	</thead>
	<tbody style="height:auto;">
		<c:forEach var="ani" items="${pagehelper.list}">
			<tr id="ID${ani.id}">
				<td style="display:none"></td>
				<td id="tr1">${ani.sort}</a></td>
				<td id="tr1">${ani.dishes}</td>
				<td class="hidden-480">${ani.price}</td>
				<c:choose>
					<c:when test="${ani.ass>=0 && ani.ass<=2}">
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
				<td class="hidden-480" style="text-align:center"><div
																class="form-group ace-thumbnails clearfix">
																<div class="action-buttons">
																	<a
																		href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																		title="土豆丝" data-rel="colorbox"><img class="cpimg"
																		src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																		width="30px" height="30px"></a>
																</div>
															</div></td>
				<c:choose>
															<c:when test="${ani.addToday==0}">
															    <td style="text-align:center;">
															<button onClick="aa(this,${ani.id},'${ani.dishes}')" 
																class="btn btn-warning btn-xs changeRightBtn${ani.dishes}"
																style="margin: -9px 0px -5px 0px;" id="changeButton"><i class="ace-icon glyphicon glyphicon-plus" style="padding-left:3px;"></i></button>
														        </td>
															</c:when>
															<c:when test="${ani.addToday==1}">
															    <td style="text-align:center;">
															<button onClick="aa(this,${ani.id},'${ani.dishes}')" 
																class="btn btn-warning btn-grey btn-xs changeRightBtn${ani.dishes}"
																style="margin: -9px 0px -5px 0px;pointer-events:none;" id="changeButton"><i class="ace-icon glyphicon glyphicon-plus" style="padding-left:3px;"></i></button>
														        </td>
															</c:when>
														</c:choose>


			</tr>
		</c:forEach>

	</tbody>
</table>
<!-- 分页 -->
<div id="page_div">
	<%@ include file="/WEB-INF/jsp/common/pagehelper.jsp"%>
</div>
<!-- 分页结束 -->
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
