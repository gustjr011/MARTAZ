<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" 	uri="http://java.sun.com/jsp/jstl/functions" %>
<html lnag="ko">
    <head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="Responsive Bootstrap 4 Admin Template">
		<meta name="author" content="Bootlab">
	
		<link href="./css/app.css" rel="stylesheet">
		<link href="./css/style.css" rel="stylesheet">
	</head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <body>
		<!-- 사이드바 -->
		<nav class="sidebar sidebar-sticky">
			<div class="sidebar-content  js-simplebar">
				<a class="sidebar-brand" href="/main">
					<span class="align-middle">martaz</span>
				</a>
				<!-- 사이드 메뉴 -->
				<ul class="sidebar-nav">
					<li class="sidebar-item">
						<!-- a href="#dashboards" data-toggle="collapse" class="font-weight-bold sidebar-link">
							<i class="align-middle mr-2" data-feather="activity"></i> <span class="align-middle">회원관리</span>
							<span class="sidebar-badge badge badge-primary">14</span>
						</a -->
						<!-- show 클래스 있을시 하위 메뉴 펼침-->
						<ul id="dashboards" class="sidebar-dropdown list-unstyled collapse show">
							<c:if test="${sessionScope.auth eq 'admin'}">
								<li class="sidebar-item">
									<a class="sidebar-link" href="/mberList">회원 리스트(admin)</a>
								</li>
								<li class="sidebar-item">
									<a class="sidebar-link" href="/join">회원 추가(admin)</a>
								</li>
							</c:if>
							<li class="sidebar-item">
								<a class="sidebar-link" href="/main">내정보 관리</a>
							</li>
						</ul>
					</li>
					<li class="sidebar-item active">
						<a href="#history" data-toggle="collapse" class="font-weight-bold sidebar-link">
							<i class="align-middle" data-feather="sidebar"></i> <span class="align-middle">상품관리</span>
						</a>
						<ul id="history" class="sidebar-dropdown list-unstyled collapse show">
							<!-- li class="sidebar-item"><a class="sidebar-link" href="/web/slotDetail?paramSchKey=">슬롯 등록</a></li-->
							<c:if test="${sessionScope.auth eq 'admin'}">
								<li class="sidebar-item"><a class="sidebar-link" href="/web/slotList">슬롯 운영 정보(admin)</a></li>
								<li class="sidebar-item">
									<a class="sidebar-link" href="/web/productListAdmin">상품 관리(admin)</a>
								</li>
							</c:if>
							<li class="sidebar-item">
								<a class="sidebar-link" href="/web/productList?mberNo=1">내 상품 관리</a>
							</li>
						</ul>
					</li>
				</ul>
				<!--  a href="/api/slot-list?paramSchKey=">slot 호출 api</a><br -->
				<!-- 사이드 메뉴 끝 -->
			</div>
		</nav>
		<!-- 사이드바 끝 -->
	</body>
	<script type="text/javascript" src="./js/app.js"></script>
</html>