<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
User loginUser=(User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>workshop studio</title>
</head>
<body>
<h1>workshop studio</h1>
<% if(loginUser !=null){ %>
<p>ログインに成功しました</p>
<p>ようこそ<%=loginUser.getName() %>さん</p>
<a href="/workshopHP/Adomin" >応募者閲覧画面</a>
<% }else{ %>
	<p>ログインに失敗しました</p>
	<a href="/workshopHP/">戻る</a>
<% } %>
</body>
</html>