<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<style type="text/css">

	.sun{color: red;}
	.sat{color: blue;}
	table{
		width: 300px; 
		height: 300px;
		border-collapse: collapse;
		border: 1px solid black;
		text-align: center;
		}
		
	td{
	border : 1px solid black;
	}	

</style>

<% 	int year = Integer.parseInt(request.getParameter("year"));
 	int month = Integer.parseInt(request.getParameter("month"));
 	
 	Calendar cal = Calendar.getInstance();
 	cal.set(year, month-1, 1);
 	int day=1;
 	int lastday = cal.getActualMaximum(Calendar.DAY_OF_MONTH); 
 	int space =cal.get(Calendar.DAY_OF_WEEK)-1;
%>

<body>
	
<table>
	<tr>
	<td colspan="7"> <% out.print(year+" 년  "+month+" 월 ");%> </td>
	 </tr>
	 <tr>
	<td Class= "sun"> 일 </td><td> 월</td><td> 화 </td><td> 수 </td><td> 목 </td><td> 금 </td><td Class= "sat"> 토 </td> 
	 </tr>
	 <tr>
	  <%for(int i=0; i<space; i++) {  %>
		 <td> </td>
		<% } %> 
		
		1 </td><td> 2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td Class= "sat"> 7 </td>
	 </tr>
	 <tr>
	 <td Class= "sun"> 8 </td><td> 9 </td><td> 10 </td><td> 11 </td><td> 12 </td><td> 13 </td><td Class= "sat"> 14 </td>
	 </tr>
	 <tr>
	 <td Class= "sun"> 15 </td><td> 16 </td><td> 17 </td><td> 18 </td><td> 19 </td><td> 20 </td><td Class= "sat"> 21 </td>
	 </tr>
	 <tr>
	 <td Class= "sun">22 </td> <td>23 </td><td> 24 </td><td> 25 </td><td> 26 </td><td> 27 </td><td Class= "sat"> 28 </td>
	 </tr>
	 <tr>
	 <td Class= "sun"> 29 </td><td> 30 </td><td> </td><td> </td><td>  </td><td>  </td><td> </td>
	 </tr>
	 
	 
	
</table>

</body>
</html>