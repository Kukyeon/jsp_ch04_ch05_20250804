<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	request.setCharacterEncoding("utf-8"); // 인코딩 설정
	
	String kor = request.getParameter("kor"); // 국어점수 추출
	String eng = request.getParameter("eng"); // 영어 점수 추출
	String math = request.getParameter("math"); // 수학 점수 추출

	int korint = Integer.parseInt(kor); // 문자열 kor 점수를 정수형 kor 으로 변환
	int engint = Integer.parseInt(eng);
	int mathint = Integer.parseInt(math);
	
	
	double avg = (korint + engint + mathint) / 3.0;

%>

 입력된 국어점수 : <%= kor %> <br>
 입력된 영어점수 : <%= eng %> <br>
 입력된 수학점수 : <%= math %> <br>
 
 총점 : <%= korint + engint + mathint %> 점 <br>
 평균 : <%= avg  %> 점


</body>
</html>