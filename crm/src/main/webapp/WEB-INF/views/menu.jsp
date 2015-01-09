<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<spring:url value="/" var="homeUrl" htmlEscape="true" />
<spring:url value="/customer" var="customerUrl" htmlEscape="true" />
<spring:url value="/service" var="serviceUrl" htmlEscape="true" />
<spring:url value="/product" var="productUrl" htmlEscape="true" />

<script>
	$(function() {
		var pull = $('#pull');
		menu = $('ul#nav');
		menuHeight = menu.height();
		$(pull).on('click', function(e) {
			e.preventDefault();
			menu.slideToggle();
		});
	})
</script>

<div class="container">
	<nav class="navbar navbar-default">
	    <div class="container-fluid">
	        <div id="navbar" >
	            <ul class="nav nav-pills">
	                <li class="<%if (request.getServletPath().indexOf("home") != -1) {%>active<%}%>"><a href="${homeUrl}">Home</a></li>
	                <li class="midList <%if (request.getServletPath().indexOf("customer") != -1) {%>active<%}%>"><a href="${customerUrl}">Customer</a></li>
	                <li class="<%if (request.getServletPath().indexOf("service") != -1) {%>active<%}%>"><a href="${serviceUrl}">Service</a></li>
	                <li class="<%if (request.getServletPath().indexOf("product") != -1) {%>active<%}%>"><a href="${productUrl}">Product</a></li>
	            </ul>
	        </div>
	    </div>
	</nav>
</div>
