<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.bit.day3.StudentList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.bit.day3.Student"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
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
	String path = application.getRealPath("WEB-INF/file/Abc1115.txt");  // application-- 실질적인 저장 주소에 있는 파일을 불러올 수 있는 메소드
	File file = new File(path);  // java.io.File import 필요
	BufferedReader br = new BufferedReader(new FileReader(file));
	String str="";
	List<Student> list = new ArrayList<Student>();
	while(true){
		str=br.readLine();		
		if(str==null){
			break;
		}
		Student st = new Student();
		st.setHakbun(str.substring(0,6));
		st.setEmail(str.substring(6,10));
		st.setKor(str.substring(10,13));
		st.setEng(str.substring(13,16));
		st.setMath(str.substring(16,19));
		st.setScience(str.substring(19,22));
		st.setHistory(str.substring(22,25));
		st.setTotal(str.substring(25,28));
		st.setDamim(str.substring(28,29));
		st.setAchieve(str.substring(29,30));
		st.setLocal(str.substring(30,31));
		list.add(st);
		
	}
	
	session.setAttribute("list", list);
	response.sendRedirect("list.jsp");
	br.close();
	
%>


</body>
</html>