<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="3u 12u$(medium)">
	<div class="box">
		<p align="center">
			<strong>${loginBranchMaster.name}</strong> 님 반갑습니다.
		</p>
		<a href="../auth/logout" class="button alt">로그 아웃</a>
	</div>
	<div class="box">
		<ul class="actions vertical">
			<li><a href="store_retouch.html" class="button">매장정보</a></li>
			<li><a href="iot_retouch.html" class="button">기기정보</a></li>
			<li><a href="menu_retouch.html" class="button">메뉴정보</a></li>
			<li><a href="board/myarticle" class="button">내가 쓴 게시글</a></li>
			<li><a href="mypage.html" class="button">마이페이지 처음으로 돌아가기</a></li>
		</ul>
	</div>
</div>