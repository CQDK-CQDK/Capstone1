<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException"%>

<%@ page import = "subject.SubjectDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/index.js"></script>

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
	<div id="gridBox">
	       <!--  검색창 -->
			<input type="text" id="filter" size=15 placeholder="검색...">
			<button type="button" id="btnEnter">검색</button>
			<select id="Dep">
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
			<button type="button" id="btncart">과목담기</button>
		
			<div class="xhdr" style="width: 100%; height: 35px; overflow: hidden; position: relative;">
			<table class="hdr" style="width: 625px; table-layout: fixed; margin-right: 20px; padding-right: 20px;">
			
			<tbody>
			<tr style="height: auto;">
			<th style="height: 0px; width: 55px;"></th>
			<th style="height: 0px; width: 150px;"></th>
			<th style="height: 0px; width: 40px;"></th>
			<th style="height: 0px; width: 60px;"></th>
			<th style="height: 0px; width: 60px;"></th>
			<th style="height: 0px; width: 40px;"></th>
			<th style="height: 0px; width: 50px;"></th>
			<th style="height: 0px; width: 40px;"></th>
			</tr>
			<tr>
				<td><div class="hdrcell">코드</div></td>
				<td><div class="hdrcell">과목번호</div></td>
				<td><div class="hdrcell">학년</div></td>
				<td><div class="hdrcell">개설학과</div></td>
				<td><div class="hdrcell">교과목명</div></td>
				<td><div class="hdrcell">학점</div></td>
				<td><div class="hdrcell">시간</div></td>
				<td><div class="hdrcell">담당교수</div></td>
				<td><div class="hdrcell">정원</div></td>
		
			</tr>
			

		
			<div id="grid1"></div>
			
			<%
				SubjectDAO subjecDAO = new SubjectDAO();
				
			
			%>

			
			</tbody>
			</table>
			</div>

			<button type="button" id="btnUncart">과목빼기</button>
			<button type="button" id="btnUncartAll">초기화</button>
			<div id="totalPoint">신청학점 : 0</div>

			<div id="grid2"></div>
		</div>
</body>
</html>