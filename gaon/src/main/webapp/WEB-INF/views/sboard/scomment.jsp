<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Gaon-Academy</title>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>
<body style="background:#ebccd1">
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">

	$(function(){
		
			$('#comments').scrollTop(10000);
		
		//댓글작성
		$("#writecomment").on("click",function(e){
			var data = $("#scommentsform").serialize();
			$.ajax({
				url:"writecomment.action",
				data:data,
				method:"post",
				success:function(data,status,xhr){
					$("#comment").val("");
					$("#comments").load(
							"getscommentslist.action",
							{"sboardNo":${sboardNo}},
							function(){
								$('#comments').scrollTop(10000);
							}
							);
				}
			})
		})
		
	});
	
</script>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />

	<div class="all-content-wrapper">
		<br> <br> <br> <br>


				<div id="comments" style="background:#ebccd1;overflow-y: scroll;height:700px">
					<c:forEach var="list" items="${scommentsList}">
						<c:choose>
							<c:when test="${list.writerNo == login.memberNo}">
								<div class="single-pro-review-area mt-t-30 mg-b-15"style="background:#ebccd1">
									<div class="container-fluid">
										<div class="row">
											<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12"
												style="float: right;width:50%" >
												<div
													class="product-payment-inner-st res-mg-t-30 analysis-progrebar-ctn" style="background:#ebccd1">
													<div id="myTabContent"
														class="tab-content custom-product-edit">
														<div class="product-tab-list tab-pane fade active in"
															id="description">
															<div class="row">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background:#ebccd1">
																	<div class="review-content-section">
																		<div class="chat-discussion" style="height: auto">
																			<div class="chat-message">
																				
							</c:when>
							<c:otherwise>
								<div class="single-pro-review-area mt-t-30 mg-b-15">
									<div class="container-fluid">
										<div class="row">
											<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12"style="width:50%">
												<div
													class="product-payment-inner-st res-mg-t-30 analysis-progrebar-ctn" style="background:#ebccd1">
													<div id="myTabContent"
														class="tab-content custom-product-edit">
														<div class="product-tab-list tab-pane fade active in"
															id="description">
															<div class="row">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background:#ebccd1">
																	<div class="review-content-section">
																		<div class="chat-discussion" style="height: auto">
																			<div class="chat-message">
																				<div class="profile-hdtc">
																					<img class="message-avatar"
																						src="/gaon/resources/upload/${list.savedFileName}">
																					</div>
								</c:otherwise>
							</c:choose>
							<div class="message">
								<a class="message-author" href="#">${list.writer}  </a> <span
									class="message-date"> ${list.regDate } </span> <span
									class="message-content">${list.scomments } </span>
								
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
			
			</c:forEach>
			</div>

		
		<div class="breadcome-area" >
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="breadcome-list">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="breadcome-heading">
										<form id="scommentsform">
											<input type="hidden" name="sboardNo" value="${sboardNo}">											
											<input type="hidden" name="writerNo" value="${login.memberNo}">
											<c:choose>
												<c:when test="${login.userType=='teacher' }">											
											    	<input type="hidden" name="receiverNo" value="${vo.studentNo}">
											    	<input type="hidden" name="receiver" value="${vo.studentName} }">
											    </c:when>
											    
											    <c:otherwise>
											    	<input type="hidden" name="receiverNo" value="${vo.teacherNo}">
											    	<input type="hidden" name="receiver" value="${vo.teacherName}">
											    </c:otherwise>
										    </c:choose>
										    <input type="hidden" name="savedFileName" value="${login.savedFileName}">
										    <input
												id="comment"
												name="scomments" type="text"
												placeholder="message.............."
												class="search-int form-control">
										</form>
									</div>
								</div>
								<a href="javascripts:" id="writecomment"><button
										class="btn btn-primary" style="float: right">보내기</button></a>
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