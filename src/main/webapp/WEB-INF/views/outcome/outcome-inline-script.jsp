
	
	<script>
		$(document).ready(function() {
			TableManageDefault.init();
			Notification.init();
			
			
			$(".edit-outcome").click(function() {
				
				
				$("#tradeModel.tradeId").val(this.id);
			});
			
		});
	</script>