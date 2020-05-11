<%@page import="notice.vo.Notice"%>
<%@page import="java.util.List"%>
<%@page import="notice.dao.NoticeDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>notice.jsp</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<form action="notice.do" method="get">
<select name="f">
	<option value="title">제목</option>
	<option value="content">내용</option>
</select>
</form>

<table class="twidth">
	<colgroup>
		<col width="10%"/>
		<col width="35%"/>
		<col width="12%"/>
		<col width="33%"/>
		<col width="10%"/>
	</colgroup>
	<caption>List</caption>
	<tbody>
	<tr>
		<th class="left">번호</th>
		<th class="left">제목</th>
		<th class="left">작성자</th>
		<th class="left">작성일</th>
		<th class="left">조회수</th>
	</tr>
	<%-- <%
	List<Notice> list=(List<Notice>)request.getAttribute("list");
	for(Notice n:list){
		pageContext.setAttribute("n", n);
	%> --%>
	<c:forEach items="${list }" var="n">
	<tr>
		<td>${n.seq }</td>
		<td> <a href="noticeDetail.do?c=${n.seq }">${n.title }</a></td>
		<td>${n.writer }</td>
		<td>${n.regdate }</td>
		<td>${n.hit }</td>
	</tr>
	</c:forEach>
	<%-- <%
	}
	%> --%>
	</tbody>
</table>
<a href="noticeReg.do">Write</a>
</body>
</html>
<%
%>