<%@ include file="/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/views/common/head.jsp"%>
	<title>Lesson 03 - Java Bean Sample</title>
</head>
<jsp:useBean id="samplebean" class="io.cobra.javaweb.bean.SampleBean" scope="page">
	<jsp:setProperty name="samplebean" property="name" value="Nguyen Van Duong" />
	<jsp:setProperty name="samplebean" property="age" value="27" />
	<jsp:setProperty name="samplebean" property="married" value="true" />
</jsp:useBean>
<body>
	<div class="container">
		<jsp:include page="/views/common/header.jsp">
			<jsp:param name="current" value="java-bean" />
		</jsp:include>

		<div class="content row">
			<div class="col-3 page-sidebar">
				<jsp:include page="/views/common/sidebar.jsp">
					<jsp:param name="current" value="java-bean" />
				</jsp:include>
			</div>
			<div class="col-9 page-content">
				<h1 class="page-title"> Java Bean Sample.</h1>
				<p><strong>Full Name: </strong><%= samplebean.getName() %></p>
				<p><strong>Age: </strong><jsp:getProperty  name="samplebean" property="age"/></p>
				<p><strong>Married status: </strong><jsp:getProperty  name="samplebean" property="married"/></p>
			</div>
		</div>

		<jsp:include page="/views/common/footer.jsp">
			<jsp:param name="current" value="java-bean" />
		</jsp:include>
	</div>
</body>
</html>