
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>프로필 수정</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>

<body>
	<div class="text-center custom-login" style="margin-top: 100px">
		<h1>프로필 수정</h1>
	</div>
	<br>
	<div style="text-align: center">
		<img src="/gaon/resources/upload/${login.savedFileName}" style="width:10%; height:10%;border-radius: 200px;"
			class="img-circle" alt="Cinque Terre">
	</div>
	<div class="error-pagewrap">
		<div class="error-page-int">
			<div class="content-error">
				<div class="hpanel">
					<div class="panel-body">
						<form action="updateprofile.action" method="post" enctype="multipart/form-data">
							<div class="row">
								<input type="hidden" name="memberNo" value="${login.memberNo}">
								<div class="form-group col-lg-12">
									<label>이름</label> <input class="form-control" name="name"
										value="${login.name}">
								</div>
								<div class="form-group col-lg-12">
									<label>ID</label> <input class="form-control" name="id"
										value="${login.id}" readonly>
								</div>

								<div class="form-group col-lg-12">
									<label>전화번호</label> <input value="${login.phone}"
										class="form-control" name="phone">
								</div>

								<div class="form-group col-lg-12">
									<label>E-mail</label> <input value="${login.email}"
										class="form-control" name="email">
								</div>
								<div class="form-group col-lg-12">
									<label>프로필 사진</label> <input value="${login.savedFileName}"
										type="file" class="form-control" name="filename">
								</div>

							</div>
							<div class="text-center">
								<input type="submit" value="Update"
									class="btn btn-default btn-block">
									<input class="btn btn-default btn-block" type="button" value="Cancel" id="cancel">
									<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
									<script type="text/javascript">
										$(function(){
											$("#cancel").on("click",function(e){
												location.href="/gaon/main.action"
											})
										});
									</script>
							</div>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="/WEB-INF/views/include/js.jsp" />
</body>




























</html>