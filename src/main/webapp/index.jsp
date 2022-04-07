<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

<title>ClassShare</title>

</head>
<body>
		<!--  네비게이션 바  -->
	<nav class="navbar navbar-default">
			<!--  네비게이션 왼쪽에 뜨는 항목 -->
		<div class="navbar-header">
			<a class="navbar-brand" href="#">ClassShare</a>
		</div>
			
			<!--  네비게이션 메뉴 -->
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="login.jsp">홈페이지</a>
				<li><a href="TimeTable.jsp">시간표</a>
			</ul>
				<!--  오른쪽에 뜨는 항목들 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="active">
					<a href="login.jsp">로그인</a>
					</li>
						<li class="active">
					<a href="join.jsp">회원가입</a>
					
				</li>
			</ul>
		</div>
		
	</nav>

</body>

</html>