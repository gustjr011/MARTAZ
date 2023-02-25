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
													<th>회원명</th>
													<th>Id</th>
													<th>전화</th>
													<th>관리</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="rs" items="${memberList}"  varStatus="status">
													<tr>
														<td>
															<p onclick="javascript:detailView(${rs.memberNo})">
																<c:out value="${rs.memberName}"/>
															</p>
														</td>
														<td><c:out value="${rs.memberId}"/></td>
														<td><c:out value="${rs.phone}"/></td>
														<td></td>
													</tr>
												</c:forEach>
													<tr>
														<td>
															<input class="form-control" type="text" id="newProductName" name="datesingle" placeholder="상품명" />
														</td>
														<td>
															<select id="newPlatformType" class="form-control">
																<option value="0" selected>선택해 주세요</option>
																<option value="1">카카오</option>
																<option value="2">네이버</option>
																<option value="3">11번가</option>
																<option value="4">쿠팡</option>
																<option value="5">티몬</option>
															</select>
														</td>
														<td>
															<input class="form-control" type="text" id="newKeyword" name="datesingle" placeholder="서치키" />
														</td>
														<td class="text-nowrap">
															<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sizedModalLg" onclick="javascript:newProductSave()">새 상품 저장하기</button>
														</td>
													</tr>
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
				<footer class="footer">
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
				</footer>
			</div>
		</div>
	</div>
    </body>
        
    <script type="text/javascript">
		function keywordlist(no){
			location.href="/web/productKeywordList?productNo="+no;
		}
		
		function detailView(no){
			location.href="/detail?mberNo="+no;
		}
		
	    function newProductSave(){
			var newProductName = document.getElementById("newProductName").value;
			var newPlatformType = document.getElementById("newPlatformType").value;
			var newKeyword = document.getElementById("newKeyword").value;
			
			if(newProductName === ""){
				alert("이름이 없습니다.");
				return;
			}else if(newPlatformType === "0"){
				alert("플랫폼이 선택되지 않았습니다.");
				return;
			}else if(newKeyword === "0"){
				alert("키워드가 입력되지 않았습니다.");
				return;
			}else{
				console.log("입력쿼리 실행");
			}
		}

    </script>
</html>