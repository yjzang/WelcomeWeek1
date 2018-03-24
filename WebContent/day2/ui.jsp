<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ui_data.jsp" method= "get">
		Q1. 가장 자신있는 언어는? <br>
		<input type= "radio" name= "r1" value="Java" > Java
		<input type = "radio" name = "r1" value="C#" > C#
		<input type = "radio" name = "r1" value="C++" > C++
		<input type = "radio" name = "r1" value="Python" > Python <br>
		<input type = "checkbox" name = "hobby"  value="Coding"> Coding  
		<input type = "checkbox" name = "hobby" value="Modeling"> Modeling
		<input type = "checkbox" name = "hobby" value="Testing"> Testing
		<input type = "checkbox" name = "hobby" value="Maintance" > Maintance <br>
		<select name="month">
			<option value="0">월 선택
			<option value="1">1
			<option value="2">2
			<option value="3">3
			<option value="4">4
			<option value="5">5
			<option value="6">6
			<option value="7">7
			<option value="8">8
			<option value="9">9
			<option value="10">10
			<option value="11">11
			<option value="12">12
			
		</select>
		<textarea rows="5" cols="80" name="comment">Hello!</textarea>
		<input type = "submit" value= "전송" > 
		
</form>		
		 

</body>
</html>