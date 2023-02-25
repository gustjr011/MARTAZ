<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" 	uri="http://java.sun.com/jsp/jstl/functions" %>

<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
    </head>
    <body>
        <!-- wrapper -->
        <div id="wrapper">
            <!-- content-->
            <div id="content">
            	<h1> 멤버리스트 </h1>
            	<table>
            	<th>
            		<tr>
            			<td>idx</td>
            			<td>id</td>
            			<td>name</td>
            			<td>phone</td>
            			<td>mail</td>
            			<td>insertDate</td>
            		</tr>
            	</th>
				<c:forEach var="rs" items="${memberList}"  varStatus="status">
	           		<tr>
						<td><c:out value="${rs.idx}"/></td>
						<td><c:out value="${rs.id}"/></td>
						<td><c:out value="${rs.name}"/></td>
						<td><c:out value="${rs.phone}"/></td>
						<td><c:out value="${rs.mail}"/></td>
						<td><c:out value="${rs.insertDate}"/></td>
					</tr>
	             </c:forEach>
	            </table>
				<h2>페이지 이동</h2>
				<a href="/join">회원 가입</a><br>
				<a href="/web/slotList">slot List</a><br>
				<!-- a href="/api/slot-list?paramSchKey=">slot 호출 api</a><br -->
				<a href="/">로그인으로</a><br>
            </div>
            <!-- content-->
        </div> 
        <!-- wrapper -->
    </body>
</html>