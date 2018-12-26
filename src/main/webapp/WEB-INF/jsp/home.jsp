<%@include file="../fragments/header.jsp"%>
<body>
	<div class="container">
		<br> <br>

		<div class="card-header bg-primary text-white p-0">
			<div style="text-align: center">
				<h4>Load Cities By Country</h4>
			</div>
		</div>


		<br> <br> 


		<form:form modelAttribute="customForm" method="post" action="">

			<div class="row">
				<label class="col-md-1" for="countryId">Country</label>
				<div class="col-md-8">
					<div class="form-group">
						<form:select id="countryId" path="countryId"
							cssClass="form-control">
							<option value="#" disabled="disabled" selected="selected">---
								Select A Country ---</option>
<%-- 								 <form:option value="0" label="" /> --%>
							<form:options items="${countries}" itemValue="id"
								itemLabel="name" />
						</form:select>
					</div>
				</div>
			</div>

			<div class="row">
				<label class="col-md-1" for="cityId">City</label>
				<div class="col-md-8">
					<div class="form-group">

						<form:select id="cityId" path="cityId" cssClass="form-control" multiple="true">
						<option value="#" disabled="disabled" selected="selected">---
								Corresponding City(ies) Go Here ---</option>
<%-- 								<form:option value="0" label="" /> --%>
							<form:options items="${cities}" itemValue="id" itemLabel="name"/>
						</form:select>
					</div>
				</div>
			</div>

		</form:form>
		<br> <br>
		<br> <br>
		<br> <br>
		<br> <br>
		<br> <br>
		<%@include file="../fragments/jumbotron.jsp"%>
	</div>
	<%@include file="../fragments/footer.jsp"%>