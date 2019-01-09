<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach var="list" items="${scommentsList}">
	<c:choose>
		<c:when test="${list.writerNo == login.memberNo}">
			<div class="single-pro-review-area mt-t-30 mg-b-15">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12"
							style="float: right; width: 50%">
							<div
								class="product-payment-inner-st res-mg-t-30 analysis-progrebar-ctn"style="background:#ebccd1">
								<div id="myTabContent" class="tab-content custom-product-edit">
									<div class="product-tab-list tab-pane fade active in"
										id="description">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"style="background:#ebccd1">
												<div class="review-content-section">
													<div class="chat-discussion" style="height: auto">
														<div class="chat-message">
		</c:when>
		<c:otherwise>
			<div class="single-pro-review-area mt-t-30 mg-b-15">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12"
							style="width: 50%">
							<div
								class="product-payment-inner-st res-mg-t-30 analysis-progrebar-ctn"style="background:#ebccd1">
								<div id="myTabContent" class="tab-content custom-product-edit">
									<div class="product-tab-list tab-pane fade active in"
										id="description">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"style="background:#ebccd1">
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
		<a class="message-author" href="#">${list.writer} </a> <span
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