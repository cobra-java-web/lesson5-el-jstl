<%@include file="/views/common/common.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="io.cobrafw.javaweb.dto.StudentScoreDto" %>
<%@ page import="io.cobrafw.javaweb.model.StudentScoreModel" %>
<%! StudentScoreModel studentScoreModel = new StudentScoreModel("com.microsoft.sqlserver.jdbc.SQLServerDriver", "jdbc:sqlserver://admin.hypertech.com.vn:1433;databaseName=dev_db;", "dev", "dev"); %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/views/common/head.jsp"%>
	<title>Lesson 05 - Java Standard Tab Library</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/views/common/header.jsp">
			<jsp:param name="current" value="jstl" />
		</jsp:include>

		<div class="content row">
			<div class="col-9 page-content">
				<h1 class="page-title">Java Standard Tab Library - Core</h1>
				<table class="table">
					<thead>
						<tr>
							<th>Id</th>
							<th>Account</th>
							<th>Full Name</th>
							<th>Quiz 1</th>
							<th>Quiz 2</th>
							<th>Quiz 3</th>
							<th>Average</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="studentScoreDtoList" value="<%=studentScoreModel.selectStudentScore()%>" scope="page"></c:set>
						<c:set var="decimalFormat" value="<%=new DecimalFormat(\"00.00\")%>" scope="page"></c:set>
						<c:forEach items="${studentScoreDtoList}" var="studentScoreDto" >
							<tr>
								<td>${studentScoreDto.id}</td>
								<td>${studentScoreDto.account}</td>
								<td>${studentScoreDto.fullName}</td>
								<td>
									${decimalFormat.format(studentScoreDto.quiz1)}
									<c:if test="${studentScoreDto.quiz1 >= 5}"><span class="badge badge-primary">Passed</span></c:if>
									<c:if test="${studentScoreDto.quiz1 < 5}"><span class="badge badge-default">Failed</span></c:if>
								</td>
								<td>
									${decimalFormat.format(studentScoreDto.quiz2)}
									<c:if test="${studentScoreDto.quiz2 >= 5}"><span class="badge badge-primary">Passed</span></c:if>
									<c:if test="${studentScoreDto.quiz2 < 5}"><span class="badge badge-default">Failed</span></c:if>
								</td>
								<td>
									${decimalFormat.format(studentScoreDto.quiz3)}
									<c:if test="${studentScoreDto.quiz3 >= 5}"><span class="badge badge-primary">Passed</span></c:if>
									<c:if test="${studentScoreDto.quiz3 < 5}"><span class="badge badge-default">Failed</span></c:if>
								</td>
								<td>
									${decimalFormat.format(studentScoreDto.average)}
									<c:choose>
										<c:when test="${ studentScoreDto.average >= 9}"><span class="badge badge-primary">Very Good</span></c:when>
										<c:when test="${ studentScoreDto.average >= 8}"><span class="badge badge-success">Good</span></c:when>
										<c:when test="${ studentScoreDto.average >= 7}"><span class="badge badge-info">Average Good</span></c:when>
										<c:when test="${ studentScoreDto.average >= 5}"><span class="badge badge-warning">Average</span></c:when>
										<c:otherwise><span class="badge badge-danger">Bellow Average</span></c:otherwise>
									</c:choose>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-3 page-sidebar">
				<jsp:include page="/views/common/sidebar.jsp">
					<jsp:param name="current" value="jstl" />
				</jsp:include>
			</div>
		</div>

		<jsp:include page="/views/common/footer.jsp">
			<jsp:param name="current" value="jstl" />
		</jsp:include>
	</div>
</body>
</html>