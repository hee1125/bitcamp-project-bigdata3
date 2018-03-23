<!-- 아코디언 foreach 처리 하다 말았음... -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	pageContext.setAttribute("ENTER", "\r\n");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="https://jqueryui.com/demos/style.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/chosen.min.css" />

<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/registration.css" />

<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
<style>
.modal-dialog {
	position: relative width:600px;
	margin: 45px auto;
}

@media screen and (max-width: 480px) {
	button {
		padding: 0;
		width: auto;
	}
}
</style>
</head>

<body class="subpage">

	<!-- Header -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="../navi.jsp"></jsp:include>
	<!-- Modal -->
	<div class="container">
		<div id="my-modal" class="modal fade" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="smaller lighter blue no-margin">메뉴 템플릿 예제화면</h3>
					</div>

					<div class="modal-body">
						<img class="image fit" id="output-temp" alt="menu template image"
							src="${tempList.upload}" />
					</div>

					<div class="modal-footer">
						<button class="btn btn-sm btn-danger pull-right"
							data-dismiss="modal">
							<i class="ace-icon fa fa-times"></i> Close
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>

		<div id="aside-inside-modal" class="modal" data-placement="bottom"
			data-background="true" data-backdrop="false" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-12 white">
								<h4 class="lighter no-margin">선택 메뉴 템플릿</h4>
								<p align="center">
									현재 보고 계시는 템플릿은 <span id="template">메뉴 Type1 템플릿</span> 입니다.
								</p>
								<br />
							</div>
						</div>
					</div>
				</div>
				<!-- /.modal-content -->

				<button
					class="btn btn-default btn-app btn-xs ace-settings-btn aside-trigger"
					data-target="#aside-inside-modal" data-toggle="modal" type="button">
					<i data-icon2="fa-arrow-down" data-icon1="fa-arrow-up"
						class="ace-icon fa fa-arrow-up bigger-110 icon-only"></i>
				</button>
			</div>
			<!-- /.modal-dialog -->
		</div>
	</div>

	<!-- Main -->
	<div id="main">
		<section class="wrapper">
		<div class="inner">
			<header class="align-center">
			<h2>Menu Board Management</h2>
			<p>메뉴보드 윈도우로서 등록할 템플릿을 선택하세요. 고객께서 선택한 내용으로 메뉴화면이 구성됩니다.</p>
			</header>
		</div>
		</section>

		<section class="wrapper style1">
		<div class="inner">
			<form method="post" action="sendrequest">
				<div class="row">
					<div class="3u 12u$(medium)">
						<div class="box">
							<p align="center">
								<strong>김상훈</strong> 님 반갑습니다.
							</p>
							<a href="loginmain.html" class="button special">로그인 페이지 이동</a> <a
								href="#" class="button alt">로그 아웃</a>
						</div>
						<div class="box">
							<ul class="actions vertical">
								<li><a href="dmb_menu.html" class="button">메뉴보드</a></li>
								<li><a href="dmb_event.html" class="button">이벤트보드</a></li>
								<li><a href="iot_control.html" class="button">실내 환경</a></li>
								<li><a href="store_management.html" class="button">매장관리
										처음으로 이동</a></li>
								<li><a href="mypage.html" class="button">마이페이지로 이동</a></li>
							</ul>
						</div>
					</div>
					<div class="9u$ 12u$(medium)">
						<div class="box">
							<div class="row uniform">
								<div class="3u 12u$(xsmall)">
									<h4>매장명</h4>
								</div>
								<div class="5u$ 12u$(xsmall)">
									<div class="select-wrapper">
										<select id="branchSelect" name="branchName">
											<c:forEach items="${branchList}" var="branch">
												<option value="${branch.name}">${branch.name}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="3u 12u$(xsmall)">
									<h4>메뉴 템플릿</h4>
								</div>
								<div class="5u 12u$(xsmall)">
									<div class="select-wrapper">
										<select id="menuTempType" name=menuTempType>
											<option value="메뉴1" name="menuTempType">메뉴1</option>
											<option value="메뉴2" name="menuTempType">메뉴2</option>
										</select>
									</div>
								</div>

								<div class="3u$ 12u$(xsmall)">
									<!-- 템플릿 선택후 예제 이미지보기 버튼 클릭시 모달창으로 이미지를 확인할 수 있다. 템플릿 선택에 따라 적합한 미리보기를 띄워야 함 -->
									<div class="actions">
										<a href="#my-modal" class="button" role="button"
											data-toggle="modal">예제 미리보기</a>
									</div>
								</div>

								<div class="3u 12u$(xsmall)">
									<h4>메뉴 영역</h4>
								</div>
								<div class="5u 12u$(xsmall)">
									<div class="select-wrapper">
										<select id="menuArea" name=menuArea>
											<option value="메뉴1" name="menuArea">영역1</option>
											<option value="메뉴2" name="menuArea">영역2</option>
											<option value="메뉴3" name="menuArea">영역3</option>
											<option value="메뉴4" name="menuArea">영역4</option>
											<option value="메뉴5" name="menuArea">영역5</option>
											<option value="메뉴6" name="menuArea">영역6</option>
										</select>
									</div>
								</div>

								<div class="6u 12u$(xsmall)">
									<h4>상세 메뉴정보 설정</h4>
								</div>

								<!-- 메뉴보드 상세등록은 아코디언 형식으로! UI 깔끔하게 많은 정보를 입력! -->
								<div class="12u$">
									<!-- 위에서 템플릿 선택한것에 따라 메뉴 수 만큼 panel panel-defult 출력 -->
									<div class="accordion-style1 panel-group" id="accordian">
										<div class="panel panel-defult">
											<!-- forEach? -->
											<div class="panel-heading">
												<h4 class="panel-title">

													<a class="accordion-toggle" data-toggle="collapse"
														data-parent="#accordion" href="#collapseOne"> <i
														class="ace-icon fa fa-angle-down bigger-110"
														data-icon-hide="ace-icon fa fa-angle-down"
														data-icon-show="ace-icon fa fa-angle-right"></i> &nbsp;메뉴
														#1
													</a>
												</h4>
											</div>

											<!-- 첫 인덱스는 반드시 class명 뒤에 in 필요! 각 클래스별 id값 다르니 주의! -->
											<div class="panel-collapse collapse in" id="collapseOne">
												<div class="panel-body">
													<div class="widget-main">
														<div class="row">
															<div class="col-xs-12 col-sm-6">
																<div class="form-group">
																	<div class="image fit col-xs-12">
																		<img class='photo1' id="output" alt="store image"
																			src='${pageContext.servletContext.contextPath}/images/clifford-yeo-452260.jpg'>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-6">
																<div class="form-group">
																	<label for="menuTitle"> 메뉴명</label>
																	<div>
																		<select id="menuName1" name="menuName"
																			data-placeholder="메뉴">
																			<option value="none">- 메뉴 선택 -</option>
																			<c:forEach items="${menuList}" var="list">
																				<option value="${list.menuName}">${list.menuName}</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>

																<div class="form-group">
																	<label for="menuTitle"> 가격</label>
																	<div>
																		<input type="text" name="menuPrice" id="menuPrice"
																			value="" placeholder="메뉴 가격을 입력하세요" />
																	</div>
																</div>

																<div class="form-group">
																	<label for="menuDivision"> 메뉴분류</label>
																	<div>
																		<input type="text" name="menuType" id="menuType"
																			value="" placeholder="메뉴 분류" />
																	</div>
																</div>

																<div class="form-group">
																	<label for="menuContent"> 기타사항 입력</label>
																	<div>
																		<input type="text" id="menuContent" name="menuContent"
																			placeholder="예) 원산지, 칼로리, 외국어표기 등 요청사항 입력" />
																	</div>
																</div>
															</div>
														</div>
														<!-- row 끝-->
														<button class="btn btn-sm btn-danger btn-round"
															onclick="insert-btn" type="button">
															<!-- 메뉴1 save -->
															<i class="ace-icon fa fa-floppy-o bigger-125"></i> 저장
														</button>

													</div>
													<!-- widget-main 끝-->
												</div>
												<!-- panel-body 끝-->
											</div>
											<!-- panel-collapse collapse in끝-->
										</div>
										<!-- panel panel-defult 끝-->
									</div>
									<!-- panel-collapse collapse in끝-->
								</div>
							</div>
							<!-- accordion-style1 panel-group 끝-->
						</div>

						<!-- Break -->
						<div class="12u$">
							<ul class="actions">
								<li><input type="submit" value="메뉴 등록 요청하기" /></li>
								<li><input type="reset" value="등록 취소" class="alt" /></li>
								<li><input type="button" value="삭제" class="button special" /></li>
							</ul>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	</div>
	</section>
	</div>

	<!-- Footer -->
	<jsp:include page="../footer2.jsp"></jsp:include>

	<!-- Scripts -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='${pageContext.servletContext.contextPath}/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>

	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/chosen.jquery.min.js"></script>

	<script
		src="${pageContext.servletContext.contextPath}/assets/js/autosize.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.inputlimiter.min.js"></script>

	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace-elements.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>

	<script>
		// 이미지 파일 보여주기
		var loadFile = function(event) {
			var output = document.getElementById('output');
			output.src = URL.createObjectURL(event.target.files[0]);
		};
	</script>
	<script>
		var menuList = {};
		<c:forEach items="${menuList}" var="menu">
		menuList['${menu.menuName}'] = {
			/* menuNo:'${menu.menuNo}', */
			menuType : '${menu.menuType}',
			menuName : '${menu.menuName}',
			menuPrice : '${menu.menuPrice}',
			menuContent : '${menu.menuContent}',
			image : '${menu.menuImage}'
		};
		</c:forEach>

		var mtype = document.getElementById("menuType");
		var mprice = document.getElementById("menuPrice");
		var mcontent = document.getElementById("menuContent");

		$('body').on('change', '#menuName1', function() {
			var menuName = $(this).prop('value');
			mtype.value = (menuList[menuName].menuType);
			mprice.value = (menuList[menuName].menuPrice);
			mcontent.value = (menuList[menuName].menuContent);
		})
	</script>
	<script type="text/javascript">
		jQuery(function($) {
			$('.modal.aside').ace_aside();

			$('#aside-inside-modal').addClass('aside').ace_aside({
				container : '#my-modal > .modal-dialog'
			});

			//$('#top-menu').modal('show')

			$(document).one('ajaxloadstart.page', function(e) {
				//in ajax mode, remove before leaving page
				$('.modal.aside').remove();
				$(window).off('.aside')
			});

			//make content sliders resizable using jQuery UI (you should include jquery ui files)
			//$('#right-menu > .modal-dialog').resizable({handles: "w", grid: [ 20, 0 ], minWidth: 200, maxWidth: 600});
		})
	</script>
	<script type="text/javascript">
		jQuery(function($) {

			if (!ace.vars['touch']) {
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
				//resize chosen on sidebar collapse/expand
				$(document).on('settings.ace.chosen',
						function(e, event_name, event_val) {
							if (event_name != 'sidebar_collapsed')
								return;
							$('.chosen-select').each(function() {
								var $this = $(this);
								$this.next().css({
									'width' : $this.parent().width()
								});
							})
						});
			}

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
			});

			// 메뉴 등록 이미지 개수 만큼 id를 받아주어야 화면이 안깨짐(id 3~8까지 총 6개)
			$(
					'#id-input-file-3,#id-input-file-4,#id-input-file-5,#id-input-file-6,#id-input-file-7,#id-input-file-8')
					.ace_file_input({
						style : 'well',
						btn_choose : 'Drop files here or click to choose',
						btn_change : null,
						no_icon : 'ace-icon fa fa-cloud-upload',
						droppable : true,
						thumbnail : 'fit'//small | large
					}).on('change', function() {
					});

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