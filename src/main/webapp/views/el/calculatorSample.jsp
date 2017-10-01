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
				<h1 class="page-title">EL - Calculate Sum Sample</h1>
				<form method="GET">
					<div class="form-group row">
						<label for="number1" class="col-2 col-form-label">Number 1</label>
						<div class="col-10">
							<input class="form-control" type="text" value="${param.number1}" id="number1" name="number1">
						</div>
					</div>
					<div class="form-group row">
						<label for="number2" class="col-2 col-form-label">Number 2</label>
						<div class="col-10">
							<input class="form-control" type="text" value="${param.number2}" id="number2" name="number2">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-2"></div>
						<div class="col-10">
							<button type="submit" name="action" value="plus" class="btn btn-primary"> + </button>
							<button type="submit" name="action" value="minus" class="btn btn-primary"> - </button>
							<button type="submit" name="action" value="multiple" class="btn btn-primary"> * </button>
							<button type="submit" name="action" value="divide" class="btn btn-primary"> / </button>
						</div>
					</div>
				</form>
				<c:if test="${param.action == 'plus'}">
					<hr />
					<p>
						<strong>Result: </strong> ${param.number1 + param.number2} (${param.action})
					</p>
				</c:if>
				<c:if test="${param.action == 'minus'}">
					<hr />
					<p>
						<strong>Result: </strong> ${param.number1 - param.number2} (${param.action})
					</p>
				</c:if>
				<c:if test="${param.action == 'multiple'}">
					<hr />
					<p>
						<strong>Result: </strong> ${param.number1 * param.number2} (${param.action})
					</p>
				</c:if>
				<c:if test="${param.action == 'divide'}">
					<hr />
					<p>
						<strong>Result: </strong> ${param.number1 / param.number2} (${param.action})
					</p>
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