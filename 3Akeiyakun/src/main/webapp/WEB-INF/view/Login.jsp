<%-----------------------------------------------------------
  演習番号      ：仕様書演習
  プログラム名：ログイン画面
  作成日         ：2026/07/10
  作成者         ：ShunNoguchi/SYS
 ----------------------------------------------------------
  修正履歴 (修正日 ： 担当者 ： 修正内容)
 ----------------------------------------------------------
-----------------------------------------------------------%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
      href="static/css/login.css">
<title></title>
</head>
<body>
<header> 
	<h1>
	<span class="white-text">けいやくん</span>
	</h1>
	</header>
	<div class="breadcrumb">
    <a href="top.jsp">トップページ</a>
    <span>&gt;</span>
    <span>新規試算</span>
</div>
<h2>ログイン</h2>

<form action="${pageContext.request.contextPath}/login" method="post">

<table>
<tr>
<td id = "tag">メールアドレス<span class="required">必須</span></td>

<td><input type="email"
       name="email"
       required></td>
<tr>
<td id = "tag">パスワード<span class="required">必須</span></td>
<td><input type="password"
       name="password"
       required></td>
</tr>

<tr>
<td><button type="submit" id="login">ログイン</button></td>
<td>
<a href="${pageContext.request.contextPath}/register" >
<button type="button" id="login">リセット</button>
</a>
</td>
</tr>
</form>

${message}

</body>
</html>