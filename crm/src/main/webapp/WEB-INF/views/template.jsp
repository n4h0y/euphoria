<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<html>
    <head>
        <tiles:insertAttribute name="header" />              
    </head>
    <body>
        <tiles:insertAttribute name="navigation_bar" />
        <div></div>
        <div id="page" class="content">
            <tiles:insertAttribute name="content" />
        </div>
        <div></div>
        <div id="footer_wrapper">
            <tiles:insertAttribute name="footer" />
        </div>
    </body>
</html>