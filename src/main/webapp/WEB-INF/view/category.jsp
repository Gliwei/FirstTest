<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<c:forEach items="${list}" var="item">
	${item.name}<br>
	<c:forEach items="${item.children}" var="c1">
		--${c1.name}<br>
		<c:forEach items="${c1.children}" var="c2">
			----${c2.name}<br>
		</c:forEach>
	</c:forEach>
</c:forEach>
</body>
</html>
