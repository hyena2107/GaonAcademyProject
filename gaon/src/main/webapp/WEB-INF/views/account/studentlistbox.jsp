<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h4>학생 목록</h4>
<form id="startDateform">
	<input name="startDate" class="form-control" id="startDates"
		style="width: 300px; margin: 0 auto;" type="date">
	
	<button type="button" id="startsubmit" class="btn btn-custon-rounded-two btn-success"style="float:right">
		<i class="fa fa-check edu-checked-pro" aria-hidden="true"></i> 학생 추가하기
	</button>
	<button type="button" class="btn btn-custon-rounded-two btn-primary" id="enroll"style="float:right;margin-right:30px" >
		<i class="fa fa-info-circle edu-informatio" aria-hidden="true"></i>
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
								<td><input class="i-checks" id="enrollcheckbox" type="checkbox" data-studentNo="${list.memberNo}"></td>
							</tr>
						</c:if>
						<input type="hidden" name="memberNo" value="${list.memberNo}">
						<input type="hidden" name="courseNo" value="${courseNo}">
					</c:forEach>

				</table>
			</c:when>
			<c:otherwise>
				<h1 style="text-align: center">등록된 학생이 존재하지 않습니다.</h1>
			</c:otherwise>
		</c:choose>
	</div>
</form>