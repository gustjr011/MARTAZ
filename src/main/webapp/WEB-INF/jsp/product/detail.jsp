<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" 	uri="http://java.sun.com/jsp/jstl/functions" %>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
    </head>
    <body>
        <!-- wrapper -->
        <div id="wrapper">
            <!-- content-->
            <h2>슬롯 상세</h2>
            <h3> ${message} </h3>
            <div id="content">
				<form name="slotItemInfo" action="/web/insertSlot" method="POST">
					<input type="hidden" name="slotNo" value="${slotNo}"><br/>
			      멤버슬롯번호 : <input type="text" name="memberSlotNo" value="${memberSlotNo}"><br/>
			      사용유형 : <input type="text" name="deviceType" value="${deviceType}"> <br/>
			      플랫폼 : <input type="text" name="platformType" value="${platformType}"> <br/>
			      키워드 : <input type="text" name="keyword" value="${keyword}"> <br/>
			      상품url : <input type="text" name="searchKey" value="${searchKey}"> <br/>
			      이름 : <input type="text" name="slotName" value="${slotName}"> <br/>
			      headless : <input type="text" name="headless" value="${headless}"> <br/>
			      <input type="button" id="regBtn" value="등록" onclick="formSubmit('reg')">
			      <input type="button" id="modBtn" value="수정" onclick="formSubmit('modi')">
			      <input type="button" onclick="location.href='/main'" value="메인 돌아가기">
			    </form>
            </div> 
            <!-- content-->
        </div> 
        <!-- wrapper -->
    </body>
    <script type="text/javascript">
	    function getParam(pName) {
	        var params = location.search.substr(location.search.indexOf("?") + 1);
	        var sval = "";
	        params = params.split("&");
	        for (var i = 0; i < params.length; i++) {
	            temp = params[i].split("=");
	            if ([temp[0]] == pName) { sval = temp[1]; }
	        }
	        return sval;
	    }
	    
	    window.onload = function(){
	    	if(getParam("reg")=="modi"){
				  const element = document.getElementById('regBtn');
				  element.style.display = 'none';
			}else{
				const element = document.getElementById('modBtn');
				element.style.display = 'none';
			}
	    }
	    
	    function formSubmit(type) {
	    	var slotForm = document.slotItemInfo;
	    	
	    	if(type == "modi"){
	    		slotItemInfo.action="/web/updateSlot";
			}else{
	    		slotItemInfo.action="/web/insertSlot";
			}
	    	
	    	slotForm.submit();
	    }
    </script>
</html>