<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Student-portal</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>STUDENT REGISTRATION - 22</h1>
		</div>
		<div class="container">
			<form action="/StudentRegistrationPortal/student/save" method="post">
				<input type="hidden" class="form-control" id="id" name="id"
					value="${student.id}">

				<div class="form-group">
					
					<label for="studentrollno" class="label">Student RollNumber:</label> <input
						type="text" class="form-control" id="studentrollno"
						placeholder="Enter registration number" name="studentRollNumber"
						value="${student.studentRollNumber}" required>
				</div>
				<div class="form-group">
					<label for="name" class="label">Name:</label> <input type="text"
						class="form-control" id="name" placeholder="Enter name"
						name="name" value="${student.name}" required>
				</div>
				<!-- <div class="form-group">
					<label for="dpt">Department:</label> <input type="text"
						class="form-control" id="dpt" placeholder="Enter department"
						name="department" value="${student.department}">
				</div>-->
				<div class="form-group">
					<label for="country" class="label">Country:</label> <input type="text"
						class="form-control" id="country" name="country"
						placeholder="Enter country" name="country"
						value="${student.country}" required>
				</div>
				<div class="form-group">
					<label for="dpt" class="label">Department:</label> <select class="custom-select"
						id="dpt" name="department" required>
						<option value="">Please select Department</option>
						<option value="CSE" ${student.department=='CSE' ? 'selected':''}>Computer
							Science and Engineering</option>
						<option value="IT" ${student.department=='IT' ? 'selected':''}>Information
							Technology</option>
						<option value="BM" ${student.department=='BM' ? 'selected':''}>Biomedical</option>
					</select>
				</div>
				<div class="form-group">
					<label class="label">Fees Paid status: </label>
					<div class="custom-control custom-radio custom-control-inline">

						<input type="radio" id="yes" name="feesPaidStatus" value="Paid"
							class="custom-control-input"
							${student.feesPaidStatus=='Paid' ? 'checked' : ''} required> <label for="yes"
							class="custom-control-label">Paid </label>

							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="no" name="feesPaidStatus"
									value="Not Yet Paid" class="custom-control-input"
									${student.feesPaidStatus=='Not Yet Paid' ? 'checked':''}>
								<label for="no" class="custom-control-label">Not Yet
									Paid</label>
							</div>
					</div>
					<div class="form-group">
						<label for="jdate" class="label">Joined Date: </label> 
						<input type="date"
							class="form-control" id="jdate" name="joinedDate"
							name="joinedDate" value="${student.joinedDate}" required>
					</div>
					<div class="form-group">
					<label for="fileuploading">Upload your photo:</label>
						<div class="custom-file" class="label">
							<input type="file" class="custom-file-input" id="studimg"
								name="photo" required > <label class="custom-file-label"
								for="studimg">Choose file</label>
							<p>${student.photo}<p>
						</div>
					</div>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
					<a href="/StudentRegistrationPortal/student/show"
						class="btn btn-outline-secondary" role="button">Back</a>
			</form>
		</div>
	</div>
</body>
</html>