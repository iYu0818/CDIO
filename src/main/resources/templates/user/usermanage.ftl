<#include "/common/commoncss.ftl">
<#include "/common/modalTip.ftl"/>
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}
</style>

	<div class="row" style="padding-top: 10px;">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">用户管理</h1>
		</div>
	</div>

	<div class="row" style="padding-top: 15px;">
		<div class="col-md-12 thistable">
			<!--id="container"-->
			<#include "usermanagepaging.ftl"/>
		</div>
	</div>

<#--查找用户的搜索框-->
<script type="text/javascript">
	$(".thistable").on("click",".usersearchgo",function(){
		var usersearch = $(".thistable .usersearch").val();
		console.log(usersearch);
		$(".thistable").load("usermanagepaging",{usersearch:usersearch});
	});
</script>