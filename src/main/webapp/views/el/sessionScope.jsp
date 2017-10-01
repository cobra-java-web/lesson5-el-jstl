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
				<h1 class="page-title">EL - Session Scope Sample</h1>
				<form method="POST">
					<div class="form-group row">
						<label for="data" class="col-2 col-form-label">Data</label>
						<div class="col-10">
							<input class="form-control" type="text" value="${param.data}" id="data" name="data">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-2"></div>
						<div class="col-10">
							<button type="submit" name="action" value="write" class="btn btn-primary"> Write data to session </button>
						</div>
					</div>
				</form>
				<c:if test="${param.action == 'write'}">
					<jsp:useBean id="sessionData" class="io.cobrafw.javaweb.bean.SessionBean" scope="session">
						<jsp:setProperty name="sessionData" property="*"/>
					</jsp:useBean>
					<c:redirect url="/views/el/showSesssionData.jsp"></c:redirect>
				</c:if>
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