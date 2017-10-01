<%@include file="/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/views/common/head.jsp"%>
	<title>Lesson 03 - JSP & Java Bean</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/views/common/header.jsp">
			<jsp:param name="current" value="index" />
		</jsp:include>

		<div class="content row">
			<div class="col-3 page-sidebar">
				<jsp:include page="/views/common/sidebar.jsp">
					<jsp:param name="current" value="index" />
				</jsp:include>
			</div>
			<div class="col-9 page-content">
				<h1 class="page-title"> Welcome to lesson 3.</h1>
				<p>Please choose menu of left side bar.</p>
			</div>
		</div>

		<jsp:include page="/views/common/footer.jsp">
			<jsp:param name="current" value="index" />
		</jsp:include>
	</div>
</body>
</html>