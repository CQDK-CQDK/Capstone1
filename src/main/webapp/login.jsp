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
		  <!--  네비게이션 바 -->
	<nav class="navbar navbar-default">
			<!--  네비게이션 왼쪽에 뜨는 항목 -->
		<div class="navbar-header">
			<a class="navbar-brand" href="#">ClassShare</a>
		</div>
			
			<!--  네비게이션 메뉴 -->
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">홈페이지</a>
			</ul>
				<!--  오른쪽에 뜨는 항목들 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="active">
					<a href="login.jsp">로그인</a>
					
				<li class="active">
					<a href="join.jsp">회원가입</a>
					</li>
		
			
				
			</ul>
					
		</div>
		
	</nav>
	<form method="post" action="loginAction.jsp">
		<div class="container">
			<div class="col-lg-4">
				<div class="jumbotron" style="padding-top: 20px;">
					
					<h3 style="text-align: center;">로그인</h3>
						 <!--  아이디 입력창 -->
						<div class="form-group">
							<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
						</div>
		                  <!--  비밀번호 입력창 -->
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
						</div>
								  <!--  로그인 회원가입 메인화면 -->
						<input type="submit" class="btn btn-primary " value="로그인">
						<a href="join.jsp" class="btn btn-primary ">회원가입</a>
						<a href="index.jsp" class="btn btn-primary">메인화면</a>
							
				</div>
				</div>
			<div class="col-lg-4"></div>
		</div>
	</form>
		
</body>
</html>