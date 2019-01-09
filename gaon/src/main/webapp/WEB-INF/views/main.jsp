<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/css.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
	<div class="all-content-wrapper" style="width: 100%">
		<br> <br> <br> <br> <br> <br> <br>
		<div class="analytics-sparkle-area">
            <div class="container-fluid">
                
                
                <c:if test="${login.userType=='master' }">
                  <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="analytics-sparkle-line table-mg-t-pro dk-res-t-pro-30">
                            <div class="analytics-content"> 
                                <h5>가입된 학원 수</h5>   
                                <h2><span class="counter">${academycount }</span> <span class="tuition-fees">개</span></h2>
                                <span class="text-inverse">${academycount }</span>
                                <div class="progress m-b-0">
                                    <div class="progress-bar progress-bar-inverse" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:100%;"> <span class="sr-only">230% Complete</span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="analytics-sparkle-line table-mg-t-pro dk-res-t-pro-30">
                            <div class="analytics-content"> 
                                <h5>승인을 기다리는 학원 수</h5>   
                                <h2><span class="counter">${authacademycount}</span> <span class="tuition-fees">개</span></h2>
                                <span class="text-inverse">${prop} %</span>
                                <div class="progress m-b-0">
                                    <div class="progress-bar progress-bar-inverse" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:${prop }%"> <span class="sr-only">230% Complete</span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    
                </c:if>
                
                
                <c:if test="${login.userType=='admin' }">
                  <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="analytics-sparkle-line table-mg-t-pro dk-res-t-pro-30">
                            <div class="analytics-content"> 
                                <h5>가입된 선생님수</h5>   
                                <h2><span class="counter">
											<c:set var="count" value="0"/>	
											<c:forEach var="list" items="${memberlist }">																					
												<c:if test="${list.userType=='teacher'or list.userType=='nothing'}">
													<c:set var="count" value="${count+1}"/>
												</c:if>											
											</c:forEach>

										${count}
									</span> <span class="tuition-fees">명</span></h2>
                                <span class="text-inverse">${count }</span>
                                <div class="progress m-b-0">
                                    <div class="progress-bar progress-bar-inverse" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:100%;"> <span class="sr-only">230% Complete</span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="analytics-sparkle-line table-mg-t-pro dk-res-t-pro-30">
                            <div class="analytics-content"> 
                                <h5>승인을 기다리는 선생님 수</h5>   
                                <h2><span class="counter">
											<c:set var="countauth" value="0"/>	
											<c:forEach var="list" items="${memberlist }">																					
												<c:if test="${list.userType=='nothing'}">
													<c:set var="countauth" value="${countauth+1}"/>
												</c:if>											
											</c:forEach>
										${countauth}
									</span> <span class="tuition-fees">명</span></h2>
                                <span class="text-inverse">${countauth}</span>
                                <div class="progress m-b-0">
                                    <div class="progress-bar progress-bar-inverse" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:100%"> <span class="sr-only">230% Complete</span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="analytics-sparkle-line table-mg-t-pro dk-res-t-pro-30">
                            <div class="analytics-content"> 
                                <h5>원생 수</h5>   
                                <h2><span class="counter">
											<c:set var="countstu" value="0"/>	
											<c:forEach var="list" items="${memberlist }">																					
												<c:if test="${list.userType=='student'}">
													<c:set var="countstu" value="${countstu+1}"/>
												</c:if>											
											</c:forEach>
										${countstu}
									</span> <span class="tuition-fees">명</span></h2>
                                <span class="text-inverse">${countstu}</span>
                                <div class="progress m-b-0">
                                    <div class="progress-bar progress-bar-inverse" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:100%"> <span class="sr-only">230% Complete</span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    </div>
                    
                </c:if>
                
                
                
                
                    
                </div>
            </div> 
        </div>
	<jsp:include page="/WEB-INF/views/include/js.jsp" />
</body>
</html>