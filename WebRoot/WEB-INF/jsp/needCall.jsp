<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
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

</ul>