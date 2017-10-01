<%@ include file="/views/common/common.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="com.microsoft.sqlserver.jdbc.SQLServerDriver" %>
<sql:setDataSource	var="connection"
					driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
					url="jdbc:sqlserver://admin.hypertech.com.vn:1433;databaseName=dev_db;"
					user="dev" password="dev"></sql:setDataSource>
<sql:query dataSource="connection" var="resultSet">SELECT * FROM STUDENTSCORE</sql:query>
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
				<h1 class="page-title">Java Standard Tab Library - SQL</h1>
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
						<c:set var="decimalFormat" value="<%=new DecimalFormat(\"00.00\")%>" scope="page"></c:set>
						<c:forEach items="${rs.rows}" var="row" >
							<tr>
								<td>${row.id}</td>
								<td>${row.account}</td>
								<td>${row.fullName}</td>
								<td>
									${decimalFormat.format(row.quiz1)}
									<c:if test="${row.quiz1 >= 5}"><span class="badge badge-primary">Passed</span></c:if>
									<c:if test="${row.quiz1 < 5}"><span class="badge badge-default">Failed</span></c:if>
								</td>
								<td>
									${decimalFormat.format(row.quiz2)}
									<c:if test="${row.quiz2 >= 5}"><span class="badge badge-primary">Passed</span></c:if>
									<c:if test="${row.quiz2 < 5}"><span class="badge badge-default">Failed</span></c:if>
								</td>
								<td>
									${decimalFormat.format(row.quiz3)}
									<c:if test="${row.quiz3 >= 5}"><span class="badge badge-primary">Passed</span></c:if>
									<c:if test="${row.quiz3 < 5}"><span class="badge badge-default">Failed</span></c:if>
								</td>
								<td>
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