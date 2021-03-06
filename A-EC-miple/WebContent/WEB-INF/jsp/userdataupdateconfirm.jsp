<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/original/all.css">
<link rel="stylesheet" type="text/css" href="CSS/original/index.css">
<title>ユーザー情報/更新確認</title>

</head>
<body>
<h1 class="header center " style="color:#ea8aa4"></h1>
	<br>
	<br>
	<div class="container">
		<div class="row center">
			<h5 class=" col s12 light">入力内容確認</h5>
		</div>
		<div class="row">
			<div class="col s12">
				<div class="card grey lighten-5">
					<div class="card-content">
						<form action="UserDataUpdateResult" method="POST">
							<div class="row">
								<div class="input-field col s6">
									<input type="text" name="user_name_update" value="${udb.name}" readonly> <label>名前</label>
								</div>
								<div class="input-field col s6">
									<input type="text" name="login_id_update" value="${udb.loginId}" readonly> <label>ログインID</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input type="text" name="user_address_update" value="${udb.address}" readonly> <label>住所</label>
								</div>
							</div>
							<div class="row">
								<div class="col s12">
									<p class="center-align">上記内容で更新してよろしいですか?</p>
								</div>
							</div>
							<div class="row">
								<div class="col s12">
									<div class="col s6 center-align">
										<button class="btn  waves-effect waves-light  col s6 offset-s3" type="submit" name="confirmButton" value="cancel">戻る</button>
									</div>

									<div class="col s6 center-align">
										<button class="btn  waves-effect waves-light  col s6 offset-s3" type="submit" name="confirmButton" value="update">更新</button>
									</div>
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