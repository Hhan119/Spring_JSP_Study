<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04.jsp</title>
</head>
<body>
	<h1>폼에 입력한 내용을 페이지 전환 없이 전송하기</h1>
	<form action="${pageContext.request.contextPath }/user/login.jsp" method="post" id="myForm">
		<input type="text" name="id" placeholder="아이디 입력.." />
		<input type="password" name="pwd" placeholder="비밀번호 입력.." />
		<button type="submit">로그인</button>
	</form>
	
	<br>
	
	<h1>폼에 입력한 내용을 페이지 전환 없이 전송하기</h1>
	<form action="${pageContext.request.contextPath }/user/login.jsp" method="get" id="myForm2">
		<input type="text" name="id" placeholder="아이디 입력.." />
		<input type="password" name="pwd" placeholder="비밀번호 입력.." />
		<button type="submit">로그인</button>
	</form>
	
	<script>
		// 폼에 submit 이벤트가 발생했을 때 실행할 함수 등록
		document.querySelector("#myForm").addEventListener("submit", (e)=>{
			// event 객체의 .preventDefault() 함수를 호출하면 기본 동작을 막는다(폼 제출이 막아진다.)
			e.preventDefault();
			//폼에 입력한 내용을 FormData type으로 얻어내기
			const data = new FormData(e.target); // e.target은 form의 참조 값이다.
			// FormData를 이용해서 query String 얻어내기
			const queryString = new URLSearchParams(data).toString();
			// query String을 콘솔에 출력하기
			console.log(queryString);
			// action 속성의 value 읽어오기 
			const url = e.target.action;
			// fetch() 함수를 이용햇 post 방식 요청하기 
			fetch(url, {
				method : "POST",
				headers : {"Content-Type":"application/x-www-form-urlencoded; charset=utf-8"},
				body : queryString
			})
			.then(res=>res.json())
			.then(data=>{
				console.log(data);
			});
		});
		
		
		document.querySelector("#myForm2").addEventListener("submit", (e)=>{
			e.preventDefault();
			const data = new FormData(e.target);
			const queryString = new URLSearchParams(data).toString();
			console.log(queryString)
			const url = e.target.action;
			fetch(url+"?"+queryString)
			.then(res=>res.json())
			.then(data=>{
				console.log(data);
			});
		});
		
	</script>
</body>
</html>