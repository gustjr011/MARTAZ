<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<!-- 상단 헤더 -->
		<nav class="navbar navbar-expand navbar-light bg-white sticky-top">
			<!-- 햄버거 메뉴 -->
			<a class="sidebar-toggle d-flex mr-3">
				<i class="align-self-center" data-feather="menu"></i>
			</a>
			<!-- 업체명 -->
			<div class="`">
				<!--  %=session.getAttribute("memberName") %-->
				총 슬롯수: <span class="badge badge-primary" id="slotAllCnt" style="background-color:#60afa7;">-</span>
				현재 사용중: <span class="badge badge-primary" id="siSlotCnt" style="background-color:#2979ff;">-</span>
				남은 슬롯수: <span class="badge badge-primary" id="siSlotNullCnt" style="background-color:#ffb329;">-</span>
				1주일 경고: <span class="badge badge-primary" id="limitWeekCnt" style="background-color:yellow; color: black">-</span>
				슬롯 경과: <span class="badge badge-primary" id="limitOverCnt" style="background-color:black;">-</span>
			</div>
			<!-- 우측 마이메뉴 -->
			<div class="navbar-collapse collapse">
				<ul class="navbar-nav ml-auto">
					<!-- 회원정보 -->
					<!-- li class="nav-item dropdown">
						<a class="nav-link nav-link-user pr-0 pl-0 dropdown-toggle d-sm-inline-block" href="#" id="userDropdown" data-toggle="dropdown">
							<img src="https://phinf.pstatic.net/contact/20170928_162/1506575358455gQw5c_JPEG/KakaoTalk_20170928_140826712.jpg?type=f130_130" width="36" height="36" class="avatar img-fluid rounded " alt="김세라" /> <span class="text-dark d_m_none ml-1">김세라</span>
						</a>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
							<a class="dropdown-item" href="pages-profile.html">Profile</a>
							<a class="dropdown-item" href="#">Analytics</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="pages-settings.html">Settings & Privacy</a>
							<a class="dropdown-item" href="#">Help</a>
							<a class="dropdown-item" href="#">Sign out</a>
						</div>
					</li -->
					<!-- 메세지 -->
					<!--li class="nav-item dropdown">
						<a class="nav-icon dropdown-toggle ml-2" href="#" id="messagesDropdown" data-toggle="dropdown">
							<div class="position-relative">
								<i class="align-middle" data-feather="message-square"></i>
								<span class="indicator">4</span>
							</div>
						</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0" aria-labelledby="messagesDropdown">
							<div class="dropdown-menu-header">
								<div class="position-relative">
									4 New Messages
								</div>
							</div>
							<div class="list-group">
								<a href="#" class="list-group-item">
									<div class="row no-gutters align-items-center">
										<div class="col-2">
											<img src="img/avatar-5.jpg" class="avatar img-fluid rounded-circle" alt="Kathy Davis">
										</div>
										<div class="col-10 pl-2">
											<div class="text-dark">Kathy Davis</div>
											<div class="text-muted small mt-1">Nam pretium turpis et arcu. Duis arcu tortor.</div>
											<div class="text-muted small mt-1">15m ago</div>
										</div>
									</div>
								</a>
								<a href="#" class="list-group-item">
									<div class="row no-gutters align-items-center">
										<div class="col-2">
											<img src="img/avatar-2.jpg" class="avatar img-fluid rounded-circle" alt="John Smith">
										</div>
										<div class="col-10 pl-2">
											<div class="text-dark">John Smith</div>
											<div class="text-muted small mt-1">Curabitur ligula sapien euismod vitae.</div>
											<div class="text-muted small mt-1">2h ago</div>
										</div>
									</div>
								</a>
								<a href="#" class="list-group-item">
									<div class="row no-gutters align-items-center">
										<div class="col-2">
											<img src="img/avatar-4.jpg" class="avatar img-fluid rounded-circle" alt="Marie Salter">
										</div>
										<div class="col-10 pl-2">
											<div class="text-dark">Marie Salter</div>
											<div class="text-muted small mt-1">Pellentesque auctor neque nec urna.</div>
											<div class="text-muted small mt-1">4h ago</div>
										</div>
									</div>
								</a>
								<a href="#" class="list-group-item">
									<div class="row no-gutters align-items-center">
										<div class="col-2">
											<img src="img/avatar-3.jpg" class="avatar img-fluid rounded-circle" alt="Teresa Lessard">
										</div>
										<div class="col-10 pl-2">
											<div class="text-dark">Teresa Lessard</div>
											<div class="text-muted small mt-1">Aenean tellus metus, bibendum sed, posuere ac, mattis non.</div>
											<div class="text-muted small mt-1">5h ago</div>
										</div>
									</div>
								</a>
							</div>
							<div class="dropdown-menu-footer">
								<a href="#" class="text-muted">Show all messages</a>
							</div>
						</div>
					</li -->
					<!-- 알림 -->
					<!--li class="nav-item dropdown">
						<a class="nav-icon dropdown-toggle ml-2" href="#" id="alertsDropdown" data-toggle="dropdown">
							<div class="position-relative">
								<i class="align-middle" data-feather="bell"></i>
							</div>
						</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0" aria-labelledby="alertsDropdown">
							<div class="dropdown-menu-header">
								4 New Notifications
							</div>
							<div class="list-group">
								<a href="#" class="list-group-item">
									<div class="row no-gutters align-items-center">
										<div class="col-2">
											<i class="text-danger" data-feather="alert-circle"></i>
										</div>
										<div class="col-10">
											<div class="text-dark">Update completed</div>
											<div class="text-muted small mt-1">Restart server 12 to complete the update.</div>
											<div class="text-muted small mt-1">2h ago</div>
										</div>
									</div>
								</a>
								<a href="#" class="list-group-item">
									<div class="row no-gutters align-items-center">
										<div class="col-2">
											<i class="text-warning" data-feather="bell"></i>
										</div>
										<div class="col-10">
											<div class="text-dark">Lorem ipsum</div>
											<div class="text-muted small mt-1">Aliquam ex eros, imperdiet vulputate hendrerit et.</div>
											<div class="text-muted small mt-1">6h ago</div>
										</div>
									</div>
								</a>
								<a href="#" class="list-group-item">
									<div class="row no-gutters align-items-center">
										<div class="col-2">
											<i class="text-primary" data-feather="home"></i>
										</div>
										<div class="col-10">
											<div class="text-dark">Login from 192.186.1.1</div>
											<div class="text-muted small mt-1">8h ago</div>
										</div>
									</div>
								</a>
								<a href="#" class="list-group-item">
									<div class="row no-gutters align-items-center">
										<div class="col-2">
											<i class="text-success" data-feather="user-plus"></i>
										</div>
										<div class="col-10">
											<div class="text-dark">New connection</div>
											<div class="text-muted small mt-1">Anna accepted your request.</div>
											<div class="text-muted small mt-1">12h ago</div>
										</div>
									</div>
								</a>
							</div>
							<div class="dropdown-menu-footer">
								<a href="#" class="text-muted">Show all notifications</a>
							</div>
						</div>
					</li-->
					<!-- 나가기 -->
					<li class="nav-item d-flex align-item-center">
						<button type="button" class="btn ol_none  ml-2" onclick="logOut()">로그아웃</button>
					</li>
				</ul>
			</div>
		</nav>
	</body>
	<script type="text/javascript" src="./js/app.js"></script>
	<script type="text/javascript">
		window.onload = function(){
			var session_mber_no = <%=session.getAttribute("memberNo") %>
				console.log(sessionStorage.length);
			if(!session_mber_no){
				logOut();
			}else{
				$.ajax({
		   		      type:"POST",
		   		      url: "/api/getSlotCount",
			   		  data : {
			   			mberNo : session_mber_no
			   	      },
		   		       success:function(result){
		   		          	$("#slotAllCnt").text(result.slotAllCnt);
		   		       		$("#siSlotCnt").text((result.slotAllCnt*1) - (result.siSlotNullCnt*1));
		   		       		$("#siSlotNullCnt").text(result.siSlotNullCnt);
			   		      	$("#limitWeekCnt").text(result.limitWeekCnt);
			   		   	  	$("#limitOverCnt").text(result.limitOverCnt);
		   		       },
		   		       error : function(e) {
		   		    	 console.log(e);
		   		         alert('api 네트워크 에러입니다.');
		   		      }
		   		});
			}
	    }
		function logOut(){
			sessionStorage.removeItem("memberNo");
			sessionStorage.clear();
			location.href = "/logOut";
		}
	</script>
</html>