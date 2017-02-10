<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<ul>
	<c:forEach var="ani" items="${kitchenOne}">
		<li id="li${ani.tablenumber}"
			onclick="javascript:showRight(${ani.tablenumber},${ani.carryOutNumber});"><a
			href="#" style="background:url(image/160.png)">
				<div style="position:absolute; margin-top:-20px;margin-left:-15px;">
					<img id="dingzi" src="image/ding-1.png" width="25" height="25" />
				</div>
				<table style="text-align:center">
					<tr>
						<td colspan="2">桌号:<span style="font-size:20px;color:red;">${ani.tablenumber}</span>
						</td>

					</tr>
					<tr>
						<!--提交订单时间-->
						<td style="text-align:left">时间:<f:formatDate
								value="${ani.time}" type="time" dateStyle="short" /></td>

					</tr>
					<tr>
						<td colspan="2" style="text-align:left;padding-top:6px">点餐数量:<span>${ani.orderingNumber}</span></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align:left;padding-top:6px">未上数量:<span
							style="color:red;">${ani.carryOutNumber}</span></td>
					</tr>
				</table>

		</a></li>
	</c:forEach>




</ul>
