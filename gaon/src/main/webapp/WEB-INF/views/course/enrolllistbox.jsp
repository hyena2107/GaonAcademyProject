<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<button type="button" class="btn btn-custon-rounded-two btn-primary"
		id="addstudent" style="float: right; margin-right: 30px">
		
		미등록 학생보기
	</button>
	<br> <br>
	<br> <br>
	<div class="asset-inner">
		<c:choose>
			<c:when test="${not empty enroll}">
				<table>
					<tr>
						<th>번호</th>
						<th>학생 이름</th>
						<th>전화번호</th>
						<th>E-mail</th>
						<th>수강 종료</th>
					</tr>
					<c:forEach var="enroll" varStatus="count" items="${enroll}">
						<c:if test="${!enroll.deleted}">
							<tr id="tr${enroll.memberNo}">
								<td>${count.count}</td>
								<td>${enroll.name}</td>
								<td>${enroll.phone }</td>
								<td>${enroll.email }</td>
								<td>
								<button type="button" class="btn btn-custon-rounded-two btn-danger"
									id="endcheckbox" data-studentNo="${enroll.memberNo }" data-courseNo="${courseNo}">	
								<i class="fa fa-check edu-checked-pro" aria-hidden="true"></i>								
									수강 종료
								</button>
								</td>
							</tr>
						</c:if>
						<input type="hidden" name="studentNo" value="${enroll.memberNo}">
						<input type="hidden" name="courseNo" value="${courseNo}">
					</c:forEach>

				</table>
			</c:when>
			<c:otherwise>
				<h1 style="text-align: center">등록된 학생이 존재하지 않습니다.</h1>
			</c:otherwise>
		</c:choose>
	</div>