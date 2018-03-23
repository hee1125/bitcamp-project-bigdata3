<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scaclable=no">
		<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

		<title>레스토랑 적용 사례 소개</title>
		<!-- Favicon and touch icons -->
    <link rel="icon" href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
		<style>
			#container div {
				width:340px;
				background:#fff;
				border:2px solid #aaa;
				padding:15px;
				padding-bottom:15px;
				margin:15px;				
			}		
			#container div img {
				width:100%;
				border-bottom:1px solid #ccc;
				padding-bottom:15px;
				margin-bottom:5px;
			}

			#container div h2 {
				font-size:1.2em;
			}
			#container div p {
				font-family:"맑은 고딕", 돋움;
				color:#333;
				margin:0;
				padding:10px;
			}			
		</style>
		<script src="${pageContext.servletContext.contextPath}/assets/js/jquery-2.1.3.min.js"></script>
		<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.vgrid.min.js"></script>
	</head>
	<body class="subpage">

		<!-- Header -->
	<jsp:include page="./header.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="./navi.jsp"></jsp:include>
			
		<div id="main">

				<!-- wrapper header : margin bottom을 0으로 -->
					<section class="wrapper">
						<div class="inner">
							<header class="align-center">
								<h1>서비스를 적용중인 레스토랑 소개</h1><!-- 간혹 페이지 이상시 새로고침(f5)누르면 정상화됨...-->
								<p><i class="ace-icon fa fa-cutlery"></i> 많은 매장에서 저희의 서비스를 이용중 입니다. 각 매장의 홈페이지나 블로그로도 이동하실 수 있습니다.<br>
								</p>
							</header>
						</div>
					</section>
		</div>
		<div id="container">
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/geraldine-lewa-368765.jpg" alt="" class="btn" onclick="clickBtn();" />
					<a href="#"><h2>Restraunt LEWA - 이태원1호점</h2></a><!-- store url or blog로 연결 --> 		
					<p><strong>스토어 코멘트 : </strong> 맛, 청결, 섬세함, 분위기 모두 자신있어요~ </p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/menu01.jpg" alt="" class="btn" onclick="clickBtn();" />
					<a href="#"><h2>The Sweets - 홍대1호점</h2></a>			
					<p><strong>스토어 코멘트 : </strong>"울트라 핫케잌" 우리 가게의 강추 메뉴입니다!!  </p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/restaurants.jpg" alt="" class="btn" onclick="clickBtn();" />
					<a href="#"><h2>Paris restaurant - 논현1호점</h2></a>		
					<p><strong>스토어 코멘트 : </strong> 데이트 장소로 추천해요. </p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/restaurants_chicago.jpg" alt="" class="btn" onclick="clickBtn();" />
					<a href="#"><h2>Chicago - 이태원1호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>비지니스맨 및 커플 손님이 많습니다.</p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/cami-talpone-370326.jpg" alt="" class="btn" onclick="clickBtn();" />
					<a href="#"><h2>CIRCO'S - 이태원1호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>이곳에서 좋은 사람들과 즐거운 시간을 갖으세요.</p>
				</div>	
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/cristine-enero-425454.jpg" alt="" class="btn" onclick="clickBtn();" />
					<a href="#"><h2>SAMSAM - 이태원1호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>오늘 저녁 이곳에서 치맥 한잔 어떠세요?^^</p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/julien-lux-332568.jpg" alt="" class="btn" onclick="clickBtn();" />
					<a href="#"><h2>CIVERINOS - 종로2호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>이탈리아풍의 케주얼 레스토랑 입니다.</p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/muhammad-wahyu-nur-pratama-189040.jpg" alt="" class="btn" onclick="clickBtn();" />
				<a href="#"><h2>J.CO - 신촌2호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>원두커피의 풍부한 향과 맛을 느낄 수 있습니다.</p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/ryan-plomp-356366.jpg" alt="" class="btn" onclick="clickBtn();" />
				<a href="#"><h2>Hop &amp; Stork - 압구정1호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>원조 벨기에 초코릿과 커피로 스위트한 시간을 보내세요.</p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/clifford-yeo-452260.jpg" alt="" class="btn" onclick="clickBtn();" />
				<a href="#"><h2>Cafe.NA - 논현2호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>스터디 카페로서의 이용도 대환영입니다~</p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/the-creative-exchange-373981.jpg" alt="" class="btn" onclick="clickBtn();" />
				<a href="#"><h2>Marshe - 여의도1호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>넓은 실내공간에서 여유로운 시간을 즐기세요.</p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/benjamin-hung-340383.jpg" alt="" class="btn" onclick="clickBtn();" />
				<a href="#"><h2>MUTSUMI - 동경1호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>전통 일식을 저렴한 가격에 경험해 보세요. 한국손님 대환영^^</p>
				</div>
				<div>
					<img src="${pageContext.servletContext.contextPath}/images/stanford-smith-369293.jpg" alt="" class="btn" onclick="clickBtn();" />
				<a href="#"><h2>Smith - 런던1호점</h2></a>					
					<p><strong>스토어 코멘트 : </strong>토트넘 홈구장인 화이트트레인 근처입니다. 축구경기전 커피 한잔 어떠세요?</p>
				</div>	
		</div>
	
	<!-- Footer -->
	<jsp:include page="./footer.jsp"></jsp:include>
	
	
		<script>
			$('#container').vgrid({
				time:400,
				delay:30,
				wait:500
			});
		</script>
		
		<script src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
		<script src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
		<script src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>
		<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	</body>
</html>