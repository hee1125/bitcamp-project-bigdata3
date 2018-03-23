<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판 글 작성</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />
<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/board.css" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css"
	rel="stylesheet" />
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
</head>

<body class="subpage">

	<!-- Header -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="../navi.jsp"></jsp:include>
	</nav>

	<div class="container" style="padding-top: 100px;">
		<h3 class="header" style="color: tomato">게시판 글 등록하기</h3>
		<form action="insert" class="boardSubmit" method="post"
			enctype="multipart/form-data">
			<table class="table table-bordered">
				<tr>
					<th>분류</th>
					<td><select name="category">
							<c:forEach items="${category}" var="item">
								<option name="category" value="${item.boardCategoryNo}">${item.category}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<th>글 제목</th>
					<td><input type="text" name="boardSubject"
						class="form-control" /></td>
				</tr>
				<tr>
					<th>글 내용</th>
					<td><textarea class="form-control" id="summernote"
							name="boardContent" placeholder="boardContent" maxlength="140"
							rows="7"></textarea></td>
				</tr>
				<tr>
					<th>파일첨부</th>
					<td>
						<div class="fileForm">
							<input type="file" name="file" />
						</div>
					</td>
				</tr>
			</table>

			<button class="btn btn-primary" type="submit">작성하기</button>
			<button type="button" class="fileAdd btn btn-success">파일 추가</button>
			<button type="button" class="btn btn-warning" name="" id="">목록으로</button>
			<!-- 클릭시 noticeboard.html의 <div clsss="container" id="main">으로 -->
		</form>
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

	<script>
		$(document).ready(function() {
			function sendFile(file, editor, welEditable) {
				data = new FormData();
				data.append("uploadFile", file);
				$.ajax({
					data : data,
					type : "POST",
					url : "../board/insert",
					cache : false,
					contentType : false,
					processData : false,
					success : function(data) {
						editor.insertImage(welEditable, data.url);
					}
				});
			}

			$('#summernote').summernote({
				height : 350,
				onImageUpload : function(files, editor, welEditable) {
					sendFile(files[0], editor, welEditable);
				},
				lang : 'ko-KR'
			});
		});
	</script>
	<script>
		$(document).ready(function() {
			$('.fileAdd').click(function() {
				if ($('.fileForm').children().length >= 5) {
					alert("파일은 5개 까지만 추가 가능합니다.");
				} else {
					$('.fileForm').append('<input type="file" name="file"/>');
				}
			})
		});
	</script>
	<script type="text/javascript">
		
	</script>
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
</body>
</html>