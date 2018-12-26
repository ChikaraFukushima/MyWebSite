<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- オリジナルCSS読み込み -->
<link rel="stylesheet" type="text/css" href="CSS/original/all.css">
<link rel="stylesheet" type="text/css" href="CSS/original/index.css">
<title>Topページ</title>

</head>
<body>
<!--メニュー部分 -->
<!--メニュー部分ここまで -->
		<center>
			<img src="minira3.png">
		</center>
		<!--<h1 class="header center " style="color:#ea8aa4">Miple</h1> -->
			<div class="row center">
				<h5 class="header col s12 light" style="color:#ea8aa4">クリエイターの毎日を応援する場所</h5>
			</div>
			<!--   トップ画像   -->
		<center>
			<img src="index2.png">
		</center>

	<center>
<ul>
<li><a href ="#anker1">今日のおすすめプロジェクト</a></li>
</ul>
<a href ="UserBuyHistory">応援の歴史</a>
<a href ="Logout">ログアウトする</a>

</center>

			<div class="row center">
				<div class="input-field col s8 offset-s2">
					<form action="ItemSearchResult">
						<i>↓探しに行く↓</i> <input type="text" name="search_word">
						<!-- ↑class="material-icons prefix" iの横 -->
					</form>
				</div>
			</div>
			<br> <br>


	<div class="container">
		<div class="row center">
			<h5 class=" col s12 light" id="anker1">PickUpCreators</h5>
		</div>
		<div class="section">
			<!--   おすすめクリエイターを表示   -->

			<div class="row">
				<c:forEach var="item" items="${itemList}">
				<div class="col s12 m3">
					<div class="card">
						<div class="card-image">
							<a href="Item?item_id=${item.id}"><img src="img/${item.fileName}"></a>
						</div>
						<div class="card-content">
							<span class="card-title">${item.name}</span>
							<p>${item.price}円
							</p>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div>
<center>
<p><a href = "TopServlet">戻る</a></p>
</center>
</div>

</body>
</html>