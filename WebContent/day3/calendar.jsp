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
	 	
	  <%
	 	 for(int i=0; i<space; i++) { 
	  %>
			 <td> </td>
	  <% 
	  } 
		for(int i=0; i<lastday; i++) { 
	 		if((space+day)%7==0){  %>
			 	<td Class="sat"> <%=day%> </td>
			 	</tr> <tr>
		<%
			} else if((space+day)%7==1){  %>
		 
		 	<td Class="sun"> <%=day%> </td>
		<%  	
			} else { 
		%>	
		 	<td > <%=day%> </td>
		<%  }
				 day= day+1;  
		 	 } 
		 	for(int i=0; i<7-(space+(lastday%7))%7; i++){ 
		 	
		 		if((space+lastday%7)==0){
		 	 	break;}
		 %>		 		
		 	<td></td>	
		 <% 
		 	 }
		 %> 
	 
		</tr>
</table>

</body>
</html>