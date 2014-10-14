<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<script>
	$(function() {
		var shortcut = $('#shortcut');
		var shortlist = $('#shortlist');
		$(".content").bind("click tap", function(e) {
			if (!(shortlist.hasClass("hidden"))) {
				shortlist.addClass("hidden");
			}
		})

		$(shortcut).bind("click tap", function(e) {
			if (shortlist.hasClass("hidden")) {
				shortlist.removeClass("hidden");
				return false;
			} else {
				shortlist.addClass("hidden");
			}
		});
	})
</script>

<div class="container header position-rel">
    <spring:url value="/" var="homeUrl" htmlEscape="true" />
    <a class="logo" href="${homeUrl}" title="Home">
        <div id="logo"></div>
    </a>
</div>
