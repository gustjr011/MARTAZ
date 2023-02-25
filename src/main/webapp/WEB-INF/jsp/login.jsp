<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>로그인</title>
    </head>
    
    <link href="./css/style.css" rel="stylesheet"/>
    <link href="./css/app.css" rel="stylesheet"/> 
    
    <body>
        <main class="main h-100 w-100">
			<nav class="navbar navbar-expand bg-white sticky-top">
				<h1 class="mb-0"><a href="#" class="text-dark">Martaz</a></h1>
				<!-- div class="navbar-collapse collapse">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<a href="#" class="text-dark">
								로그인
							</a>
						</li>
						<li class="nav-item ml-3">
							<a href="#" class="text-dark">
								회원가입
							</a>
						</li>
					</ul>
				</div -->
			</nav>
			<div class="container h-100 mh-100vh pt-3">
				<div class="row h-100">
					<div class="col-sm-10 col-md-7 col-lg-5 mx-auto d-table h-100">
						<div class="d-table-cell align-middle">
							<div class="text-center mt-4">
								<h1 class="h2 mb-3">로그인</h1>
							</div>
							<div class="card">
								<div class="card-body">
									<div class="m-sm-4">
										<form id="body" action="/loginMber" method="POST">
											<div class="mb-1">
												<div class="form-group">
													<input class="form-control form-control-lg" type="text" id="user_id" name="id"  
														placeholder="아이디" value="test1"
														onkeypress="if(event.keyCode == 13){ login(); return; }">
												</div>
												<div class="form-group">
													<input class="form-control form-control-lg" type="password" id="pw" name="password" 
														placeholder="비밀번호" value="1234"
														onkeypress="if(event.keyCode == 13){ login(); return; }">
												</div>
											</div>
											<div class="text-center mb-3">
												<a href="javascript:login();" class="btn btn-lg btn-primary d-block">로그인</a>
												<!-- <button type="submit" class="btn btn-lg btn-primary">Sign up</button> -->
											</div>
											<!-- div class="mb-3">
												<span class="text-muted">아직 계정이 없나요?</span>
												<a class="text-link float-right">회원가입</a>
											</div -->
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
    </body>
    <script type="text/javascript" src="./js/app.js"></script>
    <script type="text/javascript">
		function login(){
			document.getElementById('body').submit();
		}
    </script>
</html>