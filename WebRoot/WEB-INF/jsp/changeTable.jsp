<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<table id="sample-table-2"
	class="table table-striped table-bordered table-hover"
	style="text-align:center">
	<thead>
		<tr>
			<th class="center" style="width:100px;"><i
				class="ace-icon fa fa-glass"></i>桌号</th>
			<th class="center" style="width:100px;"><i
				class="ace-icon glyphicon glyphicon-star"></i>账单状态</th>
			<th class="center" style="width:150px;"><i class="ace-icon fa">$</i>支付方式</th>
			<th class="center" style="width:200px;"><i
				class="ace-icon glyphicon glyphicon-list-alt"></i>查看账单</th>
			<th class="center" style="width:200px;"><i class="ace-icon fa">$</i>支付</th>
			<th class="center" style="width:200px;"><i
				class="ace-icon glyphicon glyphicon-picture"></i>打印发票</th>

			<th class="center" style="width:200px;"><i
				class="ace-icon glyphicon glyphicon-edit"></i>离席重置</th>
		</tr>
	</thead>
	<tbody style="height:auto;">
		<c:forEach var="ani" items="${CashRegister}">
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
						class="btn btn-pink btn-xs md-trigger" data-modal="modal-3"
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
						<td class="hidden-480"><button class="btn btn-purple btn-xs">
								<i class="ace-icon glyphicon glyphicon-pencil"></i> 打印发票
							</button></td>
					</c:when>
					<c:when test="${ani.invoice==0}">
						<td class="hidden-480"><button class="btn  btn-xs">
								<i class="ace-icon glyphicon glyphicon-pencil"></i> 打印发票
							</button></td>
					</c:when>
				</c:choose>

				<td><button id="chongzhi${ani.id}"
						class="btn btn-inverse btn-xs"
						onClick="Restart(${ani.id},${ani.tablenumber})">
						<i class="ace-icon fa fa-undo"></i> 离席重置
					</button></td>
			</tr>
		</c:forEach>

	</tbody>