<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="content">
        <div class="content">
            <div class="action">
                <c:if test="${message != null}">${message}</c:if>
                <h1>Search for a Service</h1>
                <form:form method="POST" action="service">
                    <div>
                        <label for="keyword">Keyword</label> <input name="keyword" value="${keyword}"
                            placeholder="Enter Service Name or Description" type="text" />
                    </div>
                    <div>
                        <input type="submit" value="Search" id="search" class="button" />
                    </div>
                </form:form>
                <c:choose>
                    <c:when test="${services == null}" />
                    <c:when test="${empty services}">
                        <b>Not found</b>
                    </c:when>
                    <c:otherwise>
                        <tiles:insertDefinition name="dataTableTemplate">
                            <tiles:putAttribute name="theader">
                                <tr>
                                    <th>Service name</th>
                                    <th>Actions</th>
                                </tr>
                            </tiles:putAttribute>
                            <tiles:putAttribute name="tbody">
                                <c:forEach var="serv" items="${services}">
                                    <tr>
                                        <td><c:out value="${serv.name}" /></td>
                                        <td>
                                            <a href="service/${serv.name}" title="Edit service" class="floatleft">
                                                <img border="0" hspace="2" class="link" alt="Edit" height="20px" width="20px" src="<c:url value="/"/>resources/images/icons/edit_user.png" />
                                            </a>
                                            <form:form method="POST" action="service/delete" class="zero-margin">
                                                <input type="hidden" name="entityId" value="${serv.serviceId}" />
                                                <input type="submit" value="" id="delete" alt="Delete service" class="icon-user-delete" />
                                            </form:form>
                                        </td>
                                </c:forEach>
                            </tiles:putAttribute>
                        </tiles:insertDefinition>
                    </c:otherwise>
                </c:choose>
                <h1>OR</h1>
                <h1>Create a new service</h1>
                <form:form method="POST" action="service" commandName="service">
                                    </form:form>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>