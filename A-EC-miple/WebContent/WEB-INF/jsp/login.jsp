<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="CSS/original/all.css">
<link rel="stylesheet" type="text/css" href="CSS/original/index.css">
<title>ログイン</title>

</head>
<body>
<h1 class="header center " style="color:#ea8aa4">login</h1>
	<div class="container">
		<div class="row">
			<div class="section"></div>
			<div class="col s6 offset-s3">
				<div class="card grey lighten-5">
					<div class="card-content">
						<form action="LoginResult" method="POST">
							<div class="row">
								<c:if test="${loginErrorMessage != null}">
									<p class="red-text center-align">${loginErrorMessage}</p>
									<br>
								</c:if>
								<div class="input-field col s8 offset-s2">
									<input type="text" name="login_id" value="${inputLoginId}" required> <label>ログインID</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s8 offset-s2">
									<input type="password" name="password" required> <label>パスワード</label>
								</div>
							</div>
							<div class="row">
								<div class="col s12">
									<p class="center-align">
										<button class="btn btn-large waves-effect waves-light  col s8 offset-s2" type="submit" name="action">ログイン</button>
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col s8 offset-s2">
									<p class="right-align">
										<a href="Regist">サポーター登録</a>
									</p>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>