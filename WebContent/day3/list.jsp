<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.bit.day3.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">

	table{
		width: 700px; 
		height: 300px;
		border-collapse: collapse;
		border: 1px solid black;
		text-align: center;
		}
	td{border: 1px solid black;}
</style>
<body>
<!-- 파일의 리스트를 표 형식으로 출력(1~100) -->

<table>

<%	

	ArrayList<Student> list=(ArrayList<Student>)session.getAttribute("list");
	out.print("<tr><td>");
	out.print("학번");
	out.print("</td>");out.print("<td>");
	out.print("이메일");
	out.print("</td>");out.print("<td>");
	out.print("국어");
	out.print("</td>");out.print("<td>");
	out.print("영어");
	out.print("</td>");out.print("<td>");
	out.print("수학");
	out.print("</td>");out.print("<td>");
	out.print("과학");
	out.print("</td>");out.print("<td>");
	out.print("국사");
	out.print("</td>");out.print("<td>");
	out.print("총점");
	out.print("</td>");out.print("<td>");
	out.print("담임코드");
	out.print("</td>");out.print("<td>");
	out.print("성취도");
	out.print("</td>");out.print("<td>");
	out.print("지역코드");
	out.print("</td></tr>");
 	for(int i=0; i<100;i++){
	 	
			
			out.print("<tr><td>");
			out.print(list.get(i).getHakbun());
			out.print("</td>");
			
 			out.print("<td>");
 			out.print(list.get(i).getEmail());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(i).getKor());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(i).getEng());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(i).getMath());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(i).getScience());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(i).getHistory());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(i).getTotal());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(i).getDamim());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(i).getAchieve());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(i).getLocal());
			out.print("</td></tr>");
		
			
	}	 
	
%>

</table>

</body>
</html>