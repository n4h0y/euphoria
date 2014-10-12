<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<tiles:insertAttribute name="htmlHeader" />
</head>
<body>
	<tiles:insertAttribute name="header" />
	<div id="web-page" class="content">
		<tiles:insertAttribute name="navigation_bar" />
		<div id="page-content" class="container class">
			<div class="span12">
				<tiles:insertAttribute name="content" />
			</div>
		</div>
		<div></div>
		<div id="footer_wrapper">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>
