<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
    </head>
    <body>
        <!-- wrapper -->
        <div id="wrapper">
            <!-- content-->
            <div id="content">
				<form name="body" action="/insertMber" method="POST">
			      아이디 : <input type="text" name="id" placeholder="아이디 입력" ><br/>
			      비밀번호 : <input type="password" name="password" value="123456"><br/>
			      비밀번호 재확인 : <input type="password" name="password_chk" value="123456"> <input type="button" name="password_chk_btn" value="비밀번호 재확인"><br/>
			      이름 : <input type="text" name="name" value=""> <br/>
			      생년월일 : <input type="text" name="birth" value="" placeholder="19800101"> <br/>
			      메일 : <input type="email" name="mail" placeholder="email@gmail.com"><br/><br/>
			      휴대전화 : <input type="text" name="phone" placeholder="010********"><br/>
			      <input type="submit" name="" value="가입">
			    </form>
            </div> 
            <!-- content-->
        </div> 
        <!-- wrapper -->
    </body>
</html>