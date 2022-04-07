<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
 <jsp:useBean id="user" class="user.User" scope="page" />
 <jsp:setProperty name="user" property="userID" />
 <jsp:setProperty name="user" property="userPassword" />
 <jsp:setProperty name="user" property="userName" />
 <jsp:setProperty name="user" property="userDep" />
 <jsp:setProperty name="user" property="userClass" />
 <jsp:setProperty name="user" property="userStuNum" />
<!DOCTYPE html>
<html>
<head>

<title>ClassShare</title>

</head>
<body>
		<%
		if (user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null || user.getUserDep() == null || user.getUserClass() == null || user.getUserStuNum() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('데이터베이스 오류가 발생했습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('로그인 성공!')");
				script.println("location.href = 'home.jsp'");
				script.println("</script>");
			}
		}

		%>	
</body>
</html>