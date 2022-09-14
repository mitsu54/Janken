<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int player = (Integer)request.getAttribute("player");
	int com = (Integer)request.getAttribute("com");
	String result = (String)request.getAttribute("result");
	String word = (String)request.getAttribute("word");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>じゃんけんゲーム</title>
		<link rel="stylesheet" type="text/css"
				href ="${pageContext.request.contextPath}/css/janken_result.css">
	</head>

	<body>
		<main id="color">
			<h1>
				<%= word %>
			</h1>
			<table id="table">
				<tr>
<%
	if(com == 1) {
%>
					<th>
						<img id="label1" src="${pageContext.request.contextPath}/グー.jpg">
					</th>
<%
	}
	else if(com == 2) {
%>
					<th>
						<img id="label2" src="${pageContext.request.contextPath}/チョキ.jpg">
					</th>
<%
	}
	else if(com == 3) {
%>
					<th>
						<img id="label3" src="${pageContext.request.contextPath}/パー.jpg">
					</th>
<%
	}
%>		
					<th id="center">
						VS
					</th>
		
<%
	if(player == 1) {
%>
					<th>
						<img id="label1" src="${pageContext.request.contextPath}/グー.jpg">
					</th>
<%
	}
	else if(player == 2) {
%>
					<th>
						<img id="label2" src="${pageContext.request.contextPath}/チョキ.jpg">
					</th>
<%
	}
	else if(player == 3) {
%>
					<th>
						<img id="label3" src="${pageContext.request.contextPath}/パー.jpg">
					</th>
<%
	}
%>
				</tr>
				<tr>
					<td id="left">じゃんけんおじさん</td>
					<td></td>
					<td id="right">あなた</td>
				</tr>
			</table>
<%
	if(result.equals("even")){
%>
			<div>
				<form method="post" action="${pageContext.request.contextPath}/jankenStage">
					<input class="button2" type="submit" value="次の手を出す！">
						<input type="hidden" name="stage" value= 2> 
				</form>
			</div>
<%
	}
%>
<%
	if(result.equals("win")){
%>
			<h1>あなたの勝利～～～☆</h1>
			<p>
					<img id="image_file" src="${pageContext.request.contextPath}/おじさん.png"
					alt="対戦相手のおじさん">
			</p>	
			<h4>
				見事な勝ちっぷり！素晴らしい！！<br>
				あなたほどの強者には初めて出会いましたぞい。<br>
				またいつか、手合わせ願いたいですぞ。
			</h4>
			<form method="post" action="${pageContext.request.contextPath}/top">
				<input class="button2" type="submit" value="最初のページに戻る">
			</form>
<%
	}
%>
<%
	if(result.equals("lose")){
%>
			<h1>あなたの負け～～～</h1>
			<p>
					<img id="image_file" src="${pageContext.request.contextPath}/おじさん.png"
					alt="対戦相手のおじさん">
			</p>	
			<h4>
				ほっほっほ。<br>
				そなたもなかなかの強さじゃったが、私のほうが一枚上手でしたな。<br>
				また挑んでくるがよい♪
			</h4>
			<form method="post" action="${pageContext.request.contextPath}/top">
				<input class="button2" type="submit" value="最初のページに戻る">
			</form>
<%
	}
%>
		</main>
	</body>
</html>