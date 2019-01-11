<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>
<body id="findcheckbox">
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
	<div class="all-content-wrapper">
		<br> <br> <br> <br> <br> <br> <br>
		<div id="sboard">
			<div class="contacts-area mg-b-15">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="product-status-wrap drp-lst" id="attendlist">
								<h4>강의 목록</h4>
								
								<a href="javascripts:" id="attend" >
									<button type="button" class="btn btn-custon-rounded-two btn-danger">
										출석체크
											</button>																		
								</a>
								
								<!-- 학생이없으면 추가  -->
								<c:if test='${login.userType=="admin"}'>
									<div class="add-product">
										<a href="/gaon/studnet/addstudent.action">학생 추가</a>
									</div>
								</c:if>


								<c:choose>
									<c:when test="${not empty student}">
										<table>
										
											<tr>
												<th>이름</th>
												<th>전화번호</th>
												<th>사진</th>
												<th>출석</th>
											</tr>
											
											<!-- 달력 -->
											<div>
												
												날짜 :<input id="attendDate" class="form-control"
													style="width: 300px; display: inline; margin-left: 10px;"
													type="date"> 
											</div>
											
											<c:forEach var="list"  items="${student}">
												<div class="asset-inner">

													<c:if test="${!list.deleted}">
														<tr>
														
															<td>${list.name}</td>
															<td>${list.phone}</td>
															
															<td><img style="text-align: center; width: 50px; height: 50px;"
																src="/gaon/resources/upload/${list.savedFileName}">
															</td>
															<td>	
														
														
																	
																		<input type="checkbox" class="checkbox"  data-studentNo="${list.memberNo }" >
																		출석																		
																	
																	<%-- <a href="javascripts:" id="absent" data-courseNo="${courseNo }" data-studentNo="${list.memberNo }"data-attend="0">
																		<button type="button" class="btn btn-custon-rounded-two btn-danger">
																		결석
																		</button>																		
																	</a> --%>
															
															<input type="hidden" name="courseNo" value="${courseNo }">
															<input type="hidden" name="memberNo" value="${list.memberNo}">
															
															</td>
															
														</tr>
													</c:if>
												</div>
											</c:forEach>
											

										</table>
									</c:when>
									<c:otherwise>
										<h1 style="text-align: center">맡으신 강의가 존재하지 않습니다.</h1>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
	$(function(){
		
		
		
		$('#nopaymembers').find('.membercheck').each(
				function() {
					if ($(this).is(':checked')) {
						memberArray.push($(this).attr(
								'data-memberno'));
					}
				});
		
		
		
		
		
		
		
		$("#attendlist").on("click","#attend",function(e){
			var memberArray = new Array();
			var courseNo= ${courseNo}
			var attendDate = $("#attendDate").val();
			
			$("#findcheckbox").find(".checkbox").each(
					function(e){
						if($(this).is(":checked")){
							memberArray.push($(this).attr("data-studentNo"));
						}
					})
			
			
			console.log(memberArray)
			
			$.ajax({
				url:"/gaon/attend/checkattend.action",
				data:{"courseNo":courseNo,"studentNoList":memberArray,"attendType":1,"attendDate":attendDate},
				type:"post",
				success:function(data,status,xhr){
					alert("출석했습니다.");
				}
			})
			
		});
	
		
		
		
	});
	</script>

	<jsp:include page="/WEB-INF/views/include/js.jsp" />
</body>
</html>