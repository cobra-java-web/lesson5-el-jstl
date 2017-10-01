<%@include file="/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/views/common/head.jsp"%>
	<title>Lesson 05 - Expression Language</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/views/common/header.jsp">
			<jsp:param name="current" value="el" />
		</jsp:include>

		<div class="content row">
			<div class="col-9 page-content">
				<h1 class="page-title">EL - Basic Expression</h1>
				
				<table class="table">
					<thead>
						<tr>
							<th>Concept</th>
							<th>Expression</th>
							<th>Value</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Plus</td>
							<td>${"${5+5}"}</td>
							<td>${5+5}</td>
						</tr>
						<tr>
							<td>Minus</td>
							<td>${"${7-5}"}</td>
							<td>${7-5}</td>
						</tr>
						<tr>
							<td>Multiple</td>
							<td>${"${5*5}"}</td>
							<td>${5*5}</td>
						</tr>
						<tr>
							<td>Divide</td>
							<td>${"${5/5}"}</td>
							<td>${5/5}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-3 page-sidebar">
				<jsp:include page="/views/common/sidebar.jsp">
					<jsp:param name="current" value="el" />
				</jsp:include>
			</div>
		</div>

		<jsp:include page="/views/common/footer.jsp">
			<jsp:param name="current" value="el" />
		</jsp:include>
	</div>
</body>
</html>