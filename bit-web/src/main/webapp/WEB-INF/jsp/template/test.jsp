<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="${pageContext.servletContext.contextPath}/assets/js/chosen.jquery.min.js"></script>
<title>Insert title here</title>

</head>
<body>
	<select id=selectType>
		<c:forEach items="${menuList}" var="itme">
			<option value="${item.menuType}">${item.menuType}</option>
		</c:forEach>
	</select>
<script>
</script>
</body>
</html>