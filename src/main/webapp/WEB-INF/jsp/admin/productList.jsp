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
		<title>상품 전체 관리 리스트</title>
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
							<h1 class="col-md-12 h3">전체 상품 목록</h1>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header ">
										<form action="" class="form-inline search_zone">
											<input type="text" class="form-control mb-2 mr-sm-2" id="" placeholder="상품검색">
											<button type="submit" class="btn btn-primary mb-2">검색</button>
										</form>
									</div>
									<div class="table-responsive">
										<table class="table mb-0">
											<thead>
												<tr>
													<th>사업자</th>
													<th>상품명</th>
													<th>현 슬롯수</th>
													<th>플랫폼</th>
													<th>서치키</th>
													<th>버튼</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="rs" items="${productList}"  varStatus="status">
													<tr>
														<td>
															<!--
															<c:forEach var="detail" items="${rs.detailList}"  varStatus="status">
																<div class="form-group mb-0">
																	<input class="form-control" type="text" name="datesingle" placeholder="입력 회원명" value="${detail.M_name}" style="border:none;" disabled/>
																</div>
															</c:forEach> 
															-->
															${rs.detailList[0].M_name}
															<div class="form-group mb-0">
																<input class="form-control" type="text" name="datesingle" placeholder="서치키" value="${detail.M_name}" style="border:none; visibility: hidden;" disabled/>
															</div>
														</td>
														<td>
															<c:out value="${rs.productName}"/>
														</td>
														<td>
															<c:set var = "total" value = "0" />
															<c:forEach var="cnt" items="${rs.detailList}" varStatus="status">
																<c:set var= "total" value="${total + cnt.S_cnt}"/>
															</c:forEach>
															<c:out value="${total}"/> 개
														</td>
														<td>
															<div class="form-group mb-0">
																<c:forEach var="detail" items="${rs.detailList}"  varStatus="status">
																	<select class="form-control">
																		<option value="1" <c:if test="${detail.D_platformType == 1}">selected</c:if>>카카오</option>
																		<option value="2" <c:if test="${detail.D_platformType == 2}">selected</c:if>>네이버</option>
																		<option value="3" <c:if test="${detail.D_platformType == 3}">selected</c:if>>11번가</option>
																		<option value="4" <c:if test="${detail.D_platformType == 4}">selected</c:if>>쿠팡</option>
																		<option value="5" <c:if test="${detail.D_platformType == 5}">selected</c:if>>티몬</option>
																	</select>
																</c:forEach>
																<select id="platformType_${rs.productNo}" class="form-control">
																	<option value="0" selected>플랫폼 선택해 주세요</option>
																	<option value="1">카카오</option>
																	<option value="2">네이버</option>
																	<option value="3">11번가</option>
																	<option value="4">쿠팡</option>
																	<option value="5">티몬</option>
																</select>
															</div>
														</td>
														<td>
															<div class="form-group mb-0">
																<c:forEach var="detail" items="${rs.detailList}"  varStatus="status">
																	<input class="form-control" type="text" name="datesingle" placeholder="서치키" value="${detail.D_searchKey}"/>
																</c:forEach>
																<input class="form-control" type="text" id="searchKey_${rs.productNo}" name="datesingle" placeholder="서치키" />
															</div>
														</td>
														<td class="text-nowrap">
															<c:forEach var="detail" items="${rs.detailList}"  varStatus="status">
																<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sizedModalLg" onclick="javascript:detailSave(${detail.I_No}, '${detail.D_DetailNo}')">수정</button>
																<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sizedModalLg" onclick="javascript:keywordlist(${detail.D_DetailNo})">상세</button>
																<br>
															</c:forEach>
															<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sizedModalLg" onclick="detailNewSave(${rs.productNo}, 0)">+키워드</button>
															<!-- p>
																<input type="checkbox" id="test_yn_save">
																<strong>테스트용</strong>
															</p -->
														</td>
													</tr>
												</c:forEach>
												<c:if test="${sessionScope.auth eq 'admin'}">
													<tr>
														<td>
															<input class="form-control" type="text" id="newProductName" name="datesingle" placeholder="상품명" />
														</td>
														<td>
															<c:out value="${rs.D_platformType}"/>
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
												</c:if>
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
			location.href="/web/productAdminKeywordList?productNo="+no;
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
				console.log("신상품 입력쿼리 실행");
				var setData = new Object();
				
				setData.productName = newProductName;
				$.ajax({
		   		      type:"POST",
		   		      url: "/web/insertProductInfo",
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
		}
	    
	    function detailNewSave(productNo, detailNo){
			var getPlatformType = document.getElementById("platformType_"+productNo).value;
			var getSearchKey = document.getElementById("searchKey_"+productNo).value;
			if(getPlatformType === "0"){
				alert("플랫폼이 선택되지 않았습니다.");
				return;
			}else if(getSearchKey === ""){
				alert("서치키가 입력되지 않았습니다.");
				return;
			}else{
				var setData = new Object();
				
				var getProductNo = productNo;
				
				setData.productNo = getProductNo;
				setData.platformType = getPlatformType;
				setData.searchKey = getSearchKey;
				
				var getTestYn = true;
	    		
	    		if(detailNo != 0){ 
	    			getKeyword = document.getElementById("K_keyword_"+detailNo).value; 
	    			getTestYn = document.getElementById("test_yn_"+detailNo).checked;
	    		}else{
	    			getTestYn = document.getElementById("test_yn_save").checked;
	    		}
				//testyn은 아직 컬럼 없음
	    		setData.TEST_YN = getTestYn;
	    		console.log(setData);
	    		
				$.ajax({
		   		      type:"POST",
		   		      url: "/web/insertProductDetail",
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
		}
	    
	    function detailSave(productNo, detailNo){
			var getPlatformType = document.getElementById("platformType_"+productNo).value;
			var getSearchKey = document.getElementById("searchKey_"+productNo).value;
			if(getPlatformType === "0"){
				alert("플랫폼이 선택되지 않았습니다.");
				return;
			}else if(getSearchKey === ""){
				alert("키워드가 입력되지 않았습니다.");
				return;
			}else{
				var setData = new Object();
				
				var getProductNo = productNo;
				
				setData.productNo = getProductNo;
				setData.platformType = getPlatformType;
				setData.searchKey = getSearchKey;
				setData.productDetailNo = detailNo;
				
				var getTestYn = true;
	    		
	    		if(detailNo != 0){ 
	    			getKeyword = document.getElementById("K_keyword_"+detailNo).value; 
	    			getTestYn = document.getElementById("test_yn_"+detailNo).checked;
	    		}else{
	    			getTestYn = document.getElementById("test_yn_save").checked;
	    		}
				
	    		setData.TEST_YN = getTestYn;
	    		console.log(setData);
	    		
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
		}

    </script>
</html>