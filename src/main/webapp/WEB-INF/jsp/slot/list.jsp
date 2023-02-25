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
		<title>회원 리스트</title>
		<link href="../css/app.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
	</head>
    <body>
    	<div class="wrapper">
		<jsp:include page="../leftMenu.jsp" flush="false"/>
		<div class="main">
			<div class="d-flex fd_col">
				<jsp:include page="../header.jsp" flush="false"/>
				<main class="content">
					<div class="container-fluid p-0">
						<div class="row mb-3">
							<h1 class="col-md-12 h3">회원 목록</h1>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="card">
									<!--  div class="card-header ">
										<form action="" class="form-inline search_zone">
											<input type="text" class="form-control mb-2 mr-sm-2" id="" placeholder="상품검색">
											<button type="submit" class="btn btn-primary mb-2">검색</button>
										</form>
									</div -->
									<div class="table-responsive">
										<table class="table mb-0">
											<thead>
												<tr>
													<th>상품명</th>
													<th>키워드</th>
													<th>현재랭킹</th>
													<th>작업수행수</th>
													<th>작업실패수</th>
													<th>사용자</th>
													<th>비고</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="rs" items="${slotList}"  varStatus="status">
													<tr>
														<td>
															<p onclick="">
																<c:out value="${rs.productName}"/>
															</p>
														</td>
														<td><c:out value="${rs.keyword}"/></td>
														<td><c:out value="${rs.currentRank}"/></td>
														<td><c:out value="${rs.jobCount}"/>건</td>
														<td><c:out value="${rs.failCount}"/>회</td>
														<td><c:out value="${rs.memberName}"/></td>
														<td><c:out value="${rs.status}"/></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 수정 or 발주 버튼>
					<div class="text-center btn_confirm">
						<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sizedModalLg">새 상품 저장하기</button>
					</div>
					-->
				</main>
				<!--  footer class="footer">
					<div class="container-fluid">
						<div class="row text-muted">
							<div class="col-6 text-left">
								<p class="mb-0">
									&copy; <a href="index.html" class="text-muted">Paper</a>
								</p>
							</div>
							<div class="col-6 text-right">
								<ul class="list-inline">
									<li class="list-inline-item">
										<a class="text-muted" href="#">About us</a>
									</li>
									<li class="list-inline-item">
										<a class="text-muted" href="#">Help</a>
									</li>
									<li class="list-inline-item">
										<a class="text-muted" href="#">Contact</a>
									</li>
									<li class="list-inline-item">
										<a class="text-muted" href="#">Terms & Conditions</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</footer -->
			</div>
		</div>
	</div>
    </body>
        
    <script type="text/javascript">
    </script>
</html>