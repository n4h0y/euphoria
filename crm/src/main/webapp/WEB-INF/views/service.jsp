<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="optionalHtmlHeader">
        <script>
                                    $(function() {
                                        $('div.section > div.section-heading > a').click(function() {
                                            var isHidden = $(this).parent().next().is(':hidden');
                                            if (isHidden) {
                                                $(this).parent().next().slideDown(250);
                                            } else {
                                                $(this).parent().next('div.section-content').slideUp(250);
                                            }
                                            $(this).parent().toggleClass('collapse');
                                            return false;
                                        });
                                    });
                                </script>
    </tiles:putAttribute>
    <tiles:putAttribute name="content">
        <div class="content">
            <div class="section">
                <div class="section-heading expand">
                    <a href="#">Service Detaills</a>
                </div>
                <div class="section-content">
                    <form:form method="PUT" action="service" commandName="service">
                        <div>
                            <label for="name">Service Name</label>
                            <form:input path="name" value="${service.name}" />
                        </div>
                        <div>
                            <label for="description">Description</label>
                            <form:input path="description" value="${service.description}" />
                        </div>
                        <div>
                            <label for="price">Price</label>
                            <form:input path="price"value="${service.price}" />
                        </div>
                    </form:form>
                </div>
            </div>
            <div class="section">
                <div class="section-heading expand">
                    <a href="#">Activity History</a>
                </div>
                <div class="section-content">
                    <p>text.</p>
                </div>
            </div>
            <div class="section">
                <div class="section-heading expand">
                    <a href="#">Loyalty History</a>
                </div>
                <div class="section-content">
                    <p>text.</p>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>