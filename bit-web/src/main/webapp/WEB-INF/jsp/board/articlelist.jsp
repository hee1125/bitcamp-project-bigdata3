<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/board.css" />
<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
<style>
@media screen and (max-width: 1280px) {
	.wrapper>.inner {
		width: 70em;
	}
}
</style>
</head>
<body class="subpage">

	<!-- Header -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="../navi.jsp"></jsp:include>

	<!-- Banner -->
	<section id="banner">
	<div class="inner">
		<a href="#main" class="button fit scrolly"
			style="background-color: darkgoldenrod; margin: 0 0 3em 0;">Move
			Menu</a>
	</div>
	</section>

	<!-- Main body -->
	<div class="container" id="main">
		<section class="wrapper">
		<div class="inner">
			<header class="align-center">
			<h1>게시판</h1>
			<p>여기는 모두가 사용 가능한 커미니케이션 공간 입니다.</p>
			</header>
			<div class="table-wrapper">
				${count}
				<table>
					<thead>
						<tr>
							<th width="10%">글번호</th>
							<th width="50%">제목</th>
							<th width="10%">작성자</th>
							<th width="20%">작성일</th>
							<th width="10%">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardList}" var="item">
							<tr>
								<td>${item.boardNo}</td>
								<td><a href="../board/detail?boardNo=${item.boardNo}">${item.boardSubject}</a></td>
								<td>${item.boardWriter}</td>
								<td>${item.boardHit}</td>
								<td>${item.updateDate}</td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="4"></td>
							<td><a href="../board/new" class="button" id="write">글쓰기</a></td>
						</tr>
					</tfoot>
				</table>
			</div>
			<div class="align-center">
				<ul class="pagination">
					<c:if test="${paging.curGroup > 1}">
						<li><a href="javascript:page('${paging.prevPage}')">Prev</a></li>
					</c:if>
					<c:forEach var="num" begin="${paging.groupStart}"
						end="${paging.groupEnd}">
						<c:choose>
							<c:when test="${num == paging.curPage}">
								<li><span style="color: red">${num}</span></li>&nbsp;
                        </c:when>
							<c:otherwise>
								<li><a href="javascript:page('${num}')">${num}</a></li>&nbsp;
                        </c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.curGroup <= paging.totGroup}">
						<li><a href="javascript:page('${paging.nextPage}')">Next</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		</section>
	</div>
	<!-- Footer -->
	<footer id="footer">
	<div class="copyright">
		<ul class="icons">
			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span
					class="label">Instagram</span></a></li>
			<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
		</ul>
		<p>
			&copy; Untitled. All rights reserved. Design: <a
				href="https://templated.co">TEMPLATED</a>. Images: <a
				href="https://unsplash.com">Unsplash</a>.
		</p>
	</div>
	</footer>

	<!-- Scripts -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.min.js"></script>
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
	<script>
		function page(pageNo) {
			location.href = "../board/list?curPage=" + pageNo;
		}
		$(function() {
			$('#write').click(function() {
				location.href = "../board/new";
			})
		})
	</script>
</body>
</html>