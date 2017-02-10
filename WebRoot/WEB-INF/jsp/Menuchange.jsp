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
									<div class="table-header"
										style="background-color:rgba(232, 55, 61, 0.88)">
										<i class="fa fa-coffee " style="padding-right:10px;"></i>查看完整菜单<a
											href="javascript:add();" id="bootbox-options1"
											style="color:#FFF; float:right; padding-right:10px;"><i
											class="ace-icon glyphicon glyphicon-plus"></i>添加菜品</a>
									</div>

									<!-- <div class="table-responsive"> -->

									<!-- <div class="dataTables_borderWrap"> -->

									<div style="height:445px">
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
													<th style="width:150px;"><i
														class="ace-icon fa fa-glass"></i>菜品名称</th>
													<th style="width:100px;"><i class="ace-icon fa">$</i>菜品价格</th>
													<th style="width:150px;"><i
														class="ace-icon glyphicon glyphicon-star"></i>菜品评星</th>
													<th style="width:350px"><i
														class="ace-icon glyphicon glyphicon-picture"></i>菜品美图</th>

													<th><i class="ace-icon glyphicon glyphicon-edit"></i>菜品管理</th>
												</tr>
											</thead>
											<tbody style="height:auto;" id="tbodya">
												<c:forEach var="ani" items="${pagehelper.list}">
													<tr id="xiajia${ani.id}">
														<td class="center"><label class="position-relative">
																<input type="checkbox" class="ace" /> <span class="lbl"></span>
														</label></td>
														<td id="td1${ani.id}">${ani.sort}</td>
														<td id="td2${ani.id}">${ani.dishes}</td>
														<td class="hidden-480" id="td3${ani.id}">${ani.price}</td>
														<c:choose>
															<c:when test="${ani.ass>=0 && ani.ass<=2}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
															<c:when test="${ani.ass>2 && ani.ass<=4}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
															<c:when test="${ani.ass>4 && ani.ass<=6}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
															<c:when test="${ani.ass>6 && ani.ass<=8}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
															<c:when test="${ani.ass>8 && ani.ass<=10}">
																<td><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i><i
																	class="message-star ace-icon fa fa-star orange2"></i></td>
															</c:when>
														</c:choose>

														<td class="hidden-480">

															<form id="frm3" enctype="multipart/form-data"
																action="SubmitImg.html" method="post" target="id_iframe">
																<div class="form-group ace-thumbnails clearfix	  ">
																	<div class="action-buttons"
																		style="float:right; margin-top: -2px;">
																		<a
																			href="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																			id="a${ani.id}" title="${ani.dishes}"
																			data-rel="colorbox"><img class="cpimg"
																			src="http://${IP}:${port}/SelfOrder/image/${ani.image}"
																			id="img${ani.id}" width="30px" height="30px"
																			style=" "></a> <input type="submit"
																			class="btn btn-warning btn-xs"
																			onclick="javascript:changeImage(${ani.id},'${IP}',${port});"
																			value="确认更改" /> <input type="hidden" name="id"
																			value="${ani.id}" />

																	</div>
																	<!-- #section:custom/file-input -->
																	<div style="float:left">
																		<input type="file" id="id-input-file-2"
																			name="uploadPhoto"
																			class="input-small id-input-file-2${ani.id}" />
																	</div>

																</div>
															</form> <iframe id="id_iframe" name="id_iframe"
																style="display:none;"></iframe>
														</td>
														<td><div class="hidden-sm hidden-xs">
																<span id="bootbox-options${ani.id}" class="green"
																	style="cursor:pointer;"><i
																	class="ace-icon fa fa-pencil bigger-130"></i><a
																	href="javascript:change(${ani.id});" id="${ani.id}">点击修改</a></span>
																<span id="xj${ani.id}" class="red"
																	style=" cursor:pointer; margin-left:20px;"><i
																	class="ace-icon fa fa-trash-o bigger-130"></i><a
																	href="javascript:deleteMenu(${ani.id});">点击下架</a></span>
															</div> <script type="text/javascript">
																document
																		.getElementById("xj"
																				+ ${ani.id}).onclick = function() {

																	document
																			.getElementById("xiajia"
																					+ ${ani.id}).style.display = "none";
																}
															</script>
															<div class="hidden-md hidden-lg">
																<div class="inline position-relative">
																	<button
																		class="btn btn-minier btn-yellow dropdown-toggle"
																		data-toggle="dropdown" data-position="auto">
																		<i
																			class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																	</button>
																	<ul
																		class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">

																		<li><a href="#" class="tooltip-success"
																			data-rel="tooltip" title="Edit"> <span
																				class="green"> <i
																					class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
																		</a></li>
																		<li><a href="#" class="tooltip-error"
																			data-rel="tooltip" title="Delete"> <span
																				class="red"> <i
																					class="ace-icon fa fa-trash-o bigger-120"></i>
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
			$('#id-disable-check').on('click', function() {
				var inp = $('#form-input-readonly').get(0);
				if (inp.hasAttribute('disabled')) {
					inp.setAttribute('readonly', 'true');
					inp.removeAttribute('disabled');
					inp.value = "This text field is readonly!";
				} else {
					inp.setAttribute('disabled', 'disabled');
					inp.removeAttribute('readonly');
					inp.value = "This text field is disabled!";
				}
			});

			$('.chosen-select').chosen({
				allow_single_deselect : true
			});
			//resize the chosen on window resize

			$(window).off('resize.chosen').on('resize.chosen', function() {
				$('.chosen-select').each(function() {
					var $this = $(this);
					$this.next().css({
						'width' : $this.parent().width()
					});
				})
			}).trigger('resize.chosen');

			$('#chosen-multiple-style').on('click', function(e) {
				var target = $(e.target).find('input[type=radio]');
				var which = parseInt(target.val());
				if (which == 2)
					$('#form-field-select-4').addClass('tag-input-style');
				else
					$('#form-field-select-4').removeClass('tag-input-style');
			});

			$('[data-rel=tooltip]').tooltip({
				container : 'body'
			});
			$('[data-rel=popover]').popover({
				container : 'body'
			});

			$('textarea[class*=autosize]').autosize({
				append : "\n"
			});
			$('textarea.limited').inputlimiter({
				remText : '%n character%s remaining...',
				limitText : 'max allowed : %n.'
			});

			$.mask.definitions['~'] = '[+-]';
			$('.input-mask-date').mask('99/99/9999');
			$('.input-mask-phone').mask('(999) 999-9999');
			$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
			$(".input-mask-product").mask("a*-999-a999", {
				placeholder : " ",
				completed : function() {
					alert("You typed the following: " + this.val());
				}
			});

			$("#input-size-slider").css('width', '200px').slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 8,
						step : 1,
						slide : function(event, ui) {
							var sizing = [ '', 'input-sm', 'input-lg',
									'input-mini', 'input-small',
									'input-medium', 'input-large',
									'input-xlarge', 'input-xxlarge' ];
							var val = parseInt(ui.value);
							$('#form-field-4').attr('class', sizing[val]).val(
									'.' + sizing[val]);
						}
					});

			$("#input-span-slider").slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 12,
						step : 1,
						slide : function(event, ui) {
							var val = parseInt(ui.value);
							$('#form-field-5').attr('class', 'col-xs-' + val)
									.val('.col-xs-' + val);
						}
					});

			//"jQuery UI Slider"
			//range slider tooltip example
			$("#slider-range")
					.css('height', '200px')
					.slider(
							{
								orientation : "vertical",
								range : true,
								min : 0,
								max : 100,
								values : [ 17, 67 ],
								slide : function(event, ui) {
									var val = ui.values[$(ui.handle).index() - 1]
											+ "";

									if (!ui.handle.firstChild) {
										$(
												"<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>")
												.prependTo(ui.handle);
									}
									$(ui.handle.firstChild).show().children()
											.eq(1).text(val);
								}
							}).find('a').on('blur', function() {
						$(this.firstChild).hide();
					});

			$("#slider-range-max").slider({
				range : "max",
				min : 1,
				max : 10,
				value : 2
			});

			$("#slider-eq > span").css({
				width : '90%',
				'float' : 'left',
				margin : '15px'
			}).each(function() {
				// read initial values from markup and remove that
				var value = parseInt($(this).text(), 10);
				$(this).empty().slider({
					value : value,
					range : "min",
					animate : true

				});
			});

			$("#slider-eq > span.ui-slider-purple").slider('disable');//disable third item

			$('#id-input-file-1 , #id-input-file-2').ace_file_input({
				no_file : '点击更改图片',
				btn_choose : 'Choose',
				btn_change : 'Change',
				droppable : false,
				onchange : null,
				thumbnail : false
			//| true | large
			//whitelist:'gif|png|jpg|jpeg'
			//blacklist:'exe|php'
			//onchange:''
			//
			});
			//pre-show a file name, for example a previously selected file
			//$('#id-input-file-1').ace_file_input('show_file_list', ['myfile.txt'])

			$('#id-input-file-3').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'ace-icon fa fa-cloud-upload',
				droppable : true,
				thumbnail : 'small'//large | fit
				//,icon_remove:null//set null, to hide remove/reset button
				/**,before_change:function(files, dropped) {
							//Check an example below
							//or examples/file-upload.html
							return true;
						}*/
				/**,before_remove : function() {
							return true;
						}*/
				,
				preview_error : function(filename, error_code) {
					//name of the file that failed
					//error_code values
					//1 = 'FILE_LOAD_FAILED',
					//2 = 'IMAGE_LOAD_FAILED',
					//3 = 'THUMBNAIL_FAILED'
					//alert(error_code);
				}

			}).on('change', function() {
				//console.log($(this).data('ace_input_files'));
				//console.log($(this).data('ace_input_method'));
			});

			//datepicker plugin
			//link
			$('.date-picker').datepicker({
				autoclose : true,
				todayHighlight : true
			})
			//show datepicker when clicking on the icon
			.next().on(ace.click_event, function() {
				$(this).prev().focus();
			});

			//or change it into a date range picker
			$('.input-daterange').datepicker({
				autoclose : true
			});

			//to translate the daterange picker, please copy the "examples/daterange-fr.js" contents here before initialization
			$('input[name=date-range-picker]').daterangepicker({
				'applyClass' : 'btn-sm btn-success',
				'cancelClass' : 'btn-sm btn-default',
				locale : {
					applyLabel : 'Apply',
					cancelLabel : 'Cancel',
				}
			}).prev().on(ace.click_event, function() {
				$(this).next().focus();
			});

			$('#timepicker1').timepicker({
				minuteStep : 1,
				showSeconds : true,
				showMeridian : false
			}).next().on(ace.click_event, function() {
				$(this).prev().focus();
			});

			$('#date-timepicker1').datetimepicker().next().on(ace.click_event,
					function() {
						$(this).prev().focus();
					});

			$('#colorpicker1').colorpicker();

			$('#simple-colorpicker-1').ace_colorpicker();
			//$('#simple-colorpicker-1').ace_colorpicker('pick', 2);//select 2nd color
			//$('#simple-colorpicker-1').ace_colorpicker('pick', '#fbe983');//select #fbe983 color
			//var picker = $('#simple-colorpicker-1').data('ace_colorpicker')
			//picker.pick('red', true);//insert the color if it doesn't exist

			$(".knob").knob();

			var tag_input = $('#form-field-tags');
			try {
				tag_input.tag({
					placeholder : tag_input.attr('placeholder'),
					//enable typeahead by specifying the source array
					source : ace.vars['US_STATES'],//defined in ace.js >> ace.enable_search_ahead
				/**
				 //or fetch data from database, fetch those that match "query"
				 source: function(query, process) {
				  $.ajax({url: 'remote_source.php?q='+encodeURIComponent(query)})
				  .done(function(result_items){
					process(result_items);
				  });
				}
				 */
				})

				//programmatically add a new
				var $tag_obj = $('#form-field-tags').data('tag');
				$tag_obj.add('Programmatically Added');
			} catch (e) {
				//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
				tag_input.after(
						'<textarea id="' + tag_input.attr('id') + '" name="'
								+ tag_input.attr('name') + '" rows="3">'
								+ tag_input.val() + '</textarea>').remove();
				//$('#form-field-tags').autosize({append: "\n"});
			}

			//////////

			//typeahead.js
			//example taken from plugin's page at: https://twitter.github.io/typeahead.js/examples/
			var substringMatcher = function(strs) {
				return function findMatches(q, cb) {
					var matches, substringRegex;

					// an array that will be populated with substring matches
					matches = [];

					// regex used to determine if a string contains the substring `q`
					substrRegex = new RegExp(q, 'i');

					// iterate through the pool of strings and for any string that
					// contains the substring `q`, add it to the `matches` array
					$.each(strs, function(i, str) {
						if (substrRegex.test(str)) {
							// the typeahead jQuery plugin expects suggestions to a
							// JavaScript object, refer to typeahead docs for more info
							matches.push({
								value : str
							});
						}
					});

					cb(matches);
				}
			}

			$('input.typeahead').typeahead({
				hint : true,
				highlight : true,
				minLength : 1
			}, {
				name : 'states',
				displayKey : 'value',
				source : substringMatcher(ace.vars['US_STATES'])
			});

			/////////
			$('#modal-form input[type=file]').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'ace-icon fa fa-cloud-upload',
				droppable : true,
				thumbnail : 'large'
			})

			//chosen plugin inside a modal will have a zero width because the select element is originally hidden
			//and its width cannot be determined.
			//so we set the width after modal is show
			$('#modal-form').on('shown.bs.modal', function() {
				$(this).find('.chosen-container').each(function() {
					$(this).find('a:first-child').css('width', '210px');
					$(this).find('.chosen-drop').css('width', '210px');
					$(this).find('.chosen-search input').css('width', '200px');
				});
			})
			/**
			 //or you can activate the chosen plugin after modal is shown
			 //this way select element becomes visible with dimensions and chosen works as expected
			 $('#modal-form').on('shown', function () {
						$(this).find('.modal-chosen').chosen();
					})
			 */

		});
		
	</script>
	
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
	
				