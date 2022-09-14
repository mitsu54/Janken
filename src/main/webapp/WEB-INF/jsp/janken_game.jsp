<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>じゃんけんゲーム</title>
		<link rel="stylesheet" type="text/css"
			href ="${pageContext.request.contextPath}/css/janken.css">
	</head>

	<body>
		<main id="color">
			<h1>
				「じゃ～んけ～ん・・・」
			</h1>
		
			<form method="post" action="${pageContext.request.contextPath}/judge">
				<input id="gu" type="radio" name="janken" value= 1 required>
					<label for="gu" id="label1"></label>
				<input id="choki" type="radio" name="janken" value= 2>
					<label for="choki" id="label2"></label>	
				<input id="pa" type="radio" name="janken" value= 3>
					<label for="pa" id="label3"></label>			
				<div>
					<input class="button2" type="submit" value="この手で挑む！">
					  <input type="hidden" name="turn" value= 1 >
						<input type="hidden" name="word" value="「ぽんっ！！！」">
				</div>
			</form>
		</main>
	</body>
</html>