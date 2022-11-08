<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico" />
<link rel="stylesheet" href="/css/common.css" />
<style>
   h2 { margin : 20px;  }
</style>
</head>
<body>
  <div id="main">

	<h2>프로젝트 테스트</h2>
	<li><a href="/mypage?user_id=${ sessionScope.login.user_id }">${ sessionScope.login.user_name }페이지</a></li>
  
  
	
	
	
  </div>	
</body>
</html>