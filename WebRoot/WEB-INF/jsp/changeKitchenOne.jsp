<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div id="ct-rt-1">
	<table
		style="text-align:center;width:100%;font-size:16px;color:#61440b;"
		id="mytable">
		<tr>
			<td colspan="5"><span style="font-size:24px;"><span>${tablenumber}</span>桌菜单信息</span>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:left;">未上菜数量：<span>${carryOutNumber}</span>
			</td>
			<td colspan="3" style="text-align:right;">开单时间：${time}</td>
		</tr>
		<tr id="th2">
			<th class="center">序号</th>
			<th class="center">菜名</th>
			<th class="center">数量(份)</th>
			<th class="center">状态</th>
			<th class="center">更改状态</th>
		</tr>
		<c:forEach var="ani" items="${changekitchenOne}">
			<tr>
				<td>${ani.id}</td>
				<td>${ani.dishes}</td>
				<td>${ani.amount}</td>
				<c:choose>
					<c:when test="${ani.dishstatus==0}">
						<td id="zhuangtai${ani.id}">等待</td>
					</c:when>
					<c:when test="${ani.dishstatus==1}">
						<td id="zhuangtai${ani.id}">进行</td>
					</c:when>
					<c:when test="${ani.dishstatus==2}">
						<td id="zhuangtai${ani.id}">完成</td>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${ani.dishstatus==0}">
						<td style="text-decoration: none;text-align:center">

							<div class="btn1" >
								<button class="dengdai" id="dengdai1" style="background:#b4c2cc" >
									<div class="no"
										onClick="bianse(this,${ani.id},${tablenumber},'${ani.dishes}',0)" >等待</div>
								</button>
								<button class="jinxing">
									<div
										onClick="bianse(this,${ani.id},${tablenumber},'${ani.dishes}',1)">进行</div>
								</button>
								<button class="wancheng">
									<div
										onClick="bianse(this,${ani.id},${tablenumber},'${ani.dishes}',2)">完成</div>
								</button>
							</div>

						</td>
					</c:when>
					<c:when test="${ani.dishstatus==1}">
						<td style="text-decoration: none;text-align:center">

							<div class="btn1">
								<button class="dengdai" id="dengdai1" style="background:#b4c2cc">
									<div class="no"
										onClick="bianse(this,${ani.id},${tablenumber},'${ani.dishes}',0)" >等待</div>
								</button>
								<button class="jinxing" style="background:#b4c2cc">
									<div class="no"
										onClick="bianse(this,${ani.id},${tablenumber},'${ani.dishes}',1)" >进行</div>
								</button>
								<button class="wancheng">
									<div 
										onClick="bianse(this,${ani.id},${tablenumber},'${ani.dishes}',2)">完成</div>
								</button>
							</div>

						</td>
					</c:when>
					<c:when test="${ani.dishstatus==2}">
						<td style="text-decoration: none;text-align:center">

							<div class="btn1">
								<button class="dengdai" id="dengdai1" style="background:#b4c2cc">
									<div class="no"
										onClick="bianse(this,${ani.id},${tablenumber},'${ani.dishes}',0)" >等待</div>
								</button>
								<button class="jinxing" style="background:#b4c2cc">
									<div class="no"
										onClick="bianse(this,${ani.id},${tablenumber},'${ani.dishes}',1)" >进行</div>
								</button>
								<button class="wancheng" style="background:#b4c2cc">
									<div class="no"
										onClick="bianse(this,${ani.id},${tablenumber},'${ani.dishes}',2)" >完成</div>
								</button>
							</div>

						</td>
					</c:when>
				</c:choose>

			</tr>
		</c:forEach>
		<tr id="th3">
			<th colspan="5" class="center">
				<button id="qi" onClick="end(${tablenumber})">
					<i class="ace-icon fa fa-check-square-o  orange"></i> 全部上齐
				</button>
			</th>
		</tr>
	</table>
</div>