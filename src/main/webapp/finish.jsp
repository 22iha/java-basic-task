<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // セッションからプレイヤー名を取得する
    String player = (String) session.getAttribute("player");
    
	if (player.equals("A")){
    	//Aで遷移した場合（Aが最後を取った）、勝者B
    	//（演習問題5）
    	player="A";
    }else{
    	//Bで遷移した場合、勝者A
    	player="B";
    }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎課題</title>
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
  <h1>石取りゲーム</h1>
  <div class="info">
    <h2>
      勝者：プレイヤー<%= player %>！！
    </h2>
    <form action="index.jsp">
      <button class="btn" type="submit">先頭に戻る</button>
    </form>
  </div>
</body>
</html>