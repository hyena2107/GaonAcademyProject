<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h4>강의 목록</h4>
<div class="add-product">
	<a href="addcourse.action">강의 추가</a>

</div>
<c:choose>
									<c:when test="${not empty courseList}">
										<table>
											<tr>
												<th> 번호 </th>
												<th>강의명</th>
												<th>담당 선생님</th>
												<th>강의 내용</th>
												<th>학생 추가</th>

											</tr>
											<c:forEach var="list" varStatus="count" items="${courseList}">
												<div class="asset-inner">

													<c:if test="${!list.deleted}">
														<tr>
															<td>${count.count}</td>
															<td>${list.courseName}</td>
															<td>${list.teacherName }</td>
										
															<td>${list.content }</td>
															<td>
																<c:if test='${login.userType=="admin"}'>
																	<a href="javascripts:" id="deletecourse" data-courseNo="${list.courseNo}">
																		<button type="button" class="btn btn-custon-rounded-two btn-danger">
																		삭제
																		</button>																		
																	</a>
																</c:if> 
																
																<c:if test='${login.userType=="teacher"}'>
																 
																	<a href="getstudentlist.action?courseNo=${list.courseNo}&academyNo=${login.academyNo}">
																	<button type="button" class="btn btn-custon-rounded-two btn-success"
																	id="deleteteacher" data-memberNo="${list.memberNo}" data-academyNo="${list.academyNo }">
																	학생 추가</button>
																		
																		</a>
																</c:if>
															</td>
														</tr>
													</c:if>											
											</c:forEach>
										</table>
									</c:when>
									<c:otherwise>
										<h1 style="text-align: center">등록된 강의가 존재하지 않습니다.</h1>
									</c:otherwise>
								</c:choose>
