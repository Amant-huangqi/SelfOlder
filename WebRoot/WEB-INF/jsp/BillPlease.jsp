<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!--弹出框--菜单-->
<div id="modal-3" style="overflow:auto;font-size:16px;max-height:600px;">
	<div class="md-content">
		<button class="md-close" onclick="javascript:modal3guanbi();"
			style="position:absolute;z-index:999;background:#fff;padding:0px;margin:0px;width:25px;height:25px;text-align:center;border-radius:13px;margin-left:20px;margin-top:17px;font-size:16px;color:#307ecc;">×</button>
		<h3>账单信息</h3>

		<div>
			<table style="text-align:center;width:100%;" id="mytable">
				<tr>
					<td colspan="2" style="text-align:left;">桌号：<span>${Tablenumber}</span>
					</td>
					<td colspan="3" style="text-align:right;">开单时间：${time}</td>
				</tr>

				<tr id="th">
					<th class="center">序号</th>
					<th class="center">菜名</th>
					<th class="center">单价(元)</th>
					<th class="center">数量(份)</th>
					<th class="center">小计(元)</th>
					<th class="center">支付状态</th>
				</tr>
				<c:forEach var="ani" items="${TableData}">
					<tr>
						<td>${ani.id}</td>
						<td>${ani.dishes}</td>
						<td>${ani.price}</td>
						<td>${ani.amount}</td>
						<td></td>
						<c:choose>
							<c:when test="${ani.paymentstatus==0}">
								<td>未支付</td>
							</c:when>
							<c:when test="${ani.paymentstatus==1}">
								<td>已支付</td>
							</c:when>
							<c:when test="${ani.paymentstatus==2}">
								<td>已支付</td>
							</c:when>
						</c:choose>
					</tr>
				</c:forEach>
				<script type="text/javascript">
					var tab = document.getElementById("mytable");
					var rows = tab.rows.length - 1;
					for (var i = 2; i <= rows; i++) {
						var danjia = document.getElementById("mytable").rows[i].cells[2].innerHTML;
						var shuliang = document.getElementById("mytable").rows[i].cells[3].innerHTML;
						document.getElementById("mytable").rows[i].cells[4].innerHTML = (danjia * 1)
								* (shuliang * 1);
					}
				</script>
				<tr id="th1">
					<th colspan="5" style="text-align:right;">总金额：</th>
					<th class="center"><span id="zongjine">${total}</span></th>
				</tr>
				<tr style="text-align:left">
					<td colspan="5">支付方式：前台支付</td>
				</tr>
				<tr style="text-align:left">
					<td>实缴金额：</td>
					<td colspan="4"><input type="text" id="shoukuan" /><input
						type="submit" value="收款确认" onClick="jisuan(${Tablenumber},${total})"
						style="background:#307ecc;color:#fff;border:0px;margin-left:5px;"
						id="shoukuanqueren"></td>
				</tr>
				
				<tr style="text-align:left">
					<td>找零金额：</td>
					<td colspan="4"><input type="text" id="zhaoling" /></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:left">服务员：<span>***</span></td>
					<td colspan="3" style="text-align:right" id="time"></td>
				</tr>
			</table>
			<button style="margin-top:10px;" class="md-close1" id="guanbi" onclick="javascript:modal3guanbi();">关闭</button>
		</div>
	</div>
</div>
<div class="md-overlay"></div>
<!-- the overlay element -->
<!--弹出框-->