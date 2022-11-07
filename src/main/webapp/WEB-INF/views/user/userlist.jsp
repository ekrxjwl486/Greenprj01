<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <a href="/">홈으로</a>
   <h2>사용자 목록</h2>
   <c:forEach var="user" items="${ userList }">
   <ul>
      <li>${ user.user_id   }</li>
      <li>${ user.user_name }</li>
      <li>${ user.user_cate   }</li>
   </ul>
   </c:forEach>
</body>
</html>