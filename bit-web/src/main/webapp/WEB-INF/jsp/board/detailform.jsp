<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판 상세보기</title>
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
	<header id="header">
	<div class="logo">
		<a href="index.html">BIGDATA3 <span>by Donny</span></a>
	</div>
	<a href="#menu">Menu</a> </header>

	<!-- Nav -->
	<nav id="menu">
	<ul class="links">
		<li><a href="index.html">메인</a></li>
		<li><a href="loginmain.html">로그인</a></li>
		<li><a href="mypage.html">마이페이지</a></li>
		<li><a href="store_management.html">매장관리</a></li>
		<li><a href="elements.html">빅데이터</a></li>
		<li><a href="noticeboard.html">게시판</a></li>
		<li><a href="index_admin.html">Admin Only</a></li>
	</ul>
	</nav>

	<div id="sub_wrap">
		<div class="container" style="padding-top: 100px;">
			<h3 class="header" style="color: tomato">게시판 내용 상세보기</h3>
			<form action="insert" class="boardSubmit" method="post"
				enctype="multipart/form-data">
				<div class="input-groups" role="group" aria-label="">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>작성자</th>
								<td><input type="text" class="form-control" name=""
									value="${board.boardWriter}" /></td>
							</tr>
							<tr>
								<th>조회수</th>
								<td><input type="text" class="form-control" name=""
									value="${board.boardHit}" /></td>
							</tr>
							<tr>
								<th>날짜</th>
								<td><input type="text" class="form-control" name=""
									value="${board.createDate}" /></td>
							</tr>
							<%-- <tr>
								<th>댓글수</th>
								<td><input type="text" class="form-control" name=""
									value="${board.boardReplyCount}" /></td>
							</tr> --%>
							<tr>
								<th>글 제목</th>
								<td><input type="text" name="boardSubject"
									class="form-control" value="${board.boardSubject}" /></td>
							</tr>
						</thead>

						<tr>
							<th>글 내용</th>
							<td><textarea class="form-control" id="summernote"
									name="boardContent" placeholder="boardContent" maxlength="140"
									rows="7">${board.boardContent}</textarea></td>
						</tr>

					</table>
				</div>

				<button type="button" class="btn btn-primary" name="" id="reply"
					onclick="">댓글보기</button>
				<!-- 버튼 클릭시 아래 댓글 인풋 그룹 보여지기 하고싶음-->
				<button type="button" class="btn btn-success" name="" id="update"
					onclick="">수정</button>
				<button type="button" class="btn btn-danger" name="" id="delete"
					onclick="">삭제</button>
				<button type="button" class="btn btn-warning" name="" id="boardMain"
					onclick="">목록으로</button>
				<!-- 클릭시 noticeboard.html의 <div clsss="container" id="main">으로 이동-->

				<hr />

				<!-- 댓글 인풋 그룹. 위의 댓글보기 버튼 누르기 전까지 화면 안보이게 숨기고 싶음... -->
				<div class="input-groups" role="group" id="commentReply">
					<textarea class="form-control" id="replyContent"
						placeholder="댓글을 입력하세요"></textarea>
					<button class="btn btn-primary" type="button" name="commentWrite"
						id="commentWrite">댓글등록</button>
					<div id="replyList"></div>
				</div>

				<!-- Comment 태그 추가 -->
				<div class="input-group" role="group" aria-label="..."
					style="margin-top: 10px; width: 100%;">
					<div id="showComment" style="text-align: center;"></div>
				</div>
			</form>
		</div>
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

	<script type="text/javascript">
	
	  listReply();
		$('#commentWrite').click(function() {
			var replyContent = $("#replyContent").val();
			var boardNo = "${board.boardNo}"
			var param = "replyContent=" + replyContent + "&boardNo=" + boardNo;
			$.ajax({
				type : "post",
				url : "../reply/insert",
				data : param,
				success : function() {
					alert("댓글이 등록되었습니다.");
					replyList();
				}
			});
		});

		function listReply() {
			$.ajax({
						type : "get",
						url : "../reply/list?boardNo=${board.boardNo}",
						success : function(result) {
							console.log(result);
							var output = "<table class='table table-striped table-bordered' style='margin-top: 10px;'><tbody>";
							for ( var i in result) {
								output += "<tr align='left'>";
								output += "<td>" + result[i].replyer;
								output += "(" + result[i].createDate
										+ ")<br>";
								output += result[i].replyContent + "</td>";
								output += "</tr>";
							}
							output += "</table>";
							$("#replyList").html(output);
						}
					});
		}
	</script>
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