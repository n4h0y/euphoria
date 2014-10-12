<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
<div id="menu-container">
	<div class="container menu topSpace">
		<ul id="nav">
			<div class="main-menu">
				<spring:url value="/about" var="aboutUrl" htmlEscape="true" />
				<spring:url value="/" var="homeUrl" htmlEscape="true" />
				<spring:url value="/customer" var="customerUrl" htmlEscape="true" />
				<li class="<%if (request.getServletPath().indexOf("home") != -1) {%>selected<%}%>"><a href="${homeUrl}">Home</a></li>
				<li class="midList <%if (request.getServletPath().indexOf("customer") != -1) {%>selected<%}%>"><a href="${customerUrl}">Customer</a></li>
				<li class="<%if (request.getServletPath().indexOf("about") != -1) {%>selected<%}%>"><a href="${aboutUrl}">About</a></li>
				<li class="<%if (request.getServletPath().indexOf("about") != -1) {%>selected<%}%>"><a href="${aboutUrl}">About</a></li>
				<li class="midList <%if (request.getServletPath().indexOf("about") != -1) {%>selected<%}%>"><a href="${aboutUrl}">About</a></li>
			</div>
		</ul>
		<div id="pull">
			<a href="#">Menu</a>
		</div>
	</div>
</div>