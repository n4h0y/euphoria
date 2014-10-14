<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="content">
        <div class="content">
            <div class="action">
                <c:if test="${empty customers}">
                    <b>Not found</b>
                </c:if>
                <ol>
                    <c:forEach var="cust" items="${customers}">
                        <li><a href="customer/${cust.customerId}"><c:out value="${cust.firstName}" /></a></li>
                    </c:forEach>
                </ol>
                <h1>Search for an existing customer</h1>
                <form method="POST" action="customer">
                    <div>
                        <label for="firstName">Keyword</label>
                        <input name="keyword" value="${keyword}" placeholder="Enter first name, last name or email address" type="text" />
                    </div>
                    <div>
                        <input type="submit" value="Search" id="search" class="button" />
                    </div>
                </form>
                <h1>OR</h1>
                <h1>Create a new customer</h1>
                <form:form method="POST" action="customer" commandName="customer">
                    <div>
                        <label for="firstName">First Name</label>
                        <form:input path="firstName" placeholder="e.g. Jane" />

                    </div>
                    <div>
                        <label for="lastName">Last Name</label>
                        <form:input path="lastName" placeholder="e.g. Doe" />
                    </div>
                    <div>
                        <label for="email">Email</label>
                        <form:input path="email" placeholder="e.g. JaneDoe@email.com" />
                    </div>
                    <div>
                        <input type="submit" value="Create Account" id="create-account" class="button" />
                    </div>
                </form:form>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>