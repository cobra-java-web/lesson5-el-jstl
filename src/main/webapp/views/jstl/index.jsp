<%@include file="/views/common/common.jsp"%>
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
				<h1 class="page-title">Java Standard Tab Library</h1>
				<p>Java standard tab library sample:</p>
				<ul>
					<li><a href="<c:url value="/views/jstl/jstlCore.jsp" />">JSTL - Core</a></li>
					<li><a href="<c:url value="/views/jstl/jstlSql.jsp" />">JSTL - SQL</a></li>
				</ul>
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