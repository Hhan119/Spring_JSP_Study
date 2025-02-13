<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%--
  		/WEB-INF/lib/jstl-1.2.jar 파일에서 jsp/jstl/core 라이브러리를 import해서
  		c 라는 접두어로 사용하겠다는 의미 
   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test_jstl/hello.jsp</title>
</head>
<body>
	<h1>Java Standard Tag Library(JSTL)</h1>
	<h1>JSTL 의 core 라이브러리 사용해 보기</h1>

	<c:forEach var="i" begin="0" end="9" step="1">
		<p> 안녕 JSTL <strong>${i }</strong></p>
	</c:forEach>

	<h1>JSTL 을 사용하지 않고 java code 를 활용해서 위와 같은 동작을 해 보세요</h1>
	<%for(int i=0; i<10; i++){ %>
		<p> 안녕 JSTL <strong><%=i %></strong></p>
	<%} %>
</body>
</html>












