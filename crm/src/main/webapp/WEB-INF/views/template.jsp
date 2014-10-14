<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<tiles:insertAttribute name="htmlHeader" />
</head>
<body>
    <div id="web-page" class="content">
        <div id="page-content" class="container class">
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
    </div>
</body>
</html>
