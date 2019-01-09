<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	
	
	
	<button type="button" class="btn btn-custon-rounded-two btn-primary" id="enroll"style="float:right;margin-right:30px" >
		
		등록된 학생보기
	</button>
	

	<br> <br><br> <br> 
	<div class="asset-inner">
		<c:choose>
			<c:when test="${not empty studentList}">
				<table>
					<tr>
						<th>번호</th>
						<th>학생 이름</th>
						<th>전화번호</th>
						<th>E-mail</th>
						<th>등록 여부</th>
					</tr>
					<c:forEach var="list" varStatus="count" items="${studentList}">
						<c:if test="${!list.deleted}">
							<tr id="tr${list.memberNo}">
								<td>${count.count}</td>
								<td>${list.name}</td>
								<td>${list.phone }</td>
								<td>${list.email }</td>
								<td> 
								<button type="button" id="startcheckbox" class="btn btn-custon-rounded-two btn-success" data-studentNo="${list.memberNo }" data-courseNo="${courseNo}">
									<i class="fa fa-check edu-checked-pro" aria-hidden="true" ></i> 학생 추가
								</button>
								</td>
							</tr>
						</c:if>
					</c:forEach>

				</table>
			</c:when>
			<c:otherwise>
				<h1 style="text-align: center">등록된 학생이 존재하지 않습니다.</h1>
			</c:otherwise>
		</c:choose>
	</div>