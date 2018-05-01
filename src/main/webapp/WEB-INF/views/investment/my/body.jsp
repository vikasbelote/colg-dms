<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content" class="content">
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item"><a href="javascript:;">Investment</a></li>
		<li class="breadcrumb-item active">My Investment</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">
		My Investment <small>header small text goes here...</small>
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
						<th class="text-nowrap">Amount Invested</th>
						<th class="text-nowrap">Tenure</th>
						<th class="text-nowrap">Current Amount</th>
						<th class="text-nowrap">Plan</th>
						<th class="text-nowrap">Edit</th>
						<th class="text-nowrap">Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${investments}" var="investment"> 
						<tr>
							<td>${investment.amount}</td>
							<td>${investment.tenure}</td>
							<td>${investment.amount}</td>
							<td>${investment.plan}</td>
							<td><a class="btn btn-icon btn-lg" href="edit-investment?id=${investment.investmentId}"> 
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