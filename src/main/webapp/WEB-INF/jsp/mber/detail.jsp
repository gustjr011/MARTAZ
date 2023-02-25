<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lnag="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Bootstrap 4 Admin Template">
	<meta name="author" content="Bootlab">

	<title>Oda studio</title>

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
							<h1 class="col-md-12 h3">${memberInfo.memberName} 회원 상세</h1>
						</div>
						<!-- 카테고리 -->
						<div class="row category_select">
							<div class="col-12">
								<div class="form-group row">
									<label class="col-form-label col-sm-2">카테고리</label>
									<div class="col-sm-2">
										<select multiple="" class="form-control">
											<option>Open this select menu</option>
											<option>One</option>
											<option>Two</option>
											<option>Three</option>
										</select>
									</div>
									<div class="col-sm-2">
										<select multiple="" class="form-control">
											<option>Open this select menu</option>
											<option>One</option>
											<option>Two</option>
											<option>Three</option>
										</select>
									</div>
									<div class="col-sm-2">
										<select multiple="" class="form-control">
											<option>Open this select menu</option>
											<option>One</option>
											<option>Two</option>
											<option>Three</option>
										</select>
									</div>
									<div class="col-sm-2">
										<select multiple="" class="form-control">
											<option>Open this select menu</option>
											<option>One</option>
											<option>Two</option>
											<option>Three</option>
										</select>
									</div>
									<div class="col-sm-2">
										<select multiple="" class="form-control">
											<option>Open this select menu</option>
											<option>One</option>
											<option>Two</option>
											<option>Three</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 상품명 -->
						<div class="row">
							<div class="col-12">
								<div class="form-group row">
									<label class="col-form-label col-sm-2">상품명</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="상품명을 입력하세요">
									</div>
								</div>
							</div>
						</div>
						<!-- 상품 url -->
						<div class="row">
							<div class="col-12">
								<div class="form-group row">
									<label class="col-form-label col-sm-2">상품 url</label>
									<!-- 인풋요소 아닌 텍스트만 들어갈 경우 세로 정렬 맞춤을 위해 col-form-label 클래스 필요-->
									<div class="col-form-label col-sm-10">
										http://www.naver.com
									</div>
								</div>
							</div>
						</div>

						<!-- 옵션 -->
						<div class="row">
							<div class="col-12">
								<div class="form-group row">
									<label class="col-form-label col-sm-2">옵션 타입</label>
									<!-- 인풋요소 아닌 텍스트만 들어갈 경우 세로 정렬 맞춤을 위해 col-form-label 클래스 필요-->
									<div class="col-form-label col-sm-10">
										<div>
											<label class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inline-radios-example" value="option1">
												<span class="form-check-label">
												1
												</span>
											</label>
											<label class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inline-radios-example" value="option2">
												<span class="form-check-label">
												2
												</span>
											</label>
											<label class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inline-radios-example" value="option3" disabled="">
												<span class="form-check-label">
												3
												</span>
											</label>
										</div>
										<div class="card mb-2">
											<div class="table-responsive">
												<table class="table mb-0 text-center table-striped table-sm">
													<thead>
														<tr>
															<th scope="col">옵션명</th>
															<th scope="col">옵션값</th>
															<th scope="col" colspan="2">업체별 단가</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<input type="text" class="form-control form-control-sm" placeholder="예)색상">
															</td>
															<td>
																<input type="email" class="form-control form-control-sm" placeholder="예)빨간색, 노란색, 파란색, 검은색">
															</td>
															<td class="text-right"><button class="btn btn-secondary btn-sm" data-toggle="modal" data-target="#sizedModalLg">문의하기</button></td>
															<td class="text-left"><button class="btn btn-secondary btn-sm" data-toggle="modal" data-target="#sizedModalLg"><i class="align-middle fas fa-fw fa-minus"></i></button></td>
														</tr>
														<tr>
															<td>
																<input type="text" class="form-control form-control-sm" placeholder="예)색상">
															</td>
															<td>
																<input type="email" class="form-control form-control-sm" placeholder="예)빨간색, 노란색, 파란색, 검은색">
															</td>
															<td class="text-right"><button class="btn btn-secondary btn-sm">문의하기</button></td>
															<td class="text-left"><button class="btn btn-secondary btn-sm"><i class="align-middle fas fa-fw fa-minus"></i></button></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="text-center">
											<button class="btn btn-pill btn-secondary"><i class="align-middle mr-1" data-feather="plus"></i> <span class="align-middle">추가</span></button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 상품 이미지 -->
						<div class="row">
							<div class="col-12">
								<div class="form-group row">
									<label class="col-form-label col-sm-2">상품 이미지</label>
									<!-- 이미지 선택 버튼 -->
									<div class="col-sm-10">
										<div class="custom_file">
											<input type="file">
											<span><button class="btn btn-secondary btn-md">
												<i class="align-middle mr-1" data-feather="image"></i> <span class="align-middle">이미지 선택</span>
											</button></span>
										</div>
									</div>

									<!-- 이미지 업로드 후
									<div class="col-sm-10">
										<div class="d-flex">
											<div class="img_frame">
												<img src="https://shared-comic.pstatic.net/thumb/webtoon/741150/thumbnail/thumbnail_IMAG04_864bc281-2f04-400e-b516-708e5a1a3b48.jpg" alt="">
											</div>
											<div class="btn">
												<button class="btn btn-outline-primary btn-sm"><i class="align-middle" data-feather="x"></i></button>
											</div>
										</div>
									</div> -->
								</div>
							</div>
						</div>

						<!-- 수정 or 발주 버튼-->
						<div class="text-center btn_confirm">
							<button class="btn btn-primary btn-lg">발주하기</button>
						</div>
					</main>
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

		<!-- BEGIN  modal -->
		<div class="modal fade show" id="sizedModalLg" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title">단가표</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	<span aria-hidden="true">&times;</span>
	</button>
					</div>
					<div class="modal-body m-3">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="table-responsive">
										<table class="table mb-0">
											<thead>
												<tr>
													<th scope="col">업체명</th>
													<th scope="col">단가</th>
													<th scope="col">화폐</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>유니피트</td>
													<td>1,000</td>
													<td>
														<select class="form-control">
															<option selected="">선택하세요</option>
															<option>One</option>
															<option>Two</option>
															<option>Three</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>바이오</td>
													<td>2,000</td>
													<td>
														<select class="form-control">
															<option selected="">선택하세요</option>
															<option>One</option>
															<option>Two</option>
															<option>Three</option>
														</select>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END  modal -->

	<script src="../js/app.js"></script>
</body>

</html>