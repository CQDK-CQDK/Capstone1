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
	
		<!--   회원가입 화면  -->
		<article class = "container">
			<div class = "page-header">
				<div class = "col-md-6 col-md-offset-3">
				<h3>회원가입</h3>
				</div>
			</div>
			
					<!--   회원가입 기입사항   -->

			<form method="post" action="joinAction.jsp">
				<div class="container">
					<div class="col-sm-6 col-md-offset-3">
						<div class="form-group">
							<label for="inputID">ID</label>
								<input type="text" class="form-control" name="userID" placeholder="ID">
						</div>
				        <div class="form-group has-feedback">
				            <label class="control-label" for="inputPassword">비밀번호</label>
				            <input class="form-control" type="password" id="inputPassword" name="userPassword"/>
				            <span id="pwdRegErr" class="help-block">8글자 이상 입력하세요.</span>
				            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
				        </div>
				        <div class="form-group has-feedback">
				            <label class="control-label" for="rePwd">비밀번호 재확인</label>
				            <input class="form-control" type="password" id="rePwd" name="rePwd"/>
				            <span style="color:red" id="rePwdErr" class="help-block">비밀번호와 일치하지 않습니다. 다시 입력해 주세요.</span>
				            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
				        </div>
						<div class="name">
							<label for="inputName">이름</label>
								<input type="text" class="form-control" name="userName" placeholder="이름">
						</div>
						<div class="input-group-text">
							<label class = "input-group-text" for="inputDep">학과</label>
								<select class = "form-control" name="userDep">
									<option value="NULL">------  학과  ------</option>
									<option value="건축학부">건축학부</option>
									<option value="교통공학과">교통공학과</option>
									<option value="기계공학과">기계공학과</option>
									<option value="디자인학부">디자인학부</option>
									<option value="디지털콘텐츠디자인학과">디지털콘텐츠디자인학과</option>
									<option value="물리학과">물리학과</option>
									<option value="바둑학과">바둑학과</option>
									<option value="산업경영공학과">산업경영공학과</option>
									<option value="생명과학정보학과">생명과학정보학과</option>
									<option value="수학과">수학과</option>
									<option value="스포츠학부">스포츠학부</option>
									<option value="식품영양학과">식품영양학과</option>
									<option value="신소재공학과">신소재공학과</option>
									<option value="예술학부">예술학부</option>
									<option value="융합소프트웨어학과">융합소프트웨어학과</option>
									<option value="전공자유학부">전공자유학부</option>
									<option value="전기공학과">전기공학과</option>
									<option value="전자공학과">전자공학과</option>
									<option value="정보통신공학과">정보통신공학과</option>
									<option value="컴퓨터공학과">컴퓨터공학과</option>
									<option value="토목환경공학과">토목환경공학과</option>
									<option value="화학공학과">화학공학과</option>
									<option value="화학과">화학과</option>
									<option value="환경에너지공학과">환경에너지공학과</option>								
								</select>
						</div>
						<div class="input-group-text">
							<label class = "input-group-text" for="inputClass">학년</label>
								<select class = "form-control" name="userClass">
									<option value="NULL">------  학년  ------</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
						</div>
						<div class="form-group">
							<label for="inputStuNum">학번</label>
								<input type="text" maxlength="8" class="form-control" name="userStuNum" placeholder="학번" >
						</div>
						
						<div class="form-group text-center">
							<button type="submit" id="join-submit" class="btn btn-primary form-control">
								회원가입<i class="fa fa-check spaceLeft"></i>
							</button>
							<button type="submit" class="btn btn-warning">
								가입취소<i class="fa fa-times spaceLeft"></i>
							</button>
						</div>
					</div>
				</div>
			</form>

		</article>
		
				<!--  비밀번호 검증 스크립트 -->
		<script>
	    $("#inputPassword").keyup(function(){
	        var pwd=$(this).val();
	        // 비밀번호 검증할 정규 표현식
	        var reg=/^.{8,}$/;
	        if(reg.test(pwd)){//정규표현식을 통과 한다면
	                    $("#pwdRegErr").hide();
	                    successState("#pwd");
	        }else{//정규표현식을 통과하지 못하면
	                    $("#pwdRegErr").show();
	                    errorState("#pwd");
	        }
	    });
	    $("#rePwd").keyup(function(){
	        var rePwd=$(this).val();
	        var pwd=$("#inputPassword").val();
	        // 비밀번호 같은지 확인
	        if(rePwd==pwd) {//비밀번호 같다면
	            $("#rePwdErr").hide();
	            successState("#rePwd");
	        } else {//비밀번호 다르다면
	            $("#rePwdErr").show();
	            errorState("#rePwd");
	        }
	    });
		</script>
		
</body>
</html>