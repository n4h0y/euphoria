<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="content">
	    <div class="form-group">
	        <c:if test="${message != null}">${message}</c:if>
	        <h1>Search for an existing customer</h1>
	        <form:form method="POST" action="customer" role="form">
	            <div class="form-group">
	                <label for="keyword">Keyword</label> 
	                <input id="keyword" name="keyword" value="${keyword}" placeholder="Enter first name, last name or email address" type="text" class="form-control"/>
	            </div>
	            <div class="form-group">
	                <input type="submit" value="Search" id="search" class="btn btn-default btn-primary" />
	            </div>
	        </form:form>
	        <c:choose>
	            <c:when test="${customers == null}" />
	            <c:when test="${empty customers}">
	                <b>Not found</b>
	            </c:when>
	            <c:otherwise>
	                <tiles:insertDefinition name="dataTableTemplate">
	                    <tiles:putAttribute name="theader">
	                        <tr>
	                            <th>Customer name</th>
	                            <th>Actions</th>
	                        </tr>
	                    </tiles:putAttribute>
	                    <tiles:putAttribute name="tbody">
	                        <c:forEach var="cust" items="${customers}">
	                            <tr>
	                                <td><c:out value="${cust.firstName}" /></td>
	                                <td>
	                                    <a href="customer/${cust.customerId}" title="Edit customer" class="floatleft">
	                                        <img border="0" hspace="2" class="link" alt="Edit" height="20px" width="20px" src="<c:url value="/"/>resources/images/icons/edit_user.png" />
	                                    </a>
	                                    <form:form method="POST" action="customer/delete" class="zero-margin">
	                                        <input type="hidden" name="customerId" value="${cust.customerId}" />
	                                        <input type="submit" value="" id="delete" alt="Delete cusomter" class="icon-user-delete" />
	                                    </form:form>
	                                </td>
	                        </c:forEach>
	                    </tiles:putAttribute>
	                </tiles:insertDefinition>
	            </c:otherwise>
	        </c:choose>
	        <h1>OR</h1>
	        <button onclick="$('.createNew').collapse();" type="button" data-toggle="collapse" data-target="#createNew" class="btn btn-info">Create a new customer</button>
	        <div id="createNew" class="collapse createNew">
	         <form:form method="POST" action="customer" commandName="customer" role="form" class="form-horizontal">
	            <fieldset>
	              <div class="control-group">
	                  <label class="control-label col-sm-2" for="firstName">First Name</label>
	                  <div class="col-sm-10">
	                  <form:input id="firstName" path="firstName" placeholder="e.g. Jane" class="form-control"/>
	                  </div>
	              </div>
	              <div class="control-group">
	                  <label class="control-label col-sm-2" for="lastName">Last Name</label>
	                  <div class="col-sm-10">
	                  <form:input id="lastName" path="lastName" placeholder="e.g. Doe" class="form-control"/>
	                  </div>
	              </div>
	              <div class="control-group">
	                  <label class="control-label col-sm-2" for="email">Email</label>
	                  <div class="col-sm-10">
	                  <form:input id="email" path="email" placeholder="e.g. JaneDoe@email.com" class="form-control"/>
	                  </div>
	              </div>
	              <div class="form-actions">
	                  <div class="col-sm-10">
	                  <button type="submit" id="create-account" class="btn btn-primary" class="form-control">Create Account</button>
	                  </div>
	              </div>
	             </fieldset>
	         </form:form>
	        </div>
	    </div>
    </tiles:putAttribute>
</tiles:insertDefinition>