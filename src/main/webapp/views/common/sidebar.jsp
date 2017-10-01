<%@ include file="/views/common/common.jsp"%>
<c:if test="${param.current == 'index'}">
	<div class="list-group">
		<a href="<c:url value="/page-directive" />" class="list-group-item list-group-item-action">Page Directive</a>
		<a href="<c:url value="/jsp-include" />" class="list-group-item list-group-item-action">JSP Include</a>
		<a href="<c:url value="/views/javaBean/sample.jsp" />" class="list-group-item list-group-item-action">Java Bean</a>
	</div>
</c:if>
<c:if test="${param.current == 'page-directive'}">
	<div class="list-group">
		<a href="<c:url value="/page-directive" />" class="list-group-item list-group-item-action">Text/HTML - Controller</a>
		<a href="<c:url value="/views/pageDirective/jspAccount.jsp" />" class="list-group-item list-group-item-action">Text/HTML - JSP Importing</a>
		<a href="<c:url value="/views/pageDirective/errorAccount.jsp" />" class="list-group-item list-group-item-action">Text/HTML - JSP Error</a>
		<a target="_blank" href="<c:url value="/page-directive?show=xml" />" class="list-group-item list-group-item-action">XML File</a>
		<a target="_blank" href="<c:url value="/page-directive?show=excel" />" class="list-group-item list-group-item-action">Excel File</a>
	</div>
</c:if>
<c:if test="${param.current == 'error'}">
	<div class="list-group">
		<a href="javascript:history.back();" class="list-group-item list-group-item-action">Go back</a>
	</div>
</c:if>