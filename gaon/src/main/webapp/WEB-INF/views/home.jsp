<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html>

<head>
<title>Gaon-Academy</title>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>
 
<body>
	<div class="error-pagewrap">
		<div class="error-page-int" id="loginbox">

			<div class="content-error">
				<div class="text-center custom-login">
					<h2>로그인</h2>
				</div>

			</div>
			<a class="btn btn-default btn-block" href="javascript:"
				style="height: 40px; width: 450px; margin: 0 auto"
				id="academyloginbtn">학원 로그인</a><br> <a
				class="btn btn-default btn-block" href="javascript:"
				style="height: 40px; width: 450px; margin: 0 auto"
				id="memberloginbtn">교사 / 학생  로그인</a><br>

			<div class="text-center login-footer">
			
				<p>
					등록을 안하셨나요? <a href="/gaon/account/register.action"> 지금 등록하세요!</a>
				</p>
			</div>
		</div>

	</div>



	<jsp:include page="/WEB-INF/views/include/js.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function() {

		// 로그인 종류 결정
		$("#academyloginbtn").on("click", function() {
			$("#loginbox").load("account/academyloginbox.action");
		});
		$("#memberloginbtn").on("click", function() {
			$("#loginbox").load("account/memberloginbox.action");
		});

		// 로그인
		$("#loginbox").on("click", "#memberlogin", function(e) {
			var data = $("#memberloginform").serialize();
			$.ajax({
				url : "account/memberlogin.action",
				method : "post",
				data : data,
				success : function(data, status, xhr) {
					if (data === "fail") {
						alert("id와 password를 확인해주세요");
					} else {
						location.href = data;
					}
				}
			});
		});
		$("#loginbox").on("click", "#academylogin", function(e) {
			var data = $("#academyloginform").serialize();
			$.ajax({
				url : "account/academylogin.action",
				method : "post",
				data : data,
				success : function(data, status, xhr) {
					if (data === "fail") {
						alert("id와 password를 확인해주세요");
					} else {
						location.href = data;
					}
				}
			});
		});

	})
</script>











</html>