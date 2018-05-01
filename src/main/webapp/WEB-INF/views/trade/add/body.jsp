<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="content" class="content">
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item"><a href="javascript:;">Trade</a></li>
		<li class="breadcrumb-item active">New Trade</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">
		New Trade Entry <small>header small text goes here...</small>
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
					
					<form:form commandName="tradeModel" action="post-trade">
						<form:hidden path="tradeId"/>
						
						<fieldset>
							<legend class="m-b-15">New Trade Entry</legend>
							<div class="form-group row m-b-15">
								<label class="col-md-3 col-form-label text-right">Amount</label>
								<div class="col-md-3">	
									<form:input path="tradeAmount" class="form-control" placeholder="Enter amount"  />	
								</div>
							</div>
							<div class="form-group row m-b-15">
								<label class="col-md-3 col-form-label text-right">Date</label>
							
								
								<div class="col-md-3">
                                        <div class="input-group date" id="datetimepicker1">
                                           <form:input path="tradeDate" class="form-control" />
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
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