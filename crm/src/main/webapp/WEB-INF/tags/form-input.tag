<%@ tag body-content="empty" language="java" pageEncoding="UTF-8"%>
<%@ attribute name="label" required="true" %>
<%@ attribute name="field" required="true" %>
<%@ attribute name="value" required="true" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div>
	<label for="${field}">${label}</label>
	<form:input path="${field}" value="${value}" />
</div>
