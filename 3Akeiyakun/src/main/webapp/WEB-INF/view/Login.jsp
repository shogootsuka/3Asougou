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
<header class="fixed-header"> 
	<div class="header-logo">けいやくん</div>
	 <div class="header-title">一時保存一覧</div>
	</header>
	
	
<h2>ログイン</h2>

<form action="${pageContext.request.contextPath}/login" method="post">

<table>
<tr>
<td id = "tag">ユーザーID<span class="required">必須</span></td>

<td><input type="text"
       name="textl"
       required></td>
<tr>
<td id = "tag">パスワード<span class="required">必須</span></td>
<td><input type="password"
       name="password"
       maxlength = 6
       required></td>
</tr>

<tr class="button-row">
 <td colspan="2">
<button type="submit" id="login">ログイン</button>
<button type="reset" id="reset">リセット</button>
</td>
</tr>
</form>

${message}

</body>
</html>