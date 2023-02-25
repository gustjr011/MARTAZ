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
	
		<title>상품 키워드 리스트</title>
	
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
							<h1 class="col-md-12 h3">"${productKeywordList[0].get("productName")}" 상품 키워드 관리</h1>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="card">
									<!-- div class="card-header ">
										<form action="" class="form-inline search_zone">
											<input type="text" class="form-control mb-2 mr-sm-2" id="" placeholder="상품검색">
											<button type="submit" class="btn btn-primary mb-2">검색</button>
										</form>
									</div-->
									<div class="table-responsive">
										<table class="table mb-0">
											<thead>
												<tr>
													<th>키워드</th>
													<th>디바이스</th>
													<th>슬롯수량</th>
													<th>현재 랭킹</th>
													<th>관리</th>
												</tr>
											</thead>
											<tbody>
												<input type="hidden" id="K_productDetailNo" value="${productKeywordList[0].productDetailNo}">
												<c:forEach var="rs" items="${productKeywordList}"  varStatus="status">
													<tr>
														<td>
															<input type="text" id="K_keyword_${rs.keywordNo}" value="${rs.keyword}">
														</td>
														<td>
															<select id="K_deviceType_${rs.keywordNo}" class="form-control">
																<option value="1" <c:if test="${rs.deviceType == 1}">selected</c:if>>모바일</option>
																<option value="2" <c:if test="${rs.deviceType == 2}">selected</c:if>>PC</option>
															</select>
														</td>
														<td>
															<input type="number" id="K_slotCnt_${rs.keywordNo}" value="${rs.slotCnt}">
														</td>
														<td>
															<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sizedModalLg" onclick="#">${rs.currentRank}</button>
														</td>
														<td>
															<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sizedModalLg" onclick="javascript:keywordSave('${rs.keywordNo}','update')">저장</button>
															<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sizedModalLg" onclick="javascript:keywordSave('${rs.keywordNo}','delete')">삭제</button>
															<label class="custom-control custom-checkbox">
																<input type="checkbox" id="test_yn_${rs.keywordNo}" class="custom-control-input">
																<p class="custom-control-label">
																	<strong class="h5">테스트 여부?</strong>
																</p>
										 					 </label>
														</td>
													</tr>
												</c:forEach>
													<tr>
														<td>
															<input class="form-control" type="text" id="K_keyword_0" placeholder="키워드명" />
														</td>
														<td>
															<select class="form-control" id="K_deviceType_0">
																<option value="0" selected>선택해 주세요</option>
																<option value="1">모바일</option>
																<option value="2">PC</option>
															</select>
														</td>
														<td>
															<input class="form-control" type="number" id="K_slotCnt_0" value="0" />
														</td>
														<td class="text-nowrap">
															<label class="custom-control custom-checkbox">
																<input type="checkbox" id="test_yn_0" class="custom-control-input">
																<p class="custom-control-label">
																	<strong class="h5">테스트 여부?</strong>
																</p>
										 					 </label>
															<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sizedModalLg" onClick="keywordSave(0, 'new')">새 키워드 저장하기</button>
														</td>
														<td class="text-nowrap"></td>
													</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
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
    	function keywordSave(keywordNo, mode){
    		if(mode == "delete"){
    			var rs = confirm("삭제하시겠습니까?");
    	    	
    	    	if(rs){
    				console.log("no("+keywordNo+") 삭제 쿼리 실행");
    	    	}else{
    	    		console.log("취소됨");
    	    		return;
    	    	}
    		}
    		
    		var getDeviceType = document.getElementById("K_deviceType_"+keywordNo).value;
    		var getSlotCnt = (document.getElementById("K_slotCnt_"+keywordNo).value)*1;
    		var getKeyword = document.getElementById("K_keyword_0").value;
    		var getProductDetailNo = getProductDetailNo = (document.getElementById("K_productDetailNo").value)*1;
    		var getTestYn = true;
    		
    		if(keywordNo != 0){ 
    			getKeyword = document.getElementById("K_keyword_"+keywordNo).value; 
    			getTestYn = document.getElementById("test_yn_"+keywordNo).checked;
    		}else{
    			getTestYn = document.getElementById("test_yn_0").checked;
    		}
    		
			var setData = new Object();
			
			setData.deviceType = getDeviceType;	//P_DEVICE_TYPE
			setData.slotCnt = getSlotCnt;	//P_SLOT_CNT
			setData.keywordNo = keywordNo;	//P_KEYWORD_NO
			setData.keyword = getKeyword;	//P_KEYWORD_NO
			setData.productDetailNo = getProductDetailNo;	//P_KEYWORD_NO
			
			if(getTestYn){
				setData.TEST_YN = 1;
			}else{
				setData.TEST_YN = 0;
			}
			
			setData.mode = mode;
			
    		$.ajax({
   		      type:"POST",
   		      url: "/web/updateProductKeyword",
	   		  data : {
	   	         jsonParam : JSON.stringify(setData)
	   	      },
   		       success:function(result){
   		          console.log(result);
   		    	  alert(result.resultString);
   		          location.reload();
   		       },
   		       error : function(e) {
   		         alert('네트워크 에러입니다.');
   		      }
   		   });
    	}
    	
    	function newKeywordSave(){
    		var newKeywordName = document.getElementById("newKeywordName").value;
    		var newKeywordDevice = document.getElementById("newKeywordDevice").value;
    		
    		if(newKeywordName === ""){
    			alert("이름이 없습니다.");
    			return;
    		}else if(newKeywordDevice === "0"){
    			alert("디바이스가 선택되지 않았습니다.");
    			return;
    		}else{
    			console.log("입력쿼리 실행");
    		}
    	}
    </script>
</html>