<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="product-status mg-b-15">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="product-status-wrap">

					<div class="asset-inner">
						<table>
							<tbody style="text-align: center;">
								<tr>
									<th style="width: 80px; text-align: center;">No</th>
									<th style="width: 170px; text-align: center;">상담내용</th>
									<th style="width: 250px; text-align: center">제목</th>
									<th style="text-align: center; width: 320px">날짜</th>
								</tr>
						<c:choose>
						 <c:when test="${not empty studentConsultList}">
						 <c:forEach var="studentConsultList" varStatus="stat" items="${studentConsultList}">
									<tr>
										<td style="text-align: center;">${stat.count}</td>
										<td style="text-align: center;">${studentConsultList.consultDetail}</td>
										<td style="text-align: center;">
										<a class="viewConsultList" href="/gaon/consult/studentConsultDetail.action?consultNo=${studentConsultList.consultNo}&studentName=${studentName}">${studentConsultList.title}</a>
										</td>
										<td style="text-align: center;">${studentConsultList.consultDate}</td>

									</tr>
								</c:forEach>
						 </c:when>
						<c:otherwise>
						<tr>
							<td style="text-align: center" colspan="4">등록된 상담이 없습니다.</td>
						</tr>
						</c:otherwise>
						
						</c:choose>		
								
							</tbody>
						</table>