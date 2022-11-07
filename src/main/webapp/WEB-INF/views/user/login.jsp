<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="/loginProcess" method="POST">
     <div>
       아이디<input type="text" name="user_id" value="hamo"/>
     </div>
     <div>
       암호<input type="password" name="user_pw" value="1234" />
     </div>
     <div>
       <input type="submit" value="로그인" />
     </div>
   </form>
</body>
</html>