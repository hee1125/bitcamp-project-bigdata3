<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="align-center">
	<ul class="pagination">
		<c:if test="${paging.curGroup >= 1}">
			<li><a href="#" onclick="list('1')">Start</a></li>
		</c:if>
		<c:if test="${paging.curGroup >= 1}">
			<li><a href="#" onclick="list(${paging.prevPage})">Prev</a></li>
		</c:if>
		<c:if test="${paging.curPage >= 1}">
			<c:forEach var="num" begin="${paging.groupStart}"
				end="${paging.groupEnd}">
				<c:choose>
					<c:when test="${num == paging.curPage}">
						<li><span style="color: red">${num}</span>&nbsp;</li>
					</c:when>
					<c:otherwise>
						<li><a href="#" onclick="list(${num})">${num}</a>&nbsp;</li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:if>
		<c:if test="${paging.curGroup <= paging.totGroup}">
			<li><a href="#" onclick="list(${paging.nextPage})">Next</a></li>
		</c:if>
		<c:if test="${paging.curPage <= paging.totPage}">
			<li><a href="#" onclick="list(${paging.totPage})">End</a></li>
		</c:if>
	</ul>
</div>
