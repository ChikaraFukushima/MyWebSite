<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/original/all.css">
<link rel="stylesheet" type="text/css" href="CSS/original/index.css">
<title>プロジェクト詳細</title>

</head>
<body>
<h1 class="header center " style="color:#ea8aa4">project</h1>
	<div class="section no-pad-bot" id="index-banner">
		<div class="container">
			<br> <br>
			<div class="row center">
				<div class="col s4">
					<c:if test="${searchWord != null}">
						<a href="ItemSearchResult?search_word=${searchWord}&page_num=${pageNum}" class="btn waves-effect waves-light">検索結果へ </a>
					</c:if>
				</div>
				<div class="col s4">

				</div>
				<div class="col s4">
					<form action="ItemAdd" method="POST">
						<input type="hidden" name="item_id" value="${item.id}">
						<button class="btn waves-effect waves-light" type="submit" name="action">
							応援プランに追加する <i class="material-icons right">add_shopping_cart</i>
						</button>
					</form>
				</div>
			</div>
			<br> <br>
			<div class="row">
				<div class="col s6">
					<div class="card">
						<div class="card-image">
							<img src="img/${item.fileName}">
						</div>
					</div>
				</div>
				<div class="col s6">
					<h4>${item.name}</h4>
					<h5>${item.price}円</h5>
                     <p>${item.detail}だよ</p>
				</div>
			</div>
		</div>

	</div>
</body>
</html>