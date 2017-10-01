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
				<h1 class="page-title">Expression Language</h1>
				<p>
					Expression language samples:
				</p>
				<ul>
					<li><a href="<c:url value="/views/el/basicExpression.jsp" />">EL - Basic Expression</a></li>
					<li><a href="<c:url value="/views/el/calculatorSample.jsp" />">EL - Calculator Sample</a></li>
					<li><a href="<c:url value="/views/el/sessionScope.jsp" />">EL - Session Scope Sample</a></li>
				</ul>
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