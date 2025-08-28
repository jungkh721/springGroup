<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <jsp:include page="/include/bs5.jsp" />
  <title>fileList.jsp</title>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2>서버 파일 리스트</h2>
  <p>(경로 : /images/pdsTest)</p>
  <div><a href="PdsTest.st" class="btn btn-success form-control">돌아가기</a></div>
  <hr/>
  <c:forEach var="file" items="${files}" varStatus="st">
    <c:set var="fNameArr" value="${fn:split(file,'.')}" />
    <c:set var="extName" value="${fn:toLowerCase(fNameArr[fn:length(fNameArr)-1])}"/>
    <div class="mb-3">
	    <c:if test="${extName == 'zip'}">압축파일</c:if>
	    <c:if test="${extName == 'hwp'}">한글파일</c:if>
	    <c:if test="${extName == 'doc'}">Word문서파일</c:if>
	    <c:if test="${extName == 'ppt' || extName == 'pptx'}">파워포인트문서파일</c:if>
	    <c:if test="${extName == 'pdf'}">PDF문서파일</c:if>
	    <c:if test="${extName == 'txt'}">텍스트문서파일</c:if>
	  	<c:if test="${extName == 'jpg' || extName == 'gif' || extName == 'png'}">
	  	  <img src="${ctp}/images/pdsTest/${file}" width="150px">
	  	</c:if>
  	</div>
  </c:forEach>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>