<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <jsp:include page="/include/bs5.jsp" />
  <title>.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>아이디로 회원 정보 검색 결과</h2>
	<div>
		아이디 : ${vo.idx}<br/>
		비밀번호 : ${vo.pwd}<br/>
		별명 : ${vo.nickName}<br/>
		성명 : ${vo.name}<br/>
		나이 : ${vo.age}<br/>
		성별 : ${vo.gender}<br/>
		주소 : ${vo.address}<br/>
	
	</div>
	<p>
		<a herf="${ctp}/study2/ajax/AjaxMenu" class="btn btn-info">돌아가기</a>
	</p>
  
</div>
<p><br/></p>
</body>
</html>