<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/registration.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/board.css" />
<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
</head>

<body class="subpage">

	<
	<!-- Header -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="../navi.jsp"></jsp:include>

	<!-- Main -->
	<div id="main">
		<section class="wrapper">
		<div class="inner">
			<header class="align-center">
			<h2>내가 쓴 게시글</h2>
			</header>
		</div>
		</section>
		<jsp:include page="../navi2.jsp"></jsp:include>
		<section class="wrapper style1">
		<div class="inner">
			<div class="row">
				<div class="9u$ 12u$(medium)">
					<div class="box">
						<div class="row uniform">
							<div class="12u$">
								<div class="table-wrapper">
									<table class="alt" id="mypage_table">
										<thead>
											<tr>
												<th>작성일</th>
												<th>제목</th>
												<th>작성자</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${searchList}" var="item">
												<tr onclick="document.location.href='../board/list'">
													<td>${item.createDate}</td>
													<td>${item.boardSubject}</td>
													<td>${item.boardWriter}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
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
							</div>
							<!-- Break -->
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
	</div>

	<!-- Footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
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
	<script type="text/javascript">
		function page(pageNo) {
			location.href = "../board/myarticle?curPage=" + pageNo;
		}
	</script>
</body>
</html>