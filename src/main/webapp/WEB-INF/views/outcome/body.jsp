<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="content" class="content">
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item"><a href="javascript:;">Trade</a></li>
		<li class="breadcrumb-item active">Sanatn Outcome</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">
		Santan Outcome <small>header small text goes here...</small>
	</h1>
	<!-- end page-header -->

	<!-- begin panel -->
	<div class="panel panel-inverse">
		
		
		<!-- begin panel-body -->
		<div class="panel-body">
			<table id="data-table-default"
				class="table table-striped table-bordered">
				<thead>
					<tr>
						<th class="text-nowrap">Trade Amount</th>
						<th class="text-nowrap">Trade Date</th>
						<th class="text-nowrap">Santan Outcome</th>
						<th class="text-nowrap">Edit</th>
						<th class="text-nowrap">Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${trades}" var="trade"> 
						<tr>
							<td>${trade.tradeAmount}</td>
							<td>${trade.tradeDate}</td>
							<td>${trade.outcomeModel.outcomeAmount}</td>
							<td><a id="${trade.tradeId}" class="edit-outcome btn btn-icon btn-lg" href="#modal-dialog" data-toggle="modal"> 
								<i class="fa fa-pencil-alt bigger-130"></i></a></td>
							<td><span class="label label-success arrowed">Active</span></td>
						</tr>
					
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- end panel-body -->
	</div>
	<!-- end panel -->
</div>

<div class="modal fade" id="modal-dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Enter santan outcome here</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			</div>
			<form:form commandName="outcomeModel" action="post-outcome">
				<div class="modal-body">
					<p>
						
							<form:hidden path="outcomeId"/>
							<form:hidden path="tradeModel.tradeId"/>
							
							<fieldset>
								<div class="form-group row m-b-15">
									<label class="col-md-3 col-form-label text-right">Amount</label>
									<div class="col-md-3">	
										<form:input path="outcomeAmount" class="form-control" placeholder="Enter amount" />	
									</div>
								</div>
							</fieldset>
						
					</p>
				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-white" data-dismiss="modal">Close</a>
					<button type="submit" class="btn btn-success"> Save </button>
				</div>
			</form:form>
		</div>
	</div>
</div>