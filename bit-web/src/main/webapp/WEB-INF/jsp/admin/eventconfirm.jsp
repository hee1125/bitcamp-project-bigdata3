<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Event Mgt Admin</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/jquery-ui.custom.min.css" />

<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">

<style>
.image {
	border: 0;
	display: inline-block;
	position: relative;
	box-shadow: 0px 0px 0px 7px #fff, 0px 0px 0px 8px rgba(0, 0, 0, 0.1);
}

.image.fit {
	display: block;
	margin: 0 0 2em 0;
	width: 100%;
}

.image.fit img {
	width: 100%;
}
</style>

<!-- ace settings handler -->
<script
	src="${pageContext.servletContext.contextPath}/assets/js/ace-extra.min.js"></script>
</head>

<body class="no-skin">
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<!-- Header -->
			<jsp:include page="./headeradmin.jsp"></jsp:include>

			<!-- Nav -->
			<jsp:include page="./naviadmin.jsp"></jsp:include>

			
		</div>
		<!-- /.navbar-container -->
	</div>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<div id="sidebar"
			class="sidebar                  responsive                    ace-save-state">
			<script type="text/javascript">
				try {
					ace.settings.loadState('sidebar')
				} catch (e) {
				}
			</script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<a href="index.html" style="color: floralwhite"> <i
							class="ace-icon fa fa-desktop"></i></a>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>

					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">
				<li class=""><a href="main"> <i
						class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
							Dashboard </span>
				</a> <b class="arrow"></b></li>

				<li class="active open"><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-bar-chart-o"></i> <span class="menu-text">
							Board Mgt </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="registmenu.html"> <i
								class="menu-icon fa fa-caret-right"></i> Menu Board
						</a> <b class="arrow"></b></li>

						<li class="active"><a href="eventlist"> <i
								class="menu-icon fa fa-caret-right"></i> Event Board
						</a> <b class="arrow"></b></li>

						<li class=""><a href="treeview.html"> <i
								class="menu-icon fa fa-caret-right"></i> Treeview
						</a> <b class="arrow"></b></li>

					</ul></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-pencil-square-o"></i> <span
						class="menu-text"> Stores </span> <b
						class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="admin-form-detail.html"> <i
								class="menu-icon fa fa-caret-right"></i> Store Infomation
						</a> <b class="arrow"></b></li>

						<li class=""><a href="branchlist"> <i
								class="menu-icon fa fa-caret-right"></i> Store List
						</a> <b class="arrow"></b></li>

						<li class=""><a href="wysiwyg.html"> <i
								class="menu-icon fa fa-caret-right"></i> Wysiwyg &amp; Markdown
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="calendar.html"> <i
						class="menu-icon fa fa-calendar"></i> <span class="menu-text">
							Calendar <span class="badge badge-transparent tooltip-error"
							title="2 Important Events"> <i
								class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
						</span>
					</span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="gallery.html"> <i
						class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
							Gallery </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-file-o"></i> <span class="menu-text">
							Other Pages <span class="badge badge-primary">5</span>
					</span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="faq.html"> <i
								class="menu-icon fa fa-caret-right"></i> FAQ
						</a> <b class="arrow"></b></li>

						<li class=""><a href="error-404.html"> <i
								class="menu-icon fa fa-caret-right"></i> Error 404
						</a> <b class="arrow"></b></li>

						<li class=""><a href="error-500.html"> <i
								class="menu-icon fa fa-caret-right"></i> Error 500
						</a> <b class="arrow"></b></li>

						<li class=""><a href="blank.html"> <i
								class="menu-icon fa fa-caret-right"></i> Blank Page
						</a> <b class="arrow"></b></li>
					</ul></li>
			</ul>
			<!-- /.nav-list -->

			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon"
					class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
						</li>
						<li><a href="#">Stores</a></li>
						<li class="active">Store Infomation</li>
					</ul>
					<!-- /.breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- /.nav-search -->
				</div>

				<div class="page-content">
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
							id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-130"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left">

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-rtl" autocomplete="off" /> <label
										class="lbl" for="ace-settings-rtl"> Right To Left
										(rtl)</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-add-container" autocomplete="off" /> <label
										class="lbl" for="ace-settings-add-container"> Inside <b>.container</b>
									</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-hover" autocomplete="off" /> <label
										class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-compact" autocomplete="off" /> <label
										class="lbl" for="ace-settings-compact"> Compact
										Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-highlight" autocomplete="off" /> <label
										class="lbl" for="ace-settings-highlight"> Alt. Active
										Item</label>
								</div>
							</div>
							<!-- /.pull-left -->
						</div>
						<!-- /.ace-settings-box -->
					</div>
					<!-- /.ace-settings-container -->


					<!-- 실제적인 내용은 여기부터 -->
					<div class="page-header">
						<h1>
							디지털 보드 관리 <small> <i
								class="ace-icon fa fa-angle-double-right"></i> 이벤트 보드 상세 입력
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<form class="form-horizontal" role="form" action="update.do"
								method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="branchSelect"> 매장명 </label>

									<div class="col-sm-5">
										<input type="text" id="branchSelect" name="bname"
											class="col-xs-12" value="${event.bname}" placeholder="매장명" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="eventWindow"> 이벤트 템플릿</label>

									<div class="col-sm-5">
										<input type="text" id="eventWindow" name="etptitle"
											class="col-xs-12" value="${event.etptitle}"
											placeholder="이벤트 템플릿" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="wineventTitle"> 이벤트보드 제목</label>

									<div class="col-sm-5">
										<input type="text" id="wineventTitle" name="title"
											class="col-xs-12" value="${event.title}"
											placeholder="이벤트보드 제목" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="eventSelect"> 이벤트 분류</label>

									<div class="col-sm-5">
										<input type="text" id="eventSelect" name="type"
											class="col-xs-12" value="${event.type}" placeholder="어떤 이벤트" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="from"> 행사 시작일</label>

									<div class="col-sm-5">
										<input type="text" id="from" name="startdate"
											class="col-xs-12" value="${event.startdate}"
											placeholder="행사 시작일" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right" for="to">
										행사 종료일</label>

									<div class="col-sm-5">
										<input type="text" id="to" name="enddate" class="col-xs-12"
											value="${event.enddate}" placeholder="행사 종료일" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="wineventTitle"> 중요 어필 포인트</label>

									<div class="col-sm-5">
										<input type="text" id="wineventTitle" name="content"
											class="col-xs-12" value="${event.content}"
											placeholder="중요 어필 포인트" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="eventDetail"> 이벤트 요청 내용</label>

									<div class="col-sm-5">
										<textarea class="form-control" id="eventDetail" name="info"
											placeholder="이벤트 내용 상세">${event.info}</textarea>
									</div>
								</div>

								<div class="row">
									<!-- 이벤트 이미지 요청창 -->
									<div class="col-sm-12">
										<div class="image fit">
											<c:forEach items='${event.uploadList}' var='path'>
												<img class='photo1' id="output" alt="store image"
													src='../download/${path}'>
											</c:forEach>
										</div>
									</div>

								</div>

								<div class="clearfix form-actions">
									<div class="col-md-offset-3 col-md-9">
										<a href="#" type="button" class="btn btn-info" role="button">
											<i class="ace-icon fa fa-table bigger-110"></i> 목록
										</a> &nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i> 리셋
										</button>

										&nbsp; &nbsp;
										<button class="btn btn-danger" type="button"
											onclick="doDelete()">
											<i class="ace-icon fa fa-exclamation-circle bigger-110"></i>
											삭제
										</button>

									</div>
								</div>
							</form>

						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<!-- Footer -->
			<jsp:include page="./footeradmin.jsp"></jsp:include>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<script>
		// 이미지 파일 보여주기
		var loadFile = function(event) {
			var output = document.getElementById('output');
			output.src = URL.createObjectURL(event.target.files[0]);
		};

		// 삭제, 목록 버튼	
		function doDelete() {
			location.href = 'delete.do?no=${branch.no}'
		}

		function doList() {
			location.href = 'list.do'
		}
	</script>
	<!--[if !IE]> -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="${pageContext.servletContext.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='${pageContext.servletContext.contextPath}/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="${pageContext.servletContext.contextPath}/assets/js/excanvas.min.js"></script>
		<![endif]-->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery-ui.custom.min.js"></script>

	<script
		src="${pageContext.servletContext.contextPath}/assets/js/autosize.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.inputlimiter.min.js"></script>

	<!-- ace scripts -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace-elements.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {

			$('[data-rel=tooltip]').tooltip({
				container : 'body'
			});
			$('[data-rel=popover]').popover({
				container : 'body'
			});

			autosize($('textarea[class*=autosize]'));

			$('textarea.limited').inputlimiter({
				remText : '%n character%s remaining...',
				limitText : 'max allowed : %n.'
			});

			$('#id-input-file-1 , #id-input-file-2').ace_file_input({
				no_file : 'No File ...',
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

			//dynamically change allowed formats by changing allowExt && allowMime function
			$('#id-file-format').removeAttr('checked').on(
					'change',
					function() {
						var whitelist_ext, whitelist_mime;
						var btn_choose
						var no_icon
						if (this.checked) {
							btn_choose = "Drop images here or click to choose";
							no_icon = "ace-icon fa fa-picture-o";

							whitelist_ext = [ "jpeg", "jpg", "png", "gif",
									"bmp" ];
							whitelist_mime = [ "image/jpg", "image/jpeg",
									"image/png", "image/gif", "image/bmp" ];
						} else {
							btn_choose = "Drop files here or click to choose";
							no_icon = "ace-icon fa fa-cloud-upload";

							whitelist_ext = null;//all extensions are acceptable
							whitelist_mime = null;//all mimes are acceptable
						}
						var file_input = $('#id-input-file-3');
						file_input.ace_file_input('update_settings', {
							'btn_choose' : btn_choose,
							'no_icon' : no_icon,
							'allowExt' : whitelist_ext,
							'allowMime' : whitelist_mime
						})
						file_input.ace_file_input('reset_input');

						file_input.off('file.error.ace').on('file.error.ace',
								function(e, info) {
									//console.log(info.file_count);//number of selected files
									//console.log(info.invalid_count);//number of invalid files
									//console.log(info.error_list);//a list of errors in the following format

									//info.error_count['ext']
									//info.error_count['mime']
									//info.error_count['size']

									//info.error_list['ext']  = [list of file names with invalid extension]
									//info.error_list['mime'] = [list of file names with invalid mimetype]
									//info.error_list['size'] = [list of file names with invalid size]

									/**
									if( !info.dropped ) {
										//perhapse reset file field if files have been selected, and there are invalid files among them
										//when files are dropped, only valid files will be added to our file array
										e.preventDefault();//it will rest input
									}
									 */

									//if files have been selected (not dropped), you can choose to reset input
									//because browser keeps all selected files anyway and this cannot be changed
									//we can only reset file field to become empty again
									//on any case you still should check files with your server side script
									//because any arbitrary file can be uploaded by user and it's not safe to rely on browser-side measures
								});

						/**
						file_input
						.off('file.preview.ace')
						.on('file.preview.ace', function(e, info) {
							console.log(info.file.width);
							console.log(info.file.height);
							e.preventDefault();//to prevent preview
						});
						 */

					});

			$(document)
					.one(
							'ajaxloadstart.page',
							function(e) {
								autosize.destroy('textarea[class*=autosize]')

								$('.limiterBox,.autosizejs').remove();
								$(
										'.daterangepicker.dropdown-menu,.colorpicker.dropdown-menu,.bootstrap-datetimepicker-widget.dropdown-menu')
										.remove();
							});

		});
	</script>
</body>
</html>