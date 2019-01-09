<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />

	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		$(function() {

			$("#submit").on("click", function(e) {
				var name = $("#name").val()
				var phone = $("#phone").val()
				$("#id").val(name + phone);

				var data = $("#form").serialize();

				$.ajax({
					url : "studentregister.action",
					method : "post",
					data : data,
					success : function(data, status, xhr) {
						location.href = "/gaon/main.action";
					}

				})

			})

		});
	</script>

	<div class="all-content-wrapper">
		<br> <br> <br> <br> <br> <br> <br>
		<div class="single-pro-review-area mt-t-30 mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-payment-inner-st">
							<div class="product-payment-inner-st">
								<ul id="myTabedu1" class="tab-review-design">
									<li class="active"><a href="#description">학생 등록</a></li>
								</ul>

								<div id="myTabContent" class="tab-content custom-product-edit">
									<div class="product-tab-list tab-pane fade active in"
										id="description">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="review-content-section">
													<div id="dropzone1" class="pro-ad">
														<form id="form">
															<div class="row">
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																	<div class="form-group">
																		<h4>이름</h4>
																		<input name="name" id="name" type="text"
																			class="form-control" placeholder="  '이름'을 입력해주세요">
																	</div>
																	<div class="form-group">
																		<input name="id" id="id" type="hidden"
																			class="form-control" placeholder="  'ID'를 입력해주세요">
																	</div>
																	<h4>E-mail</h4>
																	<div class="form-group">
																		<input name="email" type="text" class="form-control"
																			placeholder="  'E-mail'을 입력해주세요">
																	</div>
																	<h4>휴대전화</h4>
																	<div class="form-group">
																		<input name="phone" id="phone" type="text"
																			class="form-control" placeholder="  '전화번호'를 입력해주세요">
																	</div>
																	<h4>등록일</h4>
																	<div class="form-group">
																		<input name="regDate" type="date" class="form-control"
																			placeholder="  '등록일'을 입력해주세요">
																	</div>
																	
																	<div id="dropzone">
																	<!-- dropzone CSS============================================ -->
																	<link rel="stylesheet" href="css/dropzone/dropzone.css">
																	</div>
																	
																	<div class="form-group">
																		<input name="academyNo" type="hidden"
																			value="${login.academyNo}">
																	</div>

																	<div class="form-group">
																		<input name="password" type="hidden" value="123">
																	</div>

																	<div class="form-group">
																		<input name="userType" type="hidden" value="student">
																	</div>


																</div>

															</div>
															<div class="row">
																<div class="col-lg-12">
																	<div class="payment-adress">
																		<button id="submit"
																			class="btn btn-primary waves-effect waves-light">Submit</button>
																	</div>
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="product-tab-list tab-pane fade" id="reviews">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="review-content-section">
													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
															<div class="devit-card-custom">
																<div class="form-group">
																	<input type="text" class="form-control"
																		placeholder="Email">
																</div>
																<div class="form-group">
																	<input type="number" class="form-control"
																		placeholder="Phone">
																</div>
																<div class="form-group">
																	<input type="password" class="form-control"
																		placeholder="Password">
																</div>
																<div class="form-group">
																	<input type="password" class="form-control"
																		placeholder="Confirm Password">
																</div>
																<a href="#!"
																	class="btn btn-primary waves-effect waves-light">Submit</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="product-tab-list tab-pane fade" id="INFORMATION">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="review-content-section">
													<div class="row">
														<div class="col-lg-12">
															<div class="devit-card-custom">
																<div class="form-group">
																	<input type="url" class="form-control"
																		placeholder="Facebook URL">
																</div>
																<div class="form-group">
																	<input type="url" class="form-control"
																		placeholder="Twitter URL">
																</div>
																<div class="form-group">
																	<input type="url" class="form-control"
																		placeholder="Google Plus">
																</div>
																<div class="form-group">
																	<input type="url" class="form-control"
																		placeholder="Linkedin URL">
																</div>
																<button type="submit"
																	class="btn btn-primary waves-effect waves-light">Submit</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
		<jsp:include page="/WEB-INF/views/include/js.jsp" />
</body>
</html>