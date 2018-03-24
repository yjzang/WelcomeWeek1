<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String value = request.getParameter("select"); //셀렉트..!! 키값(주소값))
	//System.out.println(value);
	//response.sendRedirect("back.jsp");
	String url = "error.jsp";
	
	if(value.equals("0")){	
			
			String id = (String)session.getAttribute("member"); // Object에 상속되어있는 session클래스의 getAttribute 메소드는 값이 넘어오면 Oject 값으로 넘어오므로 String 캐스팅이 필요하다. 
			if(id!=null){
				
				url="../day2/poll.jsp";       //start.jsp가 있는 폴더(day3)를 기준으로 잡는다.
											// 따라서 다른 폴더에 있는 jsp를 끌어다 쓸때는 디렉토리 재설정이 필요하다.
											// ../ 상위폴더 ./ 현재폴더
			} else {
					url="./login.jsp";
			}
			
	} else if(value.equals("1")){	
		url="./request_calendar.jsp";
		
	} else if(value.equals("2")){	
		url="./login.jsp"; 
	} else if(value.equals("3")){	
		url="./regist_member.jsp"; 
	}
	
	RequestDispatcher rd = 
				request.getRequestDispatcher(url);
	rd.forward(request,response);
	
%>
</body>
</html>