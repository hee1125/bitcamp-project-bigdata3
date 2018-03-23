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
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="../navi.jsp"></jsp:include>

	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">
				<header class="align-center">
					<h1>Use BigData</h1>
					<br>
					<p style="color: darkblue">4차산업혁명시대에 맞는 빅데이터 플랫폼을 사용하여 각 매장의 차별화된 시스템을 도입해 드립니다. </p>
				</header>
				
				
				<!-- Content -->
					<div class="row 200%">
					
						<div class="6u 12u$(medium)">
						
							<div class="row">
								<div class="6u 12u$(small)">
									<br>
									<span class="image fit">
										<img src="${pageContext.servletContext.contextPath}/images/data1.jpg" alt="" width="auto;" height="264px;" />
									</span>
								</div>
								
								<div class="6u$ 12u$(small)">
									<br>
									<h4>빅데이터 정보</h4>
									<ul class="alt">
										<p style="color: chocolate">다양하고 광범위한 데이터와 이에 대한 분석을 통해 얻은 정보는 지점의 장기적인 전략을 수립하는데 기준점을 제공 합니다.
										</p>
									</ul>
								</div>
							</div>
							
							<br>
							<br>
							<br>
							<br>
							<div class="row">
								<div class="6u 12u$(small)">
									<br>
									<span class="image fit">
										<img src="${pageContext.servletContext.contextPath}/images/data2.jpg" alt="" width="auto;" height="264px;" />
									</span>
								</div>
								<br>
								<div class="6u$ 12u$(small)">
									<h4>전세계 정보량 증가</h4>
									<ul class="alt">
										<p style="color: chocolate">2011년 전세계 디지털 정보량은 약 1.8ZB(제타바이트)<br>
										2020년에 관리해야 할 정보의 데이터는 50배 이상 증가 예상</p>
									</ul>
								</div>
							</div>
						</div><!-- 6u 12u$(medium) -->


						<div class="6u 12u$(medium)">
							<div class="row">
								<br>
								<div class="6u 12u$(small)">
									<span class="image fit">
										<img src="${pageContext.servletContext.contextPath}/images/data3.jpg" alt="" width="auto;" height="264px;" />
									</span>
								</div>

								<div class="6u$ 12u$(small)">
									<h4>SNS를 통한 매장의 소비자 만족도 조사</h4>
									<ul class="alt">
										<p style="color: chocolate">SNS를 통해 지점별 소비자들의 만족도를 파악하고 보완점을 개선해 나가 브랜드 이미지를 만들어 갈수있도록 도와드립니다.</p>
									</ul>
								</div>
							</div>
							<br>
							<br>
							<br>
							<br>
							<div class="row">
								<br>
								<div class="6u 12u$(small)">
									<span class="image fit">
										<img src="${pageContext.servletContext.contextPath}/images/data4.jpg" alt="" width="auto;" height="264px;" />
									</span>
								</div>

								<div class="6u$ 12u$(small)">
									<h4>지점별 매출비교를 통한 매출↑ 프로젝트</h4>
									<ul class="alt">
										<p style="color: chocolate">각 지점별 매출을 비교함으로써 보다 전략적인 마켓팅 시스템을 활용하여 귀하 매장의 매출향상에 도움을 드립니다.</p>
									</ul>
								</div>
							</div>
						</div>
						
					</div>
				</div>
		</section>
		<br>
		<br>
		<br>
	</div>
	
	<!-- Footer -->
	<jsp:include page="../footer2.jsp"></jsp:include>

			<!-- Scripts -->
			<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>
</body>

</html>