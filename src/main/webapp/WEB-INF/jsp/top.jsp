<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>じゃんけんゲーム</title>
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath}/css/janken.css">
	</head>
	
	<body>
		<main id="color">
			<h1>じゃんけんゲーム！！！</h1>
			<div>	
				<img id="image_file" src="${pageContext.request.contextPath}/おじさん.png"
					alt="対戦相手のおじさん">
			</div>
			<h3>じゃんけんおじさん</h3>
				<h4>
					私はじゃんけんが大好きなじゃんけんおじさん！！<br>
					じゃんけんにおいては右に出るものは居らず、<br>
					私に勝てる者など存在しないのであ～る！！！<br>
					<br>
					ん？そなたは私と勝負がしたいのか？<br>
					よろしい！さすればその挑戦を引き受けようぞ！<br>
					か～かっかっか！！！<br>
					<br>
					では！早速参ろうぞ！！！<br>
					心の準備が整ったら、下のボタンを押してじゃんけんを始めるぞい！！！<br>
				</h4>
			<form method="post" action="${pageContext.request.contextPath}/jankenStage">
				<input class="button2" type="submit" value="じゃんけんを始める！！">
					<input type="hidden" name="stage" value= 1> 
			</form>
		</main>
	</body>
</html>