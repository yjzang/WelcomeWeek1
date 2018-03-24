<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<style type ="text/css">

	d{
	text-align: right;
	}




</style> 
	
	
<body>
<%! 
	int[] votes = null ; 
	public void jspInit(){
		votes = new int[5];
		System.out.println("jsp instance create");
		
	}
	
	public void jspDestroy(){
		System.out.println("jsp instance destroy");
		System.out.println("resource free");
		votes = null;
		
	}
	

	//life cycle 을 갖고 있다. jsp 갖고 잇다 서블릿도 갖고 잇다 왜 우리가 서블릿 인스턴스를 만들지 않고 어플리케이션 서버에서 만들기 때문에 관리하는 무언가를 갖고 있어야함. 그 기준이 라이프 사이클
	// 

%>
<%
		String pol= request.getParameter("pol");
		
		if(pol.equals("0")){
			votes[0]++;
		}
		else if(pol.equals("1")){
			votes[1]++;
		}
		
		else if(pol.equals("2")){
			votes[2]++;
		}
		
		else if(pol.equals("3")){
			votes[3]++;
		}
		
		else if(pol.equals("4")){
			votes[4]++;
		}
		
		int sum = votes[0]+votes[1]+votes[2]+votes[3]+votes[4];
		
		
%>

<table> 
	
	<tr>
	<td>Q1.</td> <td>아이돌 그룹 득표 수</td><td> 득표율</td>
	</tr>
	<tr>
	<td>1.</td> <td>레드 벨벳</td> <td><%=votes[0] %>  </td> <td Class="d"> <%= String.format("%.2f",votes[0]*100/(float)sum)%>% </td>
	</tr>
	<tr>
	<td>2.</td> <td>트와이스</td> <td> <%=votes[1] %> </td> <td Class="d"><%= String.format("%.2f",votes[1]*100/(float)sum)%>% </td>
	</tr>
	<tr>
	<td>3.</td> <td>빅뱅</td> <td> <%=votes[2] %> </td> <td Class="d"><%= String.format("%.2f",votes[2]*100/(float)sum)%>% </td>
	</tr>
	<tr>
	<td>4.</td> <td>워너원</td> <td> <%=votes[3] %> </td> <td Class="d"><%= String.format("%.2f",votes[3]*100/(float)sum)%>% </td>
	</tr>
	<tr>
	<td>5.</td> <td>BTS</td> <td> <%=votes[4] %> </td> <td Class="d"> <%= String.format("%.2f",votes[4]*100/(float)sum)%>% </td>
	</tr>

 </table>

<a href = "../day3/logout.jsp">로그아웃</a>


</body>
</html>