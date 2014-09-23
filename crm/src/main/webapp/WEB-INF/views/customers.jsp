<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="content">

		<div class="content">
			<div class="register">
				<h3>Create a new customer</h3>
				<form:form method="PUT" action="customer" commandName="customer">
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
						<input type="submit" value="Create Account" id="create-account"
							class="button" />
					</div>
				</form:form>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>