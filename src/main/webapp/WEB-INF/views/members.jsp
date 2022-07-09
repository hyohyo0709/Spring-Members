<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	 
	 //console.log($('#tbID').val());
	 $('#becomeNew').click(function() {
		 if($('#tbID').val().length==0){
			alert('아이디를 입력하시오.');
			return false;
		};
		
		
		 if($('#tbPwd').val()==0){
			alert('비밀번호를 입력하세요.');
			return false;
		};
		
		 if($('#cpass').val()==0){
			alert('비밀번호 확인을 해주세요!');
			return false;
		};
		
		 if($('#mail').val()==0){
			alert('이메일 주소를 입력해주세요.');
			return false;
		}
		
		 if($('#name').val()==0){
			alert('이름을 입력하세요.');
			return false;
		}
		
		////////////////필수정보들 공란으로 나두었을 경우///////////
		
		
		let userId=$('#tbID').val();
		let userPass=$('#tbPwd').val();
		let chkPass=$('#cpass').val();
		let userMail=$('#mail').val();
		let userName=$('#name').val();
		
		let idPattern = /^[a-zA-Z0-9]{4,12}$/; //아이디: 4~12자리의 영문 대소문자와 숫자로만 입력
		let passPattern = /^(?=.*[!@#$%^&_*]{1,})(?=.*[0-9]{1,})[a-zA-Z0-9!@#$%^&_*]{4,12}$/;//4~12자리, 최소한 한 개의 숫자와 특수문자를 포함
		
		let citizenNum1 = $('#pnum').val();
		let citizenNum2 = $('#nnum').val();
		let cn1Pattern = /^[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1])$/;
			
		let cn2Pattern = /^[1-4][0-9]{6}$/;
		
		
		 if(!(idPattern.test(userId))){
			alert('아이디 조건을 확인하세요.(4~12자리의 영문 대소문자와 숫자로만 입력)');
			return false;
		};
		
		 if(!(passPattern.test(userPass))){
			alert('비밀번호 조건을 확인하세요.(4~12자리, 최소한 한 개의 숫자와 특수문자를 포함)');
			return false;
		};
		
		 if(userPass!=chkPass){
			alert('비밀번호가 일치하지 않습니다.');
			return false;
		} 
		
		
		  if(!cn1Pattern.test(citizenNum1)){
			alert('주민등록번호를 확인해주세요.1');
			return false;
		} 
		
		 if(!cn2Pattern.test(citizenNum2)){
			alert('주민등록번호를 확인해주세요.2');
			return false;
		} 
		
			 $('#frm').attr("action", "join.ee");
			
		alert('회원가입이 완료됐습니다.'); // 맨 마지막, 아무런 문제 없을 때	
		
		
		
		
		
		 });// 회원가입 버튼 누름 
		
		
		
	 //
	 
});
</script>

</head>
<body>
<form  method="post" name="frm" id="frm" 
		>
		<h2 align="center">회원가입</h2>

		<table align="center" border="3" cellspacing="0">
			<tr>
				<td colspan="5" height="30" align="center" bgcolor=#000000 span
					style="color: white;">회원기본정보</td>

			</tr>
			<tr>
				<td align="left">아이디:</td>
				<td colspan="4"><input type="text" name="mem_id" maxlength="12"
					id="tbID"> 4~12자리의 영문 대소문자와 숫자로만 입력</td>
			</tr>

			<tr>
				<td>비밀번호:</td>
				<td colspan="4"><input type="password" maxlength="12" name="mem_pass"
					id="tbPwd"> 4~12자리, 최소한 한 개의 숫자와 특수문자를 포함</td>
			</tr>
			<tr>
				<td>비밀번호확인:</td>
				<td colspan="5"><input type="password" id="cpass" 
					maxlength="12"></td>

			</tr>

			<tr>
				<td>메일주소:</td>
				<td colspan="4"><input type="text" name="mem_email" id="mail">
					예)id@domain.com</td>
			</tr>
			<tr>
				<td>이름:</td>
				<td colspan="3"><input type="text" name="mem_name" id="name"></td>
			</tr>
			<tr>
				<td colspan="5" height="30" align="center" bgcolor=#000000 " span
					style="color: white;">개인신상정보</td>
			</tr>

			<tr>
				<td>주민등록번호:</td>
				<td colspan="4"><input type="text" name="mem_citizen_id_1" id="pnum">-<input
					type="password" name="mem_citizen_id_2" id="nnum"></td>
			</tr>

			<tr>
				<td>생일:</td>
				<td><input type="text" autocomplete="OFF" name="nyear"
					id="year" style="width: 70px" readonly disabled> 년 <input
					type="text" autocomplete="OFF" name="nmonth" id="month"
					style="width: 50px" readonly disabled> 월 <input type="text"
					autocomplete="OFF" name="nday" id="day" style="width: 50px"
					readonly disabled> 일
			</tr>

			<tr>
				<td width="20" height="100">관심분야:</td>
				<td colspan="3"><textarea name="mem_hobby" id="intro" cols="50"
						rows="5"></textarea></td>
			</tr>
			<tr>
				<td width="20" height="100">자기소개:</td>
				<td colspan="3"><textarea name="mem_introduce" id="intro" cols="50"
						rows="5"></textarea></td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" value="회원가입" id="becomeNew"> <input type="reset"
				value="다시입력">
		</p>
	</form>
</body>
</html>