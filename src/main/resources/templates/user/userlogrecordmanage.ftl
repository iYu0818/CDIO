<#include "/common/commoncss.ftl">
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
		<h1 style="font-size: 24px; margin: 0;" class="">用户登陆记录</h1>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12 thistable">
		<#include  "/user/userlogrecordmanagetable.ftl">
	</div>
</div>
