<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">

function goBack(){
	window.history.back();
}
	
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
	<jsp:include page="/WEB-INF/views/include/js.jsp" />
	<div class="all-content-wrapper">
		<br> <br> <br> <br> <br>
		<h3>&nbsp;&nbsp;&nbsp;상담내용</h3>
		<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
			<div
				class="product-payment-inner-st res-mg-t-30 analysis-progrebar-ctn">
				<div id="myTabContent" class="tab-content custom-product-edit">

					<div class="product-tab-list tab-pane fade active in" id="reviews">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="review-content-section">
									<div class="row">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
											<div class="address-hr biography">
												<p>
													<b>이름</b><br> ${studentName }
												</p>
											</div>
										</div>
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
											<div class="address-hr biography">
												<p>
													<b>날짜</b><br> ${consultDetail.consultDate }
												</p>
											</div>
										</div>
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
											<div class="address-hr biography">
												<p>
													<b>상담내용</b><br> ${consultDetail.consultDetail }
												</p>
											</div>
										</div>

										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
											<div class="address-hr biography">
												<p>
													<b></b><br>
												</p>
											</div>
										</div>
									</div>

									<hr>
									<div class="address-hr biography" style="float: left">
										<p>
											<b>상담제목</b>&nbsp;&nbsp;&nbsp; ${consultDetail.title }
										</p>
									</div>
									<div class="row">
										<div class="col-lg-12">
											<div class="content-profile">
												<pre>${consultDetail.content }</pre>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="payment-adress">
								<input id="submit" type="button"
									class="btn btn-primary waves-effect waves-light" onclick="goBack();" value="뒤로가기"></input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>