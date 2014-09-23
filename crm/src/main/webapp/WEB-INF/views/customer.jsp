<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="content">

		<div class="body">
			<div class="crudform">
				<div class="register">
					<h3>Create your account</h3>
					<form id="reg-form1">
						<div>
							<label for="name1">Name</label> <input type="text" id="name1"
								spellcheck="false" placeholder="Shridhar Deshmukh" />
						</div>
						<div>
							<label for="email1">Email</label> <input type="text" id="email1"
								spellcheck="false" placeholder="shridhardeshmukh@xyz.com" />
						</div>
						<div>
							<label for="username1">Username</label> <input type="text"
								id="username1" spellcheck="false" placeholder="shree33" />
						</div>
						<div>
							<label for="password1">Password</label> <input type="password"
								id="password1" />
						</div>
						<div>
							<label for="password-again1">Password Again</label> <input
								type="password" id="password-again1" />
						</div>
						<div>
							<label></label> <input type="submit" value="Create Account"
								id="create-account1" class="button" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>