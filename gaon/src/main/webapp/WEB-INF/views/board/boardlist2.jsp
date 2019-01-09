<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function() {
		
		$("#boardwrite").on("click",function(e){
			var boardno = ${list.boardno};
			var memberno = $(this).attr("data-memberno");
						
			$.ajax({
				url : "boardwrite.action",
				data : {"boardno": boardno, "memberno" : memberno},
				success : function(data, status, xhr) {
					alert("건의사항을 입력하세요!");
				},
				error : function(xhr, status, err) {
					alert("Failed!  다시 입력해 주세요.");
				} 
				
			});
						
		});
	});
</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/js.jsp" />
<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />



<div class="all-content-wrapper">
		<br> <br> <br> <br> <br> <br> <br>
		<div id="sboard">
			<div class="contacts-area mg-b-15">
				<div class="container-fluid">
					<div class="row">
						<c:choose>
							<c:when test="${not empty boardList}">
								<c:forEach var="list" items="${boardList}">
									<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
										<div class="student-inner-std res-mg-b-30">
											
								    	</div>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>					
							<div class="comming-soon" style="align:center">		
									<h1 style="text-align: center">서비스 준비중입니다!</h1>
									<br><br><br>													
									<img src="/gaon/resources/upload/comingsoon.jpg" alt="" width="500px" height="300px" 
									style="margin-left: auto; margin-right: auto; display: block;"/>
								</div>		
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>







        <!-- Static Table Start -->
        <div class="data-table-area mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sparkline13-list">
                            <div class="sparkline13-hd">
                                <div class="main-sparkline13-hd">
                                    <h1>건의사항</h1>
                                </div>
                            </div>
                            <div class="sparkline13-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright">
                                    <div id="board">
                                        <select class="form-control dt-tb">											
											<option value="all">원장님께 건의</option>
											<option value="selected">선생님께 건의</option>
										</select>
                                    </div>
                                    
                                    <a href="javascripts:" data-memberno="${list.memberno}" id="boardwrite">												
													<img src="/gaon/resources/upload/defaults.png" alt="" />												
											</a>
                                    
                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" 
                                                      data-show-columns="true" data-show-pagination-switch="true" 
                                                      data-show-refresh="true" data-key-events="true" data-show-toggle="true" 
                                                      data-resizable="true" data-cookie="true"
                                                      data-cookie-id-table="saveId" data-show-export="true" 
                                                      data-click-to-select="true" data-toolbar="#toolbar">
                                        <thead>                                        
                                            <tr>
                                                <th data-field="state" data-checkbox="true"></th>
                                                <th data-field="boardno">번호</th>
                                                <th data-field="title" data-editable="true">제목</th>
                                                <th data-field="regdate" data-editable="true">작성일</th>
                                                <th data-field="writer" data-editable="true">작성자</th>
                                                <th data-field="content" data-editable="true">내용</th>
                                                <th data-field="memberno" data-editable="true">회원번호</th>                                                
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                        <c:forEach var = "list" items = "${list}">
                                            <tr>
                                                <td></td>
                                                <td>${list.boardno_seq.nextval}</td>
                                                <td>${list.title}</td>
                                                <td>${list.regdate}</td>
                                                <td>${list.writer}</td>                                                
                                                <td>${list.memberno}</td>                                                
                                            </tr>
                                           </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Static Table End -->

</body>
</html>