<%@ include file="/views/common/common.jsp"%>
<header>
	<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="navbar-brand" href="#">Duong Nguyen</a>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="<c:url value="/" />">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/page-directive" />">Page Directive</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/jsp-include" />">JSP Include</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/java-bean" />">Java Bean</a>
				</li>
			</ul>
		</div>
	</nav>
</header>