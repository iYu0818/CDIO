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
.block{
	display: inline-block;
	width: 20px;
}
.co{
				color: blue;
			}
			.bl{
				color: black;
			}
			.commen{
				cursor: pointer;
			}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">账号管理</h1>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		
		<div class="bgc-w box box-primary thistable">
			<#include "/mail/mailtable.ftl">
		</div>
	</div>
</div>


