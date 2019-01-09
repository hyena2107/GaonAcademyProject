<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h4>선생님 목록</h4>
<form id="endDateform">   

	<div class="asset-inner">
		<c:choose>
			<c:when test="${not empty memberList}">
				<table>
					<tr>
						<th>번호</th>
						<th>선생님 이름</th>
						<th>전화번호</th>
						<th>E-mail</th>
						<th>관리</th>
					</tr>
					<c:forEach var="list" varStatus="count" items="${memberList}">
						<c:if test="${!list.deleted and list.userType=='teacher' or list.userType=='nothing' }">
							<tr id="tr${list.memberNo}">
								<td>${count.count}</td>
								<td><a href="teacherdetail.action?memberNo=${list.memberNo}">${list.name}</a></td>
								<td>${list.phone }</td>
								<td>${list.email }</td>
								<td>
								<c:choose>
								<c:when test="${!list.deleted and list.userType=='nothing' }">
								<button type="button" class="btn btn-custon-rounded-two btn-primary"
									id="addteacher"  data-memberNo="${list.memberNo}" data-academyNo="${list.academyNo }">									
									승인
								</button>
								</c:when>
								<c:when test="${!list.deleted and list.userType=='teacher' }"> 
								<button type="button" class="btn btn-custon-rounded-two btn-danger"
									id="deleteteacher" data-memberNo="${list.memberNo}" data-academyNo="${list.academyNo }">									
									삭제
								</button>
								</c:when>
							
								</c:choose>
								</td>
								
								</tr>
								</c:if>				
					</c:forEach>

				</table>
			</c:when>
			<c:otherwise>
			<c:if test="${login.userType=='master' }">
				<table>
					<tr>
						<th>번호</th>
						<th>학원 이름</th>
						<th>전화번호</th>
						<th>E-mail</th>
						<th>관리</th>
					</tr>
					<c:forEach var="list" varStatus="count" items="${academyList}">						
							<c:if test="${list.userType=='nothing'}">
							<tr id="tr${list.academyNo}">
								<td>${count.count}</td>
								<td>${list.academyName}</td>
								<td>${list.phone }</td>
								<td>${list.email }</td>
								<td>
								
								<button type="button" class="btn btn-custon-rounded-two btn-primary"
									id="addacademy"  data-memberNo="${list.memberNo}" data-academyNo="${list.academyNo }">									
									승인
								</button>
								
								</td>
								
								</tr>
								</c:if>
											
					</c:forEach>

				</table>
				</c:if>
			</c:otherwise>
		</c:choose>
	</div>
</form>