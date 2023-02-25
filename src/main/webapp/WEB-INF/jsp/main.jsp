<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lnag="ko">
    <head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="Responsive Bootstrap 4 Admin Template">
		<meta name="author" content="Bootlab">
		<title>메인</title>
		<link href="./css/app.css" rel="stylesheet">
		<link href="./css/style.css" rel="stylesheet">
	</head>
    <body>
		<div class="wrapper">
			<jsp:include page="./leftMenu.jsp" flush="false"/>
			<div class="main">
				<div class="d-flex fd_col">
					<jsp:include page="./header.jsp" flush="false"/>
					<main class="content">
						<div class="container-fluid p-0">
							<div class="row mb-4">
								<h1 class="col-md-12 h3"> ${message} </h1>
							</div>
							<div class="row">
								<div class="col-12 col-xl-5">
									<div class="row">
										<h4 class="col-12">입찰 현황</h4>
										<div class="col-6 col-sm-4 col-xl-6 d-flex">
											<div class="card flex-fill">
												<div class="card-body py-4">
													<div class="row">
														<div class="col-12">
															<h3 class="mb-2">입찰 진행중</h3>
															<div class="mb-0"><span class="text-primary">65</span> 개</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-6 col-sm-4 col-xl-6 d-flex">
											<div class="card flex-fill">
												<div class="card-body py-4">
													<div class="row">
														<div class="col-12">
															<h3 class="mb-2">입찰 완료</h3>
															<div class="mb-0"><span class="text-primary">65</span> 개</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
	
									<div class="row">
										<h4 class="col-12">거래 현황</h4>
										<div class="col-6 col-sm-4 col-xl-6 d-flex">
											<div class="card flex-fill">
												<div class="card-body py-4">
													<div class="row">
														<div class="col-12">
															<h3 class="mb-2">거래 진행 업체</h3>
															<div class="mb-0"><span class="text-primary">65</span> 개</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-6 col-sm-4 col-xl-6 d-flex">
											<div class="card flex-fill">
												<div class="card-body py-4">
													<div class="row">
														<div class="col-12">
															<h3 class="mb-2">거래 상품</h3>
															<div class="mb-0"><span class="text-primary">65</span> 개</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-6 col-sm-4 col-xl-6 d-flex">
											<div class="card flex-fill">
												<div class="card-body py-4">
													<div class="row">
														<div class="col-12">
															<h3 class="mb-2">거래 금액</h3>
															<div class="mb-0"><span class="text-primary">6,500</span> 원</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
	
									<div class="row">
										<h4 class="col-12">물류 현황</h4>
										<div class="col-6 col-sm-4 col-xl-6 d-flex">
											<div class="card flex-fill">
												<div class="card-body py-4">
													<div class="row">
														<div class="col-12">
															<h3 class="mb-2">현지 배송중</h3>
															<div class="mb-0"><span class="text-primary">65</span> 개</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-6 col-sm-4 col-xl-6 d-flex">
											<div class="card flex-fill">
												<div class="card-body py-4">
													<div class="row">
														<div class="col-12">
															<h3 class="mb-2">국내배송중</h3>
															<div class="mb-0"><span class="text-primary">65</span> 개</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
	
								<div class="col-12 col-xl-7">
									<div class="row">
										<div class="col-12 d-flex mt-lg-29px">
											<div class="card flex-fill w-100">
												<div class="card-header">
													<div class="card-actions float-right">
														<div class="dropdown show">
															<a href="#" data-toggle="dropdown" data-display="static">
																<i class="align-middle" data-feather="more-horizontal"></i>
															</a>
				
															<div class="dropdown-menu dropdown-menu-right">
																<a class="dropdown-item" href="#">Action</a>
																<a class="dropdown-item" href="#">Another action</a>
																<a class="dropdown-item" href="#">Something else here</a>
															</div>
														</div>
													</div>
													<h5 class="card-title mb-0">Daily feed</h5>
												</div>
												<div class="card-body">
													<div class="media">
														<img src="https://phinf.pstatic.net/contact/20170928_162/1506575358455gQw5c_JPEG/KakaoTalk_20170928_140826712.jpg?type=f130_130" width="36" height="36" class="rounded-circle mr-2" alt="">
														<div class="media-body">
															<small class="float-right text-navy">15m ago</small>
															<strong>Kathy Davis</strong> started following <strong>Marie Salter</strong><br />
															<small class="text-muted">Today 6:41 pm</small><br />
				
														</div>
													</div>
				
													<hr />
													<div class="media">
														<img src="https://phinf.pstatic.net/contact/20170928_162/1506575358455gQw5c_JPEG/KakaoTalk_20170928_140826712.jpg?type=f130_130" width="36" height="36" class="rounded-circle mr-2" alt="">
														<div class="media-body">
															<small class="float-right text-navy">1h ago</small>
															<strong>Andrew Jones</strong> posted something on <strong>1 Salter</strong>'s timeline<br />
															<small class="text-muted">Today 5:41 pm</small>
				
															<div class="border text-sm text-muted p-2 mt-1">
																Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem...
															</div>
														</div>
													</div>
				
													<hr />
													<div class="media">
														<img src="https://phinf.pstatic.net/contact/20170928_162/1506575358455gQw5c_JPEG/KakaoTalk_20170928_140826712.jpg?type=f130_130" width="36" height="36" class="rounded-circle mr-2" alt="">
														<div class="media-body">
															<small class="float-right text-navy">3h ago</small>
															<strong>Marie Salter</strong> posted a new blog<br />
				
															<small class="text-muted">Today 3:35 pm</small>
														</div>
													</div>
				
													<hr />
													<a href="#" class="btn btn-primary btn-block">Load more</a>
												</div>
											</div>
										</div>
	
										<div class="col-12 d-flex">
											<div class="card flex-fill">
												<div class="card-header">
													<div class="card-actions float-right">
														<div class="dropdown show">
															<a href="#" data-toggle="dropdown" data-display="static">
																<i class="align-middle" data-feather="more-horizontal"></i>
															</a>
				
															<div class="dropdown-menu dropdown-menu-right">
																<a class="dropdown-item" href="#">Action</a>
																<a class="dropdown-item" href="#">Another action</a>
																<a class="dropdown-item" href="#">Something else here</a>
															</div>
														</div>
													</div>
													<h5 class="card-title mb-0">Top Selling Products</h5>
												</div>
												<div class="table-responsive tbl_studio_home pb-3">
													<table id="datatables-dashboard-products" class="table table-striped my-0">
														<thead>
															<tr>
																<th>Name</th>
																<th>Tech</th>
																<th>License</th>
																<th>Tickets</th>
																<th>Sales</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>AppStack Theme</td>
																<td><span class="badge badge-success">HTML</span></td>
																<td>Single license</td>
																<td>50</td>
																<td>720</td>
															</tr>
															<tr>
																<td>Spark Theme</td>
																<td><span class="badge badge-danger">Angular</span></td>
																<td>Single license</td>
																<td>20</td>
																<td>540</td>
															</tr>
															<tr>
																<td>Milo Theme</td>
																<td><span class="badge badge-warning">React</span></td>
																<td>Single license</td>
																<td>40</td>
																<td>280</td>
															</tr>
															<tr>
																<td>Ada Theme</td>
																<td><span class="badge badge-info">Vue</span></td>
																<td>Single license</td>
																<td>60</td>
																<td>610</td>
															</tr>
															<tr>
																<td>Abel Theme</td>
																<td><span class="badge badge-danger">Angular</span></td>
																<td>Single license</td>
																<td>80</td>
																<td>150</td>
															</tr>
															<tr>
																<td>Spark Theme</td>
																<td><span class="badge badge-success">HTML</span></td>
																<td>Single license</td>
																<td>20</td>
																<td>480</td>
															</tr>
															<tr>
																<td>Libre Theme</td>
																<td><span class="badge badge-warning">React</span></td>
																<td>Single license</td>
																<td>30</td>
																<td>280</td>
															</tr>
															<tr>
																<td>Von Theme</td>
																<td><span class="badge badge-danger">Angular</span></td>
																<td>Single license</td>
																<td>50</td>
																<td>350</td>
															</tr>
															<tr>
																<td>Material Blog Theme</td>
																<td><span class="badge badge-info">Vue</span></td>
																<td>Single license</td>
																<td>10</td>
																<td>480</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<script>
												document.addEventListener("DOMContentLoaded", function(event) {
													$('#datatables-dashboard-products').DataTable({
														pageLength: 6,
														lengthChange: false,
														bFilter: false,
														autoWidth: false
													});
												});
											</script>
										</div>
									</div>
								</div>
							</div>
						</div>
					</main>
					<!-- <footer class="footer">
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
					</footer> -->
					<footer class="footer" style="background: #212227;>
						<div class=" container-fluid"="">
							<div class="row text-muted">
								<div class="col-12 col-sm-6 text-left">
									<p style="font-size: 15px;margin-bottom: 8px;color: #fff;">해외수입이 나에게 오다</p>
									<p class="mb-0">
										<a href="/" class="text-muted">
											<img src="https://m.o-da.kr/resources/front/img/logo_footer_oda.png">
										</a>
									</p>
								</div>
								<div class="col-12 col-sm-6 text-right">
									<ul class="list-inline">
										<li class="list-inline-item">
											<a class="text-muted" href="/story">오다 시스템 소개</a>
										</li>
										<li class="list-inline-item">
											<a class="text-muted" href="/story">오다 스튜디오 이용방법</a>
										</li>
										<li class="list-inline-item">
											<a class="text-muted" href="/member/notice">공지사항</a>
										</li>
										<li class="list-inline-item">
											<a class="text-muted" href="/member/faq">FAQ</a>
										</li>
									</ul>
								</div>
							</div>
					</footer>
				</div>
			</div>
		</div>
		<!-- 상단 알럿 -->
		<div class="top_alert">
			<div class="alert alert-primary alert-dismissible" role="alert">
				<div class="alert-icon">
					<i class="far fa-fw fa-bell"></i>
				</div>
				<div class="alert-message">
					<strong>Hello there!</strong> A simple primary alert—check it out!
				</div>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		</div>
	<script type="text/javascript" src="./js/app.js"></script>
	</body>
</html>