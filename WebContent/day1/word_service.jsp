
<!--  page는 선언 파트  -->
<%@ page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Proverb</title>
</head>
<body>
	<h1> <!--  여는 태그 -->
	
	<%  // 스트립트릿 -- 퍼센트 표시로 된 구간 , 이 안에서는 자바 언어를 쓸 수 있다
		
	
		// 격언 5개를 만들어서 접속하는 클라이언트에게 하나를 선택해서 보여주는 코드 작성
		String[] proverb = {"살아남는 자가 강한자이다.","내가하면 로맨스, 남이 하면 불륜","하면 된다","못난 아비를 둔 딸에게, 미안하다!","낄때 끼고 빠질때 빠져라"};
	
		Random r = new Random();

		int i = r.nextInt(proverb.length);
		out.print(proverb[i]); // 서버에서 처리해서 결과만 클라이언트에 보낸다.
	
	%>
	</h1> <!-- 닫는 태그 -->
</body>
</html>