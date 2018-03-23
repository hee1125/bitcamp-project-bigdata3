<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
	<title>Chatbot intro</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/main.css" />
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/Footer-with-button-logo.css">
	<!-- Favicon and touch icons -->
	<link rel="icon" href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
</head>

<body class="subpage">

	<!-- Header -->
	<jsp:include page="./header.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="./navi.jsp"></jsp:include>

	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">
				<header class="align-center">
					<h1>Store Chatbot</h1>
					<br>
					<p style="color: darkblue">안녕하세요. 매장상태를 알려주는 매장 '매장봇' 입니다.
						<br> 매장봇은 메인메뉴판과 이벤트메뉴판을 알려주며 실내를 쾌적하게 관리하기 위해 온도, 습도 및 미세먼지 농도를 제공 및 제어하는 챗봇입니다.</p>
				</header>
				
				
				<!-- Content -->
					<div class="row 200%">
					
						<div class="6u 12u$(medium)">
						
							<div class="row">
								<div class="6u 12u$(small)">
									<br>
									<span class="image fit">
										<img src="images/easy.png" alt="" />
									</span>
								</div>
								
								<div class="6u$ 12u$(small)">
									<br>
									<h4>매장 실시간 정보 확인</h4>
									<ul class="alt">
										<p style="color: chocolate">'매장봇' 은 스마트폰만 있다면 매장의 실시간 정보를 확인할수 있으며 간단한 명령어 및 버튼 클릭으로 매장을 관리가 가능합니다.
										</p>
									</ul>
								</div>
							</div>
							
							<br>
							<br>
							<br>
							<div class="row">
								<div class="6u 12u$(small)">
									<br>
									<span class="image fit">
										<img src="images/phone.jpg" alt="" width="250" height="200" />
									</span>
								</div>
								<br>
								<div class="6u$ 12u$(small)">
									<h4>메신저 앱 사용시간 증가</h4>
									<ul class="alt">
										<p style="color: chocolate">사람들은 메신저 앱에서 대부분의 시간을 보내고 있으며 세계적으로도 메신저 앱사용시간이 증가하는 추세입니다. 메신저 기반의 챗봇은 메시지만 보내면 원하는 서비스를 받을 수 있어 이용하기 쉽습니다.</p>
									</ul>
								</div>
							</div>
						</div><!-- 6u 12u$(medium) -->


						<div class="6u 12u$(medium)">
							<div class="row">
								<br>
								<div class="6u 12u$(small)">
									<span class="image fit">
										<img src="images/home.png" alt="" />
									</span>
								</div>

								<div class="6u$ 12u$(small)">
									<h4>iot 장비 제어</h4>
									<ul class="alt">
										<p style="color: chocolate">실시간 온도정보, 에어컨 on/off, 가습기 on/off 제어가 가능하여 어디에서든지 매장을 관리 할수있습니다.</p>
									</ul>
								</div>
							</div>
							<br>
							<br>
							<br>
							
							<div class="row">
								<br>
								<div class="6u 12u$(small)">
									<span class="image fit">
										<img src="images/fb.jpg" alt="" width="200" height="200" />
									</span>
								</div>

								<div class="6u$ 12u$(small)">
									<h4>페이스북 메신저 사용자 증가</h4>
									<ul class="alt">
										<p style="color: chocolate">최근 메신저 기반 SNS가 뛰어난 사용성·편리성을 앞세워 기존 웹·앱 기반 SNS 사용자를 넘어섬에 따라 챗봇에 대한 관심이 급격하게 증가하고 있습니다. 메신저 기반의 챗봇(Chatbot)은 새 앱을 깔거나 기술을 배울 필요 없이 메시지만 보내면 원하는 서비스를 받을 수 있습니다.</p>
									</ul>
								</div>
							</div>
						</div>
						
					</div>
				</div>
		</section>

				<section class="wrapper style1">
					<div class="inner">
						<header class="align-center">
							<h1>Comming soon</h1>
							<br>
							<p>서비스 준비중 입니다.</p>
						</header>
						<div class="flex flex-4">
							<div class="col align-center">
								<div class="image round fit">
									<img src="images/ai.png" alt="" />
								</div>
								<br>
								<p>
									인공지능 기술 + 자연어 처리 능력까지 더해진 챗봇 서비스 준비중
								</p>
								<br>
							</div>
							<div class="col align-center">
								<div class="image round fit">
									<img src="images/kakao.png" alt="" />
								</div>
								<br>
								<p>
									챗봇 플랫폼(카카오/라인) 서비스 준비중
								</p>
								<br>

							</div>
							<div class="col align-center">
								<div class="image round fit">
									<img src="images/de.jpg" alt="" />
								</div>
								<br>
								<p>
									배달 및 예약 서비스 준비중
								</p>
								<br>

							</div>
						</div>
					</div>
				</section>
		</div>
	

	<!-- Footer -->
	<jsp:include page="./footer2.jsp"></jsp:include>

			<!-- Scripts -->
			<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>
</body>

</html>