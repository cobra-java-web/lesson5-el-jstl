<%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<AccountList>
	<c:forEach items="${accountDtoList}" var="accountDto" >
	<Account>
		<Id>${accountDto.id}</Id>
		<Account>${accountDto.account}</Account>
		<FullName>${accountDto.fullName}</FullName>
		<DateOfBirth>${accountDto.dateOfBirth}</DateOfBirth>
	</Account>
	</c:forEach>
</AccountList>