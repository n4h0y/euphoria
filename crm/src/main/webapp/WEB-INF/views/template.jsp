<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
	<head>
	<tiles:insertAttribute name="htmlHeader" />
	<tiles:insertAttribute name="optionalHtmlHeader" ignore="true"/>
	</head>
	<body>
	     <div id="page-content" class="container">
	         <tiles:insertAttribute name="header" />
	         <tiles:insertAttribute name="navigation_bar" />
	         <div class="span12">
	             <tiles:insertAttribute name="content" />
	         </div>
	     </div>
	     <div></div>
	     <div id="footer_wrapper">
	         <tiles:insertAttribute name="footer" />
	     </div>
	</body>
</html>
