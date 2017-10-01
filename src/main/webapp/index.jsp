<%@include file="/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/views/common/head.jsp"%>
	<title>Lesson 05 - EL &amp; JSTL</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/views/common/header.jsp">
			<jsp:param name="current" value="index" />
		</jsp:include>

		<div class="content row">
			<div class="col-12 page-content">
				<h1 class="page-title"> Welcome to Lesson 05 - EL &amp; JSTL</h1>
				<p>
					In this lesson, we will work with:
				</p>
				<ul>
					<li>
						<a href="<c:url value="/views/el/index.jsp" />">Expression Language</a>
						<ul>
							<li><a href="<c:url value="/views/el/basicExpression.jsp" />">EL - Basic Expression</a></li>
							<li><a href="<c:url value="/views/el/calculatorSample.jsp" />">EL - Calculator Sample</a></li>
							<li><a href="<c:url value="/views/el/sessionScope.jsp" />">EL - Session Scope Sample</a></li>
						</ul>
					</li>
					<li>
						<a href="<c:url value="/views/jstl/index.jsp" />">Java Standard Tag Library</a>
						<ul>
							<li><a href="<c:url value="/views/jstl/jstlCore.jsp" />">JSTL - Core</a></li>
							<li><a href="<c:url value="/views/jstl/jstlSql.jsp" />">JSTL - SQL</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>

		<jsp:include page="/views/common/footer.jsp">
			<jsp:param name="current" value="index" />
		</jsp:include>
	</div>
</body>
</html>