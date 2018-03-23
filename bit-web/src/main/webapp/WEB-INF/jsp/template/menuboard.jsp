<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴보드 Type1</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/menu_board.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />
<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
</head>
<style>
body {
	overflow: hidden;
}

#header>.logo {
	left: 3em;
}

.wrapper.style1 h3 {
	color: orangered;
}

.wrapper.style1 strong {
	color: brown;
}

.hit {
	animation-name: blink;
	animation-duration: 1.5s;
	animation-timing-function: ease;
	animation-iteration-count: infinite;
	/* 위 속성들을 한 줄로 표기하기 */
	/* -webkit-animation: blink 1.5s ease infinite; */
}

/* 애니메이션 지점 설정하기 */
/* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
@
keyframes blink {
	from {color: white;
}

30%
{
color
:yellow
;
}
to {
	color: red;
	font-weight: bold;
}
/* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
}
</style>
<body>
	<header id="header">
		<div class="logo">
			<a href="index.html">BIGDATA3 </a>
		</div>
	</header>

	<div id="main">
		<section class="wrapper style1">
			<div class="inner">

				<div class="row 200%">
					<div class="6u 12u$(medium)">
						<div class="row">
							<div class="6u 12u$(small)">
								<span class="image fit"><img
									src="${pageContext.servletContext.contextPath}/images/menu_board02.jpg"
									alt="" /></span>
							</div>
							<div class="6u$ 12u$(small)">
								<h3>
									${menuBoard[0].menuName} <span class="hit"> New!</span>
								</h3>
								<ul class="actions">
									<li><strong>분류 : ${menuBoard[0].menuType}</strong></li>
									<li><strong>가격 : ${menuBoard[0].menuPrice}</strong></li>
									<li><strong>${menuBoard[0].menuContent}</strong></li>
								</ul>
							</div>
						</div>

						<div class="row">
							<div class="6u 12u$(small)">
								<h3>
									${menuBoard[1].menuName} <span class="hit"> Hit!</span>
								</h3>
								<ul class="actions">
									<li><strong>분류 : ${menuBoard[1].menuType}</strong></li>
									<li><strong>가격 : ${menuBoard[1].menuPrice}</strong></li>
									<li><strong>${menuBoard[1].menuContent}</strong></li>
								</ul>
							</div>
							<div class="6u$ 12u$(small)">
								<span class="image fit"><img
									src="${pageContext.servletContext.contextPath}/images/안심.jpg"
									width="" height="280px" alt="" /></span>
							</div>
						</div>

						<div class="row">
							<div class="6u 12u$(small)">
								<span class="image fit"><img
									src="${pageContext.servletContext.contextPath}/images/시저샐러드.jpg"
									alt="" /></span>
							</div>
							<div class="6u$ 12u$(small)">
								<h3>${menuBoard[2].menuName}</h3>
								<ul class="actions">
									<li><strong>분류 : ${menuBoard[2].menuType}</strong></li>
									<li><strong>가격 : ${menuBoard[2].menuPrice}</strong></li>
									<li><strong>${menuBoard[2].menuContent}</strong></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="6u 12u$(medium)">
						<div class="row">
							<div class="6u 12u$(small)">
								<span class="image fit"><img
									src="${pageContext.servletContext.contextPath}/images/알리오.jpg"
									alt="" /></span>
							</div>
							<div class="6u$ 12u$(small)">
								<h3>
									${menuBoard[3].menuName} <span class="hit"> Hit!</span>
								</h3>
								<ul class="actions">
									<li><strong>분류 : ${menuBoard[3].menuType}</strong></li>
									<li><strong>가격 : ${menuBoard[3].menuPrice}</strong></li>
									<li><strong>${menuBoard[3].menuContent}</strong></li>
								</ul>
							</div>
						</div>

						<div class="row">
							<div class="6u 12u$(small)">
								<h3>${menuBoard[4].menuName}</h3>
								<ul class="actions">
									<li><strong>분류 : ${menuBoard[4].menuType}</strong></li>
									<li><strong>가격 : ${menuBoard[4].menuPrice}</strong></li>
									<li><strong>${menuBoard[4].menuContent}</strong></li>
								</ul>
							</div>
							<div class="6u$ 12u$(small)">
								<span class="image fit"><img
									src="${pageContext.servletContext.contextPath}/images/케이크.jpg" height="280px"
									alt="" /></span>
							</div>
						</div>

						<div class="row">
							<div class="6u 12u$(small)">
								<span class="image fit"><img
									src="${pageContext.servletContext.contextPath}/images/menu_board05.jpg"
									alt="" /></span>
							</div>
							<div class="6u$ 12u$(small)">
								<h3>${menuBoard[5].menuName}</h3>
								<ul class="actions">
									<li><strong>분류 : ${menuBoard[5].menuType}</strong></li>
									<li><strong>가격 : ${menuBoard[5].menuPrice}</strong></li>
									<li><strong>${menuBoard[5].menuContent}</strong></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>