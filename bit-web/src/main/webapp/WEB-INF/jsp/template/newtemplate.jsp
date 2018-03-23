<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>템플릿 정보 등록</title>

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/chosen.min.css" />

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

			<div class="navbar-header pull-left">
				<a href="index_admin.html" class="navbar-brand"> <small>
						<i class="fa fa-leaf"></i> Donny Admin
				</small>
				</a>
			</div>

			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="grey dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-tasks"></i> <span class="badge badge-grey">4</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="ace-icon fa fa-check"></i>
								4 Tasks to complete</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">Software Update</span> <span
													class="pull-right">65%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width: 65%" class="progress-bar"></div>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">Hardware Upgrade</span> <span
													class="pull-right">35%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width: 35%"
													class="progress-bar progress-bar-danger"></div>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">Unit Testing</span> <span
													class="pull-right">15%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width: 15%"
													class="progress-bar progress-bar-warning"></div>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">Bug Fixes</span> <span
													class="pull-right">90%</span>
											</div>

											<div class="progress progress-mini progress-striped active">
												<div style="width: 90%"
													class="progress-bar progress-bar-success"></div>
											</div>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="#"> See tasks with
									details <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="purple dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-bell icon-animated-bell"></i> <span
							class="badge badge-important">8</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-exclamation-triangle"></i> 8 Notifications
							</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar navbar-pink">
									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-pink fa fa-comment"></i> New
													Comments
												</span> <span class="pull-right badge badge-info">+12</span>
											</div>
									</a></li>

									<li><a href="#"> <i
											class="btn btn-xs btn-primary fa fa-user"></i> Minkuk just
											signed up as an editor ...
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
													New Orders
												</span> <span class="pull-right badge badge-success">+8</span>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
													Followers
												</span> <span class="pull-right badge badge-info">+11</span>
											</div>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="#"> See all
									notifications <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="green dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-envelope icon-animated-vertical"></i> <span
							class="badge badge-success">5</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-envelope-o"></i> 5 Messages</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar.png" class="msg-photo"
											alt="Alex's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">민국:</span> 어제도
													하얗게 불살났어 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>a moment
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar3.png" class="msg-photo"
											alt="Susan's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">연주:</span> 챗봇
													기능에 추가 업데이트가 필요할 것 같아요 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>20 minutes
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar4.png" class="msg-photo"
											alt="Bob's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">수빈:</span> 관리자
													페이지에 새로운 기능을 추가했어요 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>3:15 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar2.png" class="msg-photo"
											alt="Kate's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">종학:</span> 빅데이터
													분석에 따른 시각화 세부사항 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>1:33 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar5.png" class="msg-photo"
											alt="Fred's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">동석:</span> 어제도
													할게 많았지만 오늘은 더 많다 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>10:09 am</span>
											</span>
										</span>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="inbox.html"> See
									all messages <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="light-blue dropdown-modal"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <img
							class="nav-user-photo" src="images/avatars/master.png"
							alt="Jason's Photo" /> <span class="user-info"> <small>Welcome,</small>
								Master
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="ace-icon fa fa-cog"></i>
									Settings
							</a></li>

							<li><a href="profile.html"> <i
									class="ace-icon fa fa-user"></i> Profile
							</a></li>

							<li class="divider"></li>

							<li><a href="#"> <i class="ace-icon fa fa-power-off"></i>
									Logout
							</a></li>
						</ul></li>
				</ul>
			</div>
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
				<li class="active"><a href="main"> <i
						class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
							Dashboard </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-bar-chart-o"></i> <span class="menu-text">
							Board Mgt </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="../menuboard/confirm"> <i
								class="menu-icon fa fa-caret-right"></i> Menu Confirm
						</a> <b class="arrow"></b></li>

						<li class=""><a href="../menuboard/new"> <i
								class="menu-icon fa fa-caret-right"></i> Menu Template
						</a> <b class="arrow"></b></li>

						<li class=""><a href="../category/list"> <i
								class="menu-icon fa fa-caret-right"></i> Menu category
						</a> <b class="arrow"></b></li>

						<li class=""><a href="../menu/list"> <i
								class="menu-icon fa fa-caret-right"></i> Menu list
						</a> <b class="arrow"></b></li>

						<li class=""><a href="eventlist"> <i
								class="menu-icon fa fa-caret-right"></i> Event Board
						</a> <b class="arrow"></b></li>

						<li class=""><a href="../board/list"> <i
								class="menu-icon fa fa-caret-right"></i> Board
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
							템플릿 정보 <small> <i
								class="ace-icon fa fa-angle-double-right"></i> 템플릿 정보 입력
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<form class="form-horizontal" role="form" action="insert"
								method="post" enctype="multipart/form-data">

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1-1"> 매장</label>
									<div class="col-sm-5">
										<select id="branch" name="branchNo">
											<c:forEach items="${branchList}" var="branch">
												<option value="${branch.no}">${branch.name}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1-1"> 타입</label>
									<div class="col-sm-5">
										<select id="menuTempType" name=menuTempType
											class="col-xs-12 col-sm-11" style="height: 34px">
											<option value="메뉴1" name="menuTempType">메뉴1</option>
											<option value="메뉴2" name="menuTempType">메뉴2</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1-1"> 영역</label>
									<div class="col-sm-5">
										<select id="type" name="menuArea" class="col-xs-12 col-sm-11"
											style="height: 34px">
											<option value="영역1" name="menuArea">영역1</option>
											<option value="영역2" name="menuArea">영역2</option>
											<option value="영역3" name="menuArea">영역3</option>
											<option value="영역4" name="menuArea">영역4</option>
											<option value="영역5" name="menuArea">영역5</option>
											<option value="영역6" name="menuArea">영역6</option>
										</select>
									</div>
								</div>

								<div class="space-4"></div>
								<div class="6u 12u$(xsmall)">
									<h4>상세 메뉴정보 설정</h4>
								</div>
								<!-- 메뉴보드 상세등록은 아코디언 형식으로! UI 깔끔하게 많은 정보를 입력! -->
								<div class="12u$">
									<!-- 위에서 템플릿 선택한것에 따라 메뉴 수 만큼 panel panel-defult 출력 -->
									<div class="accordion-style1 panel-group" id="accordian">
										<div class="panel panel-defult">
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

											<!-- 첫 인덱스는 반드시 class명 뒤에 in 필요! 각 클래스별 id값 다르니 주의!(id="collapseOne") -->
											<div class="panel-collapse collapse in" id="collapseOne">
												<div class="panel-body">
													<div class="widget-main">
														<div class="row">

															<div class="col-xs-10 col-sm-5">
																<div class="form-group">
																	<label for="menuTitle"> 메뉴명</label>
																	<div>
																		<select class="col-xs-10" id="menuName"
																			name="menuName" data-placeholder="메뉴">
																			<option value="none">- 메뉴 선택 -</option>
																			<c:forEach items="${menuList}" var="list">
																				<option value="${list.menuName}">${list.menuName}</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>

																<div class="form-group">
																	<label for="menuDivision">메뉴분류</label>
																	<div>
																		<input type="text" class="col-xs-10" name="menuType"
																			id="menuType" value="" placeholder="메뉴 분류" />
																	</div>
																</div>

																<div class="form-group">
																	<label for="menuTitle"> 가격</label>
																	<div>
																		<input type="text" class="col-xs-10" name="menuPrice"
																			id="menuPrice" value="" placeholder="메뉴 가격 출력" />
																	</div>
																</div>

																<div class="form-group">
																	<label for="menuEtc"> 기타사항</label>
																	<div>
																		<input type="text" class="col-xs-10" id="menuContent"
																			name="menuContent"
																			placeholder="기타사항 출력 예) 원산지, 칼로리, 외국어표기 등" />
																	</div>
																</div>
															</div>
														</div>
														<!-- row 끝-->

													</div>
													<!-- widget-main 끝-->
												</div>
												<!-- panel-body 끝-->
											</div>
											<!-- panel-collapse collapse in끝-->
										</div>
										<!-- panel panel-defult 끝-->


									</div>
									<!-- accordion-style1 panel-group 끝-->
								</div>
								<div class="clearfix form-actions">
									<div class="col-md-offset-3 col-md-6">
										<button class="btn btn-info" id="active" type="submit">
											<i class="ace-icon fa fa-hand-o-right bigger-110"></i> 적용
										</button>
										&nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i> 리셋
										</button>
										&nbsp; &nbsp;
										<button class="btn btn-danger" type="button"
											onclick="doDelete(${item.templateNo})">
											<i class="ace-icon fa fa-exclamation-circle bigger-110"></i>
											삭제
										</button>

										&nbsp; &nbsp;
										<button class="btn btn-success" type="button"
											onclick="doList()">
											<i class="ace-icon fa fa-folder-open-o bigger-110"></i> 목록
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

		<div class="footer">
			<div class="footer-inner">
				<div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">Ace</span>
						Application &copy; 2013-2014
					</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
							<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
					</a> <a href="#"> <i
							class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
					</a> <a href="#"> <i
							class="ace-icon fa fa-rss-square orange bigger-150"></i>
					</a>
					</span>
				</div>
			</div>
		</div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<script>
    function doList(){
        location.href="../template/list";
    }
    
    function doDelete(templateNo){
        location.href="../template/delete?templateNo="+ templateNo;
    }
    </script>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<!-- 이 영역 if IE 처리 되어 있는데 왜? -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery-2.1.4.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
	<!-- 여기까지 -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/chosen.jquery.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.knob.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/autosize.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.inputlimiter.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.maskedinput.min.js"></script>
	<!-- ace scripts -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace-elements.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace.min.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
    
    var menuList = {};
    <c:forEach items="${menuList}" var="menu">
    menuList['${menu.menuName}'] = {
      /* menuNo:'${menu.menuNo}', */
      menuType:'${menu.menuType}',
      menuName:'${menu.menuName}',
      menuPrice:'${menu.menuPrice}',
      menuContent:'${menu.menuContent}',
      fileName:'${menu.menuImage.fileName}' 
    };
    </c:forEach>
    
    var mtype = document.getElementById("menuType");
    var mprice = document.getElementById("menuPrice");
    var mcontent = document.getElementById("menuContent");
    var fileName = document.getElementById("output1");
    $('#menuName').on('change', function() {
      var menuName = $(this).prop('value');
      mtype.value = (menuList[menuName].menuType);
      mprice.value = (menuList[menuName].menuPrice);
      mcontent.value = (menuList[menuName].menuContent);
      fileName.src = (menuList[menuName].fileName);
    })
        
    
    
        $(function() {
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
                $('#chosen-multiple-style .btn').on(
                        'click',
                        function(e) {
                            var target = $(this).find('input[type=radio]');
                            var which = parseInt(target.val());
                            if (which == 2)
                                $('#form-field-select-4').addClass(
                                        'tag-input-style');
                            else
                                $('#form-field-select-4').removeClass(
                                        'tag-input-style');
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
    
            $(document).one('ajaxloadstart.page',function(e) {
                autosize.destroy('textarea[class*=autosize]')
                $('.limiterBox,.autosizejs').remove();
                $('.daterangepicker.dropdown-menu,.colorpicker.dropdown-menu,.bootstrap-datetimepicker-widget.dropdown-menu').remove();
            });
        });
        
    </script>
</body>
</html>