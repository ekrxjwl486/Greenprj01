<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

</head>
<body>
  반갑습니다.
  ${ vo.user_id }
  ${ vo.user_pw }
  ${ vo.user_name }
  ${ vo.user_cate }
  ${ vo.univ_idx }
  ${ vo.univ_name }
  
  <form>
      <fieldset>
         <legend>사용자 정보</legend>
         <ul>
         <!-- USER_ID, USER_PW, USER_NAME, USER_CATE, UNIV_IDX -->
            <li>
               <label>아이디 : ${ vo.user_id }</label>
               
            </li>
            <li>
               <label>비밀번호</label>
               <input type="password" id="user_pw" required value="${ vo.user_pw }">
            </li>
            <li>
               <label>이름</label>
               <input type="text" id="user_name"  value="${ vo.user_name }">
            </li>
            <li>
               <label>학교</label>
               <input type="text" id="univ_idx" value="${ vo.univ_idx }">
            </li>
            
            
            
            
              <li><label>관심사 (중복체크 가능)</label>
              
              <tr>
                <c:set var = "cate" value = "${ vo.user_cate }"/>
			    <c:if test = "${fn:contains(cate, 'sports')}">
				  <li><label><input type="checkbox" name="user_cate" value="sports" checked >스포츠 / 운동</label></li>
			    </c:if>
			    <c:if test = "${not fn:contains(cate, 'sports')}">
				  <li><label><input type="checkbox" name="user_cate" value="sports" >스포츠 / 운동</label></li>
			    </c:if>
			    <c:if test = "${fn:contains(cate, 'culture')}">
				  <li><label><input type="checkbox" name="user_cate" value="culture" checked >문화 / 공연</label></li>
			    </c:if>
			    <c:if test = "${not fn:contains(cate, 'culture')}">
				  <li><label><input type="checkbox" name="user_cate" value="culture" >문화 / 공연</label></li>
			    </c:if>
			    <c:if test = "${fn:contains(cate, 'game')}">
				  <li><label><input type="checkbox" name="user_cate" value="game" checked >게임 / 오락</label></li>
			    </c:if>
			    <c:if test = "${not fn:contains(cate, 'game')}">
				  <li><label><input type="checkbox" name="user_cate" value="game" >게임 / 오락</label></li>
			    </c:if>
			    <c:if test = "${fn:contains(cate, 'network')}">
				  <li><label><input type="checkbox" name="user_cate" value="network" checked >사교 / 인맥</label></li>
			    </c:if>
			    <c:if test = "${not fn:contains(cate, 'network')}">
				  <li><label><input type="checkbox" name="user_cate" value="network" >사교 / 인맥</label></li>
			    </c:if>
			    <c:if test = "${fn:contains(cate, 'dance')}">
				  <li><label><input type="checkbox" name="user_cate" value="dance" checked >댄스 / 음악</label></li>
			    </c:if>
			    <c:if test = "${not fn:contains(cate, 'dance')}">
				  <li><label><input type="checkbox" name="user_cate" value="dance" >댄스 / 음악</label></li>
			    </c:if>
			    <c:if test = "${fn:contains(cate, 'cook')}">
				  <li><label><input type="checkbox" name="user_cate" value="cook" checked >요리 / 맛집</label></li>
			    </c:if>
			    <c:if test = "${not fn:contains(cate, 'cook')}">
				  <li><label><input type="checkbox" name="user_cate" value="cook" >요리 / 맛집</label></li>
			    </c:if>
			    <c:if test = "${fn:contains(cate, 'travel')}">
				  <li><label><input type="checkbox" name="user_cate" value="travel" checked >여행 / 캠핑</label></li>
			    </c:if>
			    <c:if test = "${not fn:contains(cate, 'travel')}">
				  <li><label><input type="checkbox" name="user_cate" value="travel" >여행 / 캠핑</label></li>
			    </c:if>
			    <c:if test = "${fn:contains(cate, 'pet')}">
				  <li><label><input type="checkbox" name="user_cate" value="pet" checked >반려동물 / 펫</label></li>
			    </c:if>
			    <c:if test = "${not fn:contains(cate, 'pet')}">
				  <li><label><input type="checkbox" name="user_cate" value="pet" >반려동물 / 펫</label></li>
			    </c:if>
              </tr>
            

         </ul>
      </fieldset>
      <div id="buttons">
         <input type="submit" value="수정하기">
         <input type="reset" value="취소">
       </div>
   </form>
  
</body>
</html>