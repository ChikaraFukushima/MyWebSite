<%@	page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/original/all.css">
<link rel="stylesheet" type="text/css" href="CSS/original/index.css">
<title>購入履歴詳細</title>

</head>
<body>
<h1 class="header center " style="color:#ea8aa4">history</h1>
	<br>
	<br>
	<div class="container">
		<div class="row center">
			<h4 class=" col s12 light">詳細</h4>
		</div>
		<!--  購入 -->
		<div class="row">
			<div class="col s10 offset-s1">
				<div class="card grey lighten-5">
					<div class="card-content">
						<table>
							<thead>
								<tr>
									<th class="center" style="width: 20%;">購入日時</th>
									<th class="center">コース</th>
									<th class="center" style="width: 20%">合計金額</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="center">${bd.formatDate}</td>
									<td class="center">${bd.deliveryMethodName}</td>
									<td class="center">${bd.totalPrice+bd.deliveryMethodPrice}円</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- 詳細 -->
		<div class="row">
			<div class="col s10 offset-s1">
				<div class="card grey lighten-5">
					<div class="card-content">
						<table class="bordered">
							<thead>
								<tr>
									<th class="center">プロジェクト名</th>
									<th class="center" style="width: 20%">単価</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var = "i" items = "${buyIDBList}">
								<tr>
									<td class="center">${i.name}</td>
									<td class="center">${i.price}円</td>
								</tr>
								</c:forEach>
								<tr>
									<td class="center">${bd.deliveryMethodName}</td>
									<td class="center">${bd.deliveryMethodPrice}円</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>