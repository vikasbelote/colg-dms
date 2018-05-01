<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="content" class="content">
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item"><a href="javascript:;">Investment</a></li>
		<li class="breadcrumb-item active">Add Investment</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">
		Client Investment <small>header small text goes here...</small>
	</h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
		<!-- begin col-6 -->
		<div class="col-lg-12">
			<!-- begin panel -->
			<div class="panel" data-sortable-id="form-stuff-10">
				<!-- begin panel-heading -->
				
				<!-- end panel-heading -->
				<!-- begin panel-body -->
				<div class="panel-body">
					
					<form:form commandName="investmentModel" action="post-investment">
						<form:hidden path="investmentId"/>
						
						<fieldset>
							<legend class="m-b-15">Add Invetment</legend>
							<div class="form-group row m-b-15">
								<label class="col-md-3 col-form-label text-right">Amount</label>
								<div class="col-md-3">	
									<form:input path="amount" class="form-control" placeholder="Enter amount"  />	
								</div>
							</div>
							<div class="form-group row m-b-15">
								<label class="col-md-3 col-form-label text-right">Plan</label>
								<div class="col-md-3">
									<form:select path="plan" class="form-control">
										<form:option value="-1">Choose Plan</form:option>
										<form:option value="Fixed">Fixed</form:option>
										<form:option value="Postpaid">Postpaid</form:option>
									</form:select>
								</div>
							</div>
							<div class="form-group row m-b-15">
								<label class="col-md-3 col-form-label text-right">Tenure</label>
								<div class="col-md-3">
									<form:select path="tenure" class="form-control">
										<form:option value="-1">Choose Tenure</form:option>
										<form:option value="3-Month">3-Month</form:option>
										<form:option value="6-Month">6-Month</form:option>
									</form:select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-7 offset-md-3">
									<button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
								</div>
							</div>
						</fieldset>
					</form:form>
				</div>
				<!-- end panel-body -->
			</div>
			<!-- end panel -->
		</div>
		<!-- end col-6 -->
	</div>
	<!-- end row -->
</div>