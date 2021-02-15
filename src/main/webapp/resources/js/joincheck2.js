$(document).ready(function() { 	
		$("#id").blur(function() {
			var idt = /^[a-z]+[a-z0-9]{4,12}$/;
			var id = $('#id').val();
			
			$.ajax({
				url : root + '/member/check_id?id=' + id,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x :" + data);

					if (data === '1') {
						// 아이디가 중복되는 문구
						$("#id_check").text("사용중인 아이디입니다 :p");			
						document.getElementById("signUpIdCheck").value = "0";
					} else {
						if (idt.test(id)) {
							$("#id_check").text("");
							document.getElementById("signUpIdCheck").value = "1";
						} else if (id === "") {
							$('#id_check').text('아이디를 입력해주세요 :p');
							document.getElementById("signUpIdCheck").value = "0";
						} else {
							$('#id_check').text("[아이디는 소문자와 숫자 4~12자리만 가능합니다.]");
							document.getElementById("signUpIdCheck").value = "0";
						}
					}
				},
				error : function() {
					console.log("실패");
				}
			});
		});
		
		$("#password").blur(function() {
			var pw1 = $('#password').val();
			var pw2 = $('#confirmPassword').val();
			var pwt = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;

			
			
			
				if (pwt.test(pw1)) {
					$('#password_check').text("");
					document.getElementById("signUpPwCheck").value = "1";
				} else if(pw1 == "") {
					$('#password_check').text("비밀번호를 입력하세요");
					document.getElementById("signUpPwCheck").value = "0";
				} else {
					$('#password_check').text("[비밀번호는 영문,숫자, 특수문자~`!@#$%\^&*()-+=를 조합하여 8자 이상으로 만들어주세요.]");
					document.getElementById("signUpPwCheck").value = "0";
				}							
		}); 
		
		$("#confirmPassword").blur(function() {				
			var pw1 = $('#password').val();
			var pw2 = $('#confirmPassword').val();
			var pwt = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;
				
										
				if ((pw1 == pw2) && pwt.test(pw2)) {
					$('#confirm_check').text("");	
					document.getElementById("signUpRePwCheck").value = "1";
				} else if ((pw1 == pw2) && !pwt.test(pw2)){
					$('#confirm_check').text("");
					document.getElementById("signUpRePwCheck").value = "0";
				} else if ((pw1 =! pw2) && !pwt.test(pw2)) {					
					$('#confirm_check').text("비밀번호가 일치하지 않습니다.");	
					document.getElementById("signUpRePwCheck").value = "0";
				} else {
					$("#confirm_check").text("비밀번호가 일치하지 않습니다.");
					document.getElementById("signUpRePwCheck").value = "0";
				} 							
			if (pw2 == ''){
				$('#confirm_check').text("비밀번호 확인을 입력하세요");
				document.getElementById("signUpRePwCheck").value = "0";
			}									
		});	
		
		$("#name").blur(function() {
			var namet = /^[가-힣]{2,6}$/;
			var name = $('#name').val();
			
			if (namet.test(name)) {
				$('#name_check').text("");
				document.getElementById("signUpNameCheck").value = "1";
			} else if(name == "") {
				$('#name_check').text("이름을 확인해주세요.");
				document.getElementById("signUpNameCheck").value = "0";
			} else {
				$('#name_check').text("[한글로 이루어진 2~6자리의 이름만 사용가능합니다.]");
				document.getElementById("signUpNameCheck").value = "0";
			}
		});
		
		$("#email").blur(function() {
			var emailt = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			var email = $('#email').val();
			
			$.ajax({
				url : root + '/member/check_email?email=' + email,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x :" + data);

					if (data === '1') {
						// 아이디가 중복되는 문구
						$("#email_check").text("사용중인 이메일 입니다.");
						document.getElementById("signUpEmailCheck").value = "0";
					} else {
						if (emailt.test(email)) {
							$("#email_check").text("");
							document.getElementById("signUpEmailCheck").value = "1";
						} else if (email === "") {
							$('#email_check').text('이메일을 입력해주세요.');
							document.getElementById("signUpEmailCheck").value = "0";
						} else {
							$('#email_check').text("알맞지 않은 형식입니다.");
							document.getElementById("signUpEmailCheck").value = "0";
						}
					}
				},
				error : function() {
					console.log("실패");
				}
			});
		});
		 
});