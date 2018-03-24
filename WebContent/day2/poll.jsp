<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table><tr>
	<td>Q1.</td> <td>좋아하는 그룹에 투표하세요</td>
	</tr>
</table>
	
<!--  아이돌 그룹 투표  1.레드벨벳 2.트와이스 3.빅뱅 4. 워너원 5. BTS -->
<form action="../day2/poll_data.jsp" method="get">
	
	<input type="radio" name="pol" value="0"> 1.레드벨벳  <br>
	<input type="radio" name="pol" value="1"> 2.트와이스 <br>
	<input type="radio" name="pol" value="2"> 3.빅뱅  <br>
	<input type="radio" name="pol" value="3"> 4.워너원  <br>
	<input type="radio" name="pol" value="4"> 5.BTS  <br>


	<input type = "submit" value= "투표" > 


</form>
	
</body>
</html>