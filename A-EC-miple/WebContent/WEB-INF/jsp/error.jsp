<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/original/all.css">
<link rel="stylesheet" type="text/css" href="CSS/original/index.css">
<title>システムエラー</title>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="section"></div>
			<div class="col s8 offset-s2">
				<div class="card grey lighten-5">
					<div class="card-content">
						<div class="row center">
							<h4 class="red-text">システムエラーが発生しました</h4>
							<h5 class="red-text">${errorMessage}</h5>
						</div>
						<div class="row">
							<div class="col s12">
								<p class="center-align">
									<a href="Index" class="btn btn-large waves-effect waves-light  col s8 offset-s2">TOPページへ</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>