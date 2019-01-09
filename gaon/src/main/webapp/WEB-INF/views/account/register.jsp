
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>회원가입</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>

<body>
	<div class="error-pagewrap">
		<div class="error-page-int" id="registerbox">
			<div class="text-center custom-login">
				<h1>회원가입</h1>
			</div>
			<br> <a class="btn btn-default btn-block" href="javascript:"
				style="height: 40px; width: 450px; margin: 0 auto"
				id="academyregisterbtn">학원 회원가입</a><br> <a
				class="btn btn-default btn-block" href="javascript:"
				style="height: 40px; width: 450px; margin: 0 auto"
				id="memberregisterbtn">교사 회원가입</a><br>

		</div>
	</div>
	<jsp:include page="/WEB-INF/views/include/js.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function() {

		// 회원가입 종류 고르기
		$("#registerbox").on("click","#academyregisterbtn", function() {
			$("#registerbox").load("academybox.action");
		});
		$("#registerbox").on("click","#memberregisterbtn", function() {
			$("#registerbox").load("memberbox.action");
		});

		// 회원가입 
		$("#registerbox").on("click", "#memberregister", function(e) {
			var data = $("#memberform").serialize();

			$.ajax({
				url : "memberregister.action",
				method : "post",
				data : data,
				success : function(data, status, xhr) {
					location.href = data;
				},
				error : function(xhr, status, err) {
					alert("학원명을 확인하세요")
				}

			});
		});
		$("#registerbox").on("click", "#academyregister", function(e) {
			var data = $("#academyform").serialize();
			$.ajax({
				url : "academyregister.action",
				method : "post",
				data : data,
				success : function(data, status, xhr) {
					location.href = data;
				},
				error : function(xhr, status, err) {
					alert("학원명을 확인하세요")
				}

			});
		});	
		

	});
</script>



























</html>