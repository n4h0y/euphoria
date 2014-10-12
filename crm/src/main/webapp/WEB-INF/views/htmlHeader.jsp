<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<title><tiles:insertAttribute name="title" ignore="true" /></title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta name="google-site-verification" content="xxxxxxxxx" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
<link href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />

<link href="${cssURL}" rel="stylesheet" type="text/css" />
<link href="<c:url value="/"/>resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<c:url value="/"/>resources/css/bootstrap-responsive-revised.css" rel="stylesheet" type="text/css" />
<link href="<c:url value="/"/>resources/css/layout.css" rel="stylesheet" type="text/css" />
<link href="<c:url value="/"/>resources/css/style.css" rel="stylesheet" type="text/css" />

<script src="<c:url value="/"/>resources/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="<c:url value="/"/>resources/js/jquery.blockUI-2.39.js" type="text/javascript"></script>
<script src="<c:url value="/"/>resources/js/header-menu-ajax.js" type="text/javascript"></script>

<script src="<c:url value="/"/>resources/js/respond.min.js" type="text/javascript"></script>
<script src="<c:url value="/"/>resources/js/bootstrap.min.js" type="text/javascript"></script>

<link href="<c:url value="/"/>images/favicon.ico" rel="icon" type="image/x-icon" />
<link href="<c:url value="/"/>images/favicon.ico" rel="shortcut icon" type="image/x-icon" />

<script>
	$(document).ready(function() {
		var placeholder = null;
		$('input[type=text]').focus(function() {
			placeholder = $(this).attr("placeholder");
			$(this).attr("placeholder", "");
		});
		$('input[type=text]').blur(function() {
			$(this).attr("placeholder", placeholder);
		});
	});
</script>
