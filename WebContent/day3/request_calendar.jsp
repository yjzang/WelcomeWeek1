<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="calendar.jsp" method="get">

<select name="year">

			<option value="0">연도 선택
			<option value="2010">2010
			<option value="2011">2011
			<option value="2012">2012
			<option value="2013">2013
			<option value="2014">2014
			<option value="2015">2015
			<option value="2016">2016
			<option value="2017">2017
			<option value="2018">2018


</select>	

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

<input type="submit" value="선택">
</form>	
</body>
</html>