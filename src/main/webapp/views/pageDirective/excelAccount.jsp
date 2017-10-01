<%@ page contentType="application/vnd.ms-excel" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
Id	Account	FullName	DateOfBith
<c:forEach items="${accountDtoList}" var="accountDto" >
${accountDto.id}	${accountDto.account}	${accountDto.fullName}	${accountDto.dateOfBirth}
</c:forEach>