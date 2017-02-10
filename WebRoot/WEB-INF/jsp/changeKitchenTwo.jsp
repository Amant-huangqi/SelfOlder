<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!--右侧中间-->
<table id="sample-table-1"
	class="table table-striped table-bordered table-hover"
	style="text-align:center; font-size:16px;">
	<thead>
		<tr>
			<th class="center">序号</th>
			<th style=" width:150px;" class="center">桌号</th>
			<th class="center">菜名</th>
			<th class=" center">数量</th>

			<th class="center"><i
				class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i> 状态</th>
			<th class="hidden-480 center">更改状态</th>


		</tr>
	</thead>

	<tbody>
		<c:forEach var="ani" items="${kitchenTwo}">
			<tr>
				<td class="center">${ani.id}</td>

				<td>${ani.tablenumber}</td>
				<td>${ani.dishes}</td>
				<td class="hidden-480">${ani.amount}</td>
				<c:choose>
					<c:when test="${ani.dishstatus==0}">
						<td id="zhuangtai${ani.id}">等待</td>
					</c:when>
					<c:when test="${ani.dishstatus==1}">
						<td id="zhuangtai${ani.id}">进行</td>
					</c:when>
				</c:choose>

				<c:choose>
					<c:when test="${ani.dishstatus==0}">
						<td style="text-align:center;padding:0px;vertical-align:middle;">
							<div class="btn1">
								<button class="dengdai" id="dengdai1">
									<div onClick="bianse(this,${ani.id},${ani.tablenumber},'${ani.dishes}')">开始制作</div>
								</button>
							</div>

						</td>
					</c:when>
					<c:when test="${ani.dishstatus==1}">
						<td style="text-align:center;padding:0px;vertical-align:middle;">
							<div class="btn1">
								<button class="dengdai" id="dengdai1" style="background:#b4c2cc">
									<div>开始制作</div>
								</button>
							</div>

						</td>
					</c:when>
				</c:choose>





			</tr>
		</c:forEach>


	</tbody>
</table>