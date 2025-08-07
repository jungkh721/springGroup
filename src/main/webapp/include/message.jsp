<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String message = request.getParameter("message")==null ? "":request.getParameter("message");
	String mid = request.getParameter("mid")==null ? "":request.getParameter("mid");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>.jsp</title>
  <script>
  	'use strict';
  	
  	if('${message}' !='') alert('${message}');
  	<%--location.herf ='<%=request.getContextPath()%>/study/0806/t10_member.jsp?mid=<%=mid%>';--%>
  	location.herf ='${url}';
  </script>
</head>
<body>

</body>
</html>