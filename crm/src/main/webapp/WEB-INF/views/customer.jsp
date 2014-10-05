<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="content">

		<div class="body">
			<div class="crudform">
				<div class="register">
					<h3>CUSTOMER.JSP</h3>
					<form:form method="PUT" action="customer" commandName="customer">
					<div>
						<label for="firstName">First Name</label>
						<form:input path="firstName" value="${customer.firstName}" />
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<form:input path="lastName" placeholder="e.g. Doe" />
					</div>
					<div>
						<label for="email">Email</label>
						<form:input path="email" placeholder="e.g. JaneDoe@email.com" />
					</div>
				</form:form>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>