<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	
	<script>
		//메일 보내고 alert 띄워주는 script
		if ("${message}" != "") {
			alert("${message}");
		}
		


		
	$(function() {
		//문의 종류 option 값  script
		$("#subject option:selected").val();
		
		//개인정보 처리방침 열기 닫기, 밑에 텍스트 보이기 안보이기
		$("#showInfo").on('click', function() {
			if($("#infoCheck").css('display') == 'none'){
				$("#infoCheck").css('display','block');
				$(this).text('개인정보 처리방침 (닫기)');
			}else{
				$(this).text('개인정보 처리방침 (보기)');
				$("#infoCheck").css('display','none');
			}
		})
	})
	
	
	//유효성 검사를 위해 메일과 핸드폰 번호 변수 저장
	var fromMail = $('#fromMail');
	var fromPhone = $('#fromPhone');
	// 정규식 - 이메일 유효성 검사
	var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	// 정규식 -전화번호 유효성 검사
	var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{6,7})$/;
	
	
	$(function(){ 
	    $("input#fromPhone").blur(function(){
	    	console.log("됨");
	    	var num = $("#fromPhone").val();
	    	blur(num)
	    });
	});


	function blur(num) {
		num = num.replace(/\-/g,'');
		$("#fromPhone").val(num);
	}

	
	
	//문의 넣기 막아주기
	$("#sendSubmit").on('click',function(){
		var str = $('#content').val();
		
		//회사명은 없을 수 있는 것 같아서 막지 않음
		
		//문의 분류 선택 안함
		if($("#subject").val() == null){
			alert("문의 분류를 선택해 주세요.");
			$("subject").focus();
			return false;
		}
		
		//담당자 이름 막아주기
		if($("#fromName").val() ==""){
			alert("담당자분의 성함을 입력해 주세요.");
			$("fromName").focus();
			return false;
		}
		
		//핸드폰 번호 막아주기
		if($("#fromPhone").val() ==""){
			alert("핸드폰 번호를 입력해 주세요.");
			$("fromPhone").focus();
			return false;
		}
		if(!regPhone.test(fromPhone.val())) {
			alert('번호가 유효하지 않습니다');
			$("fromPhone").focus();
			return false;
		}
		
		//이메일 막아주기
		if($("#fromMail").val() ==""){
			alert("담당자분의 이메일을 입력해 주세요.");
			$("fromMail").focus();
			return false;
		}
		
		if(!regEmail.test(fromMail.val())) {
			alert('이메일 주소가 유효하지 않습니다');
			$("fromMail").focus();
			return false;
		}
		
		//문의 내용 없으면 막아주기
		if($("#content").val() ==""){
			alert("문의내용이 없습니다.");
			$("content").focus();
			return false;
		}
		
		//개인정보 처리방침 미체크 막아주기
		if($("#myCheck").is(":checked") == false){
			alert("개인정보 처리방침을 동의해 주세요.");
			$("fromMail").focus();
			return false;
		}
		
 		//리캡챠 v2 막아주기
		//리캡챠 변수 저장
		var v = grecaptcha.getResponse();
		if(v.length == 0){
			alert('로봇방지 체크를 동의해 주세요.');
			return false;
		}
		
	})
		
	$("#fortest").click(function(){
		console.log($("#subject").val());
	})
	</script>    
	<script src="https://www.google.com/recaptcha/api.js" async defer>
