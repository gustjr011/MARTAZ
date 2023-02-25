<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lnag="ko">
    <head>
        <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="Responsive Bootstrap 4 Admin Template">
		<meta name="author" content="Bootlab">
	
		<title>회원 추가</title>
	
		<link href="../css/app.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
    </head>
    <body>
    	<div class="wrapper">
		<jsp:include page="../leftMenu.jsp" flush="false"/>
		<main class="main">
			<div class="d-flex fd_col">
				<jsp:include page="../header.jsp" flush="false"/>
				<main class="content">
					<div class="container h-100 mh-100vh pt-3">
						<div class="row h-100">
							<div class="col-sm-10 col-md-7 col-lg-5 mx-auto d-table h-100">
								<div class="d-table-cell">
									<div class="text-center mt-4">
										<h1 class="h2 mb-3">사용자 추가</h1>
									</div>
									<div class="card">
										<div class="card-body">
											<div class="m-sm-4">
												<form name="body" action="/insertMber" method="POST">
													<!-- div class="mb-3">
														<div class="form-group input_inner_btn 	mb-1">
															<input class="form-control form-control-lg" type="email" name="email" placeholder="이메일 계정" />
															<button type="button" class="btn btn-primary">인증</button>
														</div>
														<small>위 메일로 인증번호가 발송됩니다.</small>
													</div -->
													<div class="mb-5">
														<div class="form-group">
															<input class="form-control form-control-lg" type="text" name="id" placeholder="아이디 입력" />
														</div>
														<div class="form-group">
															<input class="form-control form-control-lg" type="password" name="password" placeholder="비밀번호"/>
														</div>
														<div class="form-group 	mb-1">
															<input class="form-control form-control-lg" type="password" name="password" placeholder="비밀번호 확인"/>
														</div>
														<small>영문, 숫자, 특수문자를() 조합한 8자 이상(test중 미적용)</small>
														<div class="form-group 	mb-1">
															<input class="form-control form-control-lg" type="text" name="name" placeholder="이름"/>
														</div>
														<div class="form-group 	mb-1">
															<input class="form-control form-control-lg" type="email" name="mail" placeholder="email@gmail.com" placeholder="메일"/>
														</div>
														<div class="form-group 	mb-1">
															<input class="form-control form-control-lg" type="number" name="phone" placeholder="010********"/>
														</div>
													</div>
													<!-- div class="mb-3">
														<div class="form-group 	mb-1">
															<label>이벤트 참여 <small>(선택사항)</small></label>
															<input class="form-control form-control-lg" type="text" name="event" placeholder="이벤트 문구 입력" disabled />
														</div>
														<small>이벤트 참여란에 '펀딩하자'를 입력하고 휴대폰 인증하면 신규 회원 가입 기념 3,000포인트를 드립니다!</small>
													</div-->
													<div class="text-center mt-3">
														<!-- <a href="index.html" class="btn btn-lg btn-primary d-block">완료</a> -->
														<button type="submit" class="btn btn-lg btn-primary">추가하기</button>
													</div>
												</form>
											</div>
										</div>
									</div>
			
								</div>
							</div>
						</div>
					</div>
			
					<div class="modal fade" id="sizedModalSm" tabindex="-1" role="dialog" aria-hidden="true">
						<div class="modal-dialog modal-sm" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">약관 확인</h5><br>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body m-3">
									<!-- 전체 동의 -->
									<div class="mb-3">
										<label class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input">
											<p class="custom-control-label">
												<strong class="h5">전체동의</strong>
											</p>
										  </label>
									</div>
									<!-- 서비스 이용약관(하위 약관 상위 요소) -->
									<div class="mb-3">
										<label class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input">
											<p class="custom-control-label">
												<span>서비스 이용약관(필수)</span>
											</p>
										</label>
									</div>
									
									<!-- 하위 약관 -->
									<div class="mb-3">
										<div class="custom-control custom-checkbox d-none-chk-input mb-2">
											<p class="custom-control-label">
												<span>회원가입 약관</span>
												<span class="float-right"><a href="" class="text-link">내용보기</a></span>
											</p>
										</div>
										<!-- 약관 상세 -->
										<div class="policy_box p-3">
											<div>
												<p><strong>제2조</strong></p>
												<p>본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.</p>
												<p>본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.</p>
												<p>본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.</p>
											</div>
										</div>
									</div>
			
									<!-- 하위 약관 -->
									<div class="mb-3">
										<div class="custom-control custom-checkbox d-none-chk-input mb-2">
											<p class="custom-control-label">
												<span>회원가입 약관</span>
												<span class="float-right"><a href="" class="text-link">내용보기</a></span>
											</p>
										</div>
										<!-- 약관 상세 -->
										<div class="policy_box p-3" style="display:none;">
											<div>
												<p><strong>제2조</strong></p>
												<p>본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.</p>
												<p>본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.</p>
												<p>본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.본 약관에서 사용하는 용어의 정의는 다음과 같다.</p>
											</div>
										</div>
									</div>
			
									<!-- 개인정보 수집 -->
									<div class="mb-3">
										<label class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input">
											<p class="custom-control-label">
												<span>개인정보 수집 &middot; 이용동의(필수)</span>
											</p>
										</label>
									</div>
			
									<!-- 마케팅 정보 수신동의 -->
									<div class="mb-3">
										<label class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input">
											<p class="custom-control-label">
												<span class="d-block mb-2">마케팅 정보 수신(선택)</span>
												<span>와디즈의 모든 어쩔저쩔</span>
											</p>
										</label>
									</div>
								</div>
								<div class="modal-footer text-center bd_top_none d-block">
									<button type="button" class="btn btn-primary d-block w-100">확인</button>
								</div>
							</div>
						</div>
					</div>
				</main>
			</div>
		</main>
		<!-- content-->
        <!-- content-->
		<script src="../js/app.js"></script>
    </body>
</html>