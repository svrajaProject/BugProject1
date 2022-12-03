<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- Custom styling link -->
<link
	href="${pageContext.request.contextPath}/resources/css/customstyle1.css"
	rel="stylesheet">
<!-- Theme styling link -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>STUDENT REGISTRATION - 22</h1>
		</div>
		<div class="container">

			<div id="section">
				<img id="photo"
					src="https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY="
					alt="${student.photo}" /> <br />
				<div class="content">
					<table id="veiwDetailTable">
						<tr>
							<th>Student Register Number:</th>
							<td><input type="text" value="${student.studentRollNumber}"
								disabled="disabled" /></td>
						</tr>
						<tr>
							<th>Student Joined Date:</th>
							<td><input type="text" value="${student.joinedDate}"
								disabled="disabled" /></td>
						</tr>
						<tr>
							<th>Student Department Name:</th>
							<td><input type="text" value="${student.department}"
								disabled="disabled" /></td>
						</tr>
						<tr>
							<th>Student Fees paid status:</th>

							<td><input type="text" value="${student.feesPaidStatus}"
								disabled="disabled" /></td>

						</tr>
					</table>

				</div>
			</div>
			<a href="/StudentRegistrationPortal/student/show"
				class="btn btn-outline-secondary" role="button">Back</a>
		</div>
	</div>
</body>
</html>