<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/user/loginform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<dvi class="container">
		<h3>로그인 폼</h3>
		<form action="${pageContext.request.contextPath }/user/login.jsp" method="post">
			<div class="mb-2">
				<laber class="form-label" for="id">아이디</laber>
				<input class="form-control" type="text" name="id" id="id" />
			</div>
			<div class="mb-2">
				<laber class="form-label" for="pwd">비밀번호</laber>
				<input class="form-control" type="password" name="pwd" id="pwd" />
			</div>
			<button class="btn btn-primary" type="submit">로그인</button>
		</form>
		</div>
</body>
</html>