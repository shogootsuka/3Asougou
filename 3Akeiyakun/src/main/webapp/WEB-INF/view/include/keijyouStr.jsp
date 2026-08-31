<%-----------------------------------------------------------
  演習番号      ：総合演習
  プログラム名：計上開始画面
  作成日         ：2026/08/27
  作成者         ：KanonYokouchi/SYS
 ----------------------------------------------------------
  修正履歴 (修正日 ： 担当者 ： 修正内容)
 ----------------------------------------------------------
-----------------------------------------------------------%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<%-- <head>タグ内定義情報のinclude --%>
<jsp:include page="./include/headcontent.jsp" flush="true" />
<title>計上開始</title>
</head>
<body class="container">
	<%-- ヘッダーのinclude --%>
	<jsp:include page="./include/header.jsp" flush="true" />
	<main class="container mx-auto main"">
		<div class="header">
			<h1>けいやくん</h1>
			<h2>計上</h2>

			<form action="TopServlet" action="get">
				<button class="topBtn">トップへ戻る</button>
			</form>
		</div>

		<div class="content">
			<div class="login">ログイン中:${loginUser}</div>

			<h3>計上開始</h3>

			<form action="keijyouServlet" method="post">

				<label>印刷連番</label> <input type="text" name="printNo"
					planceholdor="例) B0000000001">

				<button type="submit" name="action" value="confirm" class="orangeBtn">
					計上開始</button>

			</form>

		</div>

		</div>
</body>
</html>