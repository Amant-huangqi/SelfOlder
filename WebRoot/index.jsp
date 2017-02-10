<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>一步道味 - HSPLL</title>
<link rel="shortcut icon" type="image/x-icon" href="image/app.png" />
<link rel="stylesheet" type="text/css" href="assets/css/css.css" />

<script type="text/javascript" src="assets/js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="assets/css/sstyle.css" />





</head>

<body style="background:url(image/login-bg.jpg) no-repeat;">

	<div class="div" style="position:absolute;"></div>
	<form id="" action="dologin.html" method="post">
		<div>
			<dl class="admin_login">
				<div class="divv">
					<img width="100px" height="100px" src="image/logo.png">
				</div>
				<dt>
					<em>一步道味 后台管理系统</em>
				</dt>
				<dd class="user_icon">
					<input type="text" placeholder="用户名" class="login_txtbx"
						name="username" autocomplete="off"/>

				</dd>
				<dd class="pwd_icon">
					<input placeholder="密码" type="password" class="login_txtbx"
						name="password" />
				</dd>

				<dd style=" margin: 20px 0 0 0;">
					<div class="cbox">
						<div
							style="margin-bottom:15px; float:left; color:#fff; font-size:13px; font-weight:400;">用户身份选择</div>
						<div style="float:right;">

							<input type="checkbox" name="mark" value="1"
								onClick="chooseOne(this);" style="vertical-align:middle;" /><span
								style="padding-left:5px;">收银管理</span> <input type="checkbox"
								name="mark" value="2" onClick="chooseOne(this);"
								style="vertical-align:middle;" /><span
								style="padding-left:5px;">厨房管理</span> <input type="checkbox"
								name="mark" value="3" onClick="chooseOne(this);"
								style="vertical-align:middle; " /><span
								style="padding-left:5px;">后台管理</span>

						</div>

						<script>
						window.history.forward(1);
							//chooseOne()函式，參數為觸發該函式的元素本身     
							function chooseOne(cb) {
								//先取得同name的chekcBox的集合物件     
								var obj = document.getElementsByName("mark");
								for (var i = 0; i < obj.length; i++) {
									//判斷obj集合中的i元素是否為cb，若否則表示未被點選     
									if (obj[i] != cb)
										obj[i].checked = false;
									//若是 但原先未被勾選 則變成勾選；反之 則變為未勾選     
									//else  obj[i].checked = cb.checked;     
									//若要至少勾選一個的話，則把上面那行else拿掉，換用下面那行     
									else
										obj[i].checked = true;
								}
							}
						</script>



					</div>

				</dd>


				<dd>
					<input type="submit" value="登陆" class="submit_btn" />
				</dd>
				<dd>
					<p>&nbsp;</p>
					<p>© 2016 HSPLL 版权所有 </p>
				</dd>
			</dl>

		</div>


	</form>






</body>

<script>
	(function($) {
		/**
		 * 没有开花的树
		 * 2012/11/28 15:12
		 */

		var placeholderfriend = {
			focus : function(s) {
				s = $(s).hide().prev().show().focus();
				var idValue = s.attr("id");
				if (idValue) {
					s.attr("id", idValue.replace("placeholderfriend", ""));
				}
				var clsValue = s.attr("class");
				if (clsValue) {
					s.attr("class", clsValue.replace("placeholderfriend", ""));
				}
			}
		}

		//判断是否支持placeholder
		function isPlaceholer() {
			var input = document.createElement('input');
			return "placeholder" in input;
		}
		//不支持的代码
		if (!isPlaceholer()) {
			$(function() {

				var form = $(this);

				//遍历所有文本框，添加placeholder模拟事件
				var elements = form.find("input[type='text'][placeholder]");
				elements.each(function() {
					var s = $(this);
					var pValue = s.attr("placeholder");
					var sValue = s.val();
					if (pValue) {
						if (sValue == '') {
							s.val(pValue);
						}
					}
				});

				elements.focus(function() {
					var s = $(this);
					var pValue = s.attr("placeholder");
					var sValue = s.val();
					if (sValue && pValue) {
						if (sValue == pValue) {
							s.val('');
						}
					}
				});

				elements.blur(function() {
					var s = $(this);
					var pValue = s.attr("placeholder");
					var sValue = s.val();
					if (!sValue) {
						s.val(pValue);
					}
				});

				//遍历所有密码框，添加placeholder模拟事件
				var elementsPass = form
						.find("input[type='password'][placeholder]");
				elementsPass
						.each(function(i) {
							var s = $(this);
							var pValue = s.attr("placeholder");
							var sValue = s.val();
							if (pValue) {
								if (sValue == '') {
									//DOM不支持type的修改，需要复制密码框属性，生成新的DOM
									var html = this.outerHTML || "";
									html = html
											.replace(
													/\s*type=(['"])?password\1/gi,
													" type=text placeholderfriend")
											.replace(
													/\s*(?:value|on[a-z]+|name)(=(['"])?\S*\1)?/gi,
													" ")
											.replace(
													/\s*placeholderfriend/,
													" placeholderfriend value='"
															+ pValue
															+ "' "
															+ "onfocus='placeholderfriendfocus(this);' ");
									var idValue = s.attr("id");
									if (idValue) {
										s.attr("id", idValue
												+ "placeholderfriend");
									}
									var clsValue = s.attr("class");
									if (clsValue) {
										s.attr("class", clsValue
												+ "placeholderfriend");
									}
									s.hide();
									s.after(html);
								}
							}
						});

				elementsPass.blur(function() {
					var s = $(this);
					var sValue = s.val();
					if (sValue == '') {
						var idValue = s.attr("id");
						if (idValue) {
							s.attr("id", idValue + "placeholderfriend");
						}
						var clsValue = s.attr("class");
						if (clsValue) {
							s.attr("class", clsValue + "placeholderfriend");
						}
						s.hide().next().show();
					}
				});

			});
		}
		window.placeholderfriendfocus = placeholderfriend.focus;
	})(jQuery);
</script>

<script type="text/javascript" src="assets/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="assets/js/js.js"></script>
</html>

