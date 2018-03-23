<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>

<html lang="ko">
	<head>
	<title>Store 정보</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/registration.css" />
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
		<section class="wrapper">
			<div class="inner">
				<header class="align-center">
					<h2>매장 정보 및 수정</h2>
					<p>등록된 매장정보를 확인할 수 있습니다. </p>
				</header>
			</div>
		</section>

		<section class="wrapper style1">
			<div class="inner">
				<div class="row">
					<div class="3u 12u$(medium)">
						<div class="box">
							<p align="center">
								<strong>'${loginBranchMaster.name}'</strong> 님 반갑습니다.
							</p>
							<a href="loginmain.html" class="button special">로그인 페이지 이동</a>
							<a href="${pageContext.request.contextPath}/auth/logout.do" class="button alt" onclick="">로그 아웃</a>
						</div>
						<div class="box">
							<ul class="actions vertical">
								<li><a href="#" class="button" data-toggle="modal" data-target="#passModal">패스워드재설정</a></li>
								<li><a href="bracnhinfo" class="button">매장정보</a></li>
								<li><a href="deviceinfo" class="button">기기정보</a></li>
								<li><a href="menu_retouch.html" class="button">메뉴정보</a></li>
								<li><a href="writed_bd.html" class="button">내가 쓴 게시글</a></li>
								<li><a href="delete_user.html" class="button">회원탈퇴</a></li><!-- 모달창으로 구현? -->
							</ul>
						</div>
					</div>
					<div class="9u$ 12u$(medium)">
						<div class="box">
							<form method="post" action="#">
								<div class="row uniform">

									<div class="2u 12u$(xsmall)">
										<h4>매장명</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<div class="select-wrapper">
											<select name="branchSelect" id="branchSelect">
															<c:forEach items="${branchList}" var="branch">
															<option value="${branch.no}">${branch.name}</option>
															</c:forEach>
														</select>
										</div>
									</div>
									<div class="2u 12u$(xsmall)">
										<h4>사업주명</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text" name="store_ceo" id="store_ceo" value="${loginBranchMaster.name}" placeholder="사업주님의 성함" />
									</div>
									<div class="2u 12u$(xsmall)">
										<h4>매장연락처</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text" name="btel" id="btel" value="" placeholder="Store Tel" />
									</div>
									<div class="2u 12u$(xsmall)">
										<h4>매장주소</h4>
									</div>
									<div class="3u 12u$(xsmall)">
										<input type="text" name="zipcode" id="sample6_postcode" value="" placeholder="우편번호" />
									</div>
									<div class="3u$ 12u$(xsmall)">
										<input type="button" class="button alt icon fa-search" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
									</div>
									<div class="2u 12u$(xsmall)">
										<h4>주소</h4>
									</div>
									<div class="5u 12u$(xsmall)">
										<input type="text" name="baddr" id="baddr" value="" placeholder="주소" />
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text" name="adress2" id="sample6_address2" value="" placeholder="상세주소" />
									</div>
									<div class="3u 12u$(xsmall)">
										<h4>매장 홈페이지</h4>
									</div>
									<div class="8u$ 12u$(xsmall)">
										<a href="#" class="store">홈페이지 URL주소 or 블로그 URL</a>
									</div>

									<!-- Break -->
									<div class="3u 12u$(xsmall)"></div>
									<div class="6u$ 12u$(small)">
										<ul class="actions">
											<li><input type="submit" value="매장정보수정" /></li>
											<li><input type="reset" value="취소" class="alt" /></li>
										</ul>
									</div>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- Footer -->
	<jsp:include page="../footer2.jsp"></jsp:include>

	<!-- Scripts -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode({
				oncomplete: function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = ''; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수

					// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						fullAddr = data.roadAddress;

					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						fullAddr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
					if (data.userSelectedType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('sample6_address').value = fullAddr;

					// 커서를 상세주소 필드로 이동한다.
					document.getElementById('sample6_address2').focus();
				}
			}).open();
		}
	</script>
	
	
	<!-- Scripts -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>
	
	<script>
		var branchList = {};
        
        <c:forEach items="${branchList}" var="branch">
        branchList['${branch.no}'] = {
        	no: '${branch.no}',
        	name: '${branch.name}',
        	tel: '${branch.tel}',
        	addr: '${branch.addr}'
        };
        </c:forEach>
       
        
        var branchNo = $('#branchSelect').prop('value');
        
        //var bno = document.getElementById("bno");
        var btel = document.getElementById("btel");
        var baddr = document.getElementById("baddr");
        //bno.value = (branchList[branchNo].no);
        btel.value = (branchList[branchNo].tel);
        baddr.value = (branchList[branchNo].addr);
        
    	$('#branchSelect').on('change', function() {
    		var branchNo = $(this).prop('value');
    		
    		//bno.value = (branchList[branchNo].no);
    		btel.value = (branchList[branchNo].tel);
    		baddr.value = (branchList[branchNo].addr);
    	})
    	
    	console.log(branchList[branchNo].tel)
    	console.log(branchList[branchNo].addr)
	</script>

</body>
</html>