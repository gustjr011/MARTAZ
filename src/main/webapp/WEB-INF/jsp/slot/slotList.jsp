<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" 	uri="http://java.sun.com/jsp/jstl/functions" %>

<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>슬롯 리스트</title>
    </head>
    <body>
        <!-- wrapper -->
        <div id="wrapper">
            <!-- content-->
            <div id="content">
            	<h1> 슬롯 리스트 </h1>
            	<table>
            	<th>
            		<tr>
            			<td>slotNo</td>
						<td>memberSlotNo</td>
						<td>deviceType</td>
						<td>keyword</td>
						<td>searchKey</td>
						<td>slotName</td>
						<td>headless</td>
						<td>currentRank</td>
						<td>jobCount</td>
						<td>failCount</td>
						<td>insDate</td>
						<td>status</td>
            		</tr>
            	</th>
				<c:forEach var="rs" items="${slotList}"  varStatus="status">
	           		<tr onclick="detailPage(${rs.slotNo})">
						<td><c:out value="${rs.slotNo}"/></td>
						<td><c:out value="${rs.memberSlotNo}"/></td>
						<td><c:out value="${rs.deviceType}"/></td>
						<td><c:out value="${rs.keyword}"/></td>
						<td><c:out value="${rs.searchKey}"/></td>
						<td><c:out value="${rs.slotName}"/></td>
						<td><c:out value="${rs.headless}"/></td>
						<td><c:out value="${rs.currentRank}"/></td>
						<td><c:out value="${rs.jobCount}"/></td>
						<td><c:out value="${rs.failCount}"/></td>
						<td><c:out value="${rs.insDate}"/></td>
						<td><c:out value="${rs.status}"/></td>
					</tr>
	             </c:forEach>
	            </table>
				<h2>페이지 이동</h2>
				<a href="/join">회원 가입</a><br>
				<a href="/mberList">회원 리스트</a><br>
				<a href="/web/slotDetail?paramSchKey=">슬롯 신규 등록</a><br>
				<!-- a href="/api/slot-list?paramSchKey=">slot 호출 api</a><br -->
				<a href="/">로그인으로</a><br>
            </div>
            <!-- content-->
        </div> 
        <!-- wrapper -->
    </body>
    <script type="text/javascript">

    	function detailPage(idx){
    		console.log("슬롯:"+idx+" 상세로 이동합니다.");
    		location.href="/web/slotDetail?paramSchKey="+idx+"&reg=modi";
    	}
    </script>
</html>