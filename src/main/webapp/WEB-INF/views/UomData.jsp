<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UOM DATA</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">

		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<H3>WELCOME TO UOM DATA PAGE</H3>

			</div>
			<div class="card-body">
				<a href="excel"><img src="../resources/images/ExcelDownload.png"
					width="100" height="40" /></a> <a href="pdf"><img
					src="../resources/images/PdfDownload.png" class="rounded float-right" width="100" height="40" /></a>
				<c:choose>
					<c:when test="${!empty list }">
						<table class="table table-hover">
							<tr class="bg-success text-white text-center">
								<th>ID</th>
								<th>TYPE</th>
								<th>MODEL</th>
								<th >NOTE</th>
								<th colspan="3">OPERATIONS</th>
							</tr>
							<!-- for(ShipmentType ob:list){} -->
							<c:forEach items="${list}" var="ob">
								<tr class="text-center">
									<td>${ob.uomId}</td>
									<td>${ob.uomType}</td>
									<td>${ob.uomModel}</td>
									<td>${ob.uomDesc}</td>
									<td><a href="delete?uid=${ob.uomId}"
										class="btn btn-danger"> <!-- <img src="../resources/images/DELETE.jpg" width="20" height="20" /> -->
											DELETE
									</a></td>
									<td><a href="edit?uid=${ob.uomId}" class="btn btn-info">
											<!-- <img	src="../resources/images/edit.png" width="20" height="20" /> -->
											EDIT
									</a></td>
									<td><a href="view?uid=${ob.uomId}"
										class="btn btn-warning"> <!-- <img src="../resources/images/view.png" width="20" height="20" /> -->
											VIEW

									</a></td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:otherwise>
						<H4>NO DATA FOUND!!</H4>
					</c:otherwise>
				</c:choose>
			</div>

			<c:if test="${!empty message }">
				<c:choose>
					<c:when test="${opr eq 'DEL'}">
						<div class="card-footer bg-danger text-white text-center">
							<b>${message }</b>
						</div>
					</c:when>
					<c:otherwise>
						<div class="card-footer bg-info text-white text-center">
							<b>${message }</b>
						</div>

					</c:otherwise>
				</c:choose>
			</c:if>


		</div>
		<!-- card end -->


	</div>
	<!-- container end -->
</body>
</html>