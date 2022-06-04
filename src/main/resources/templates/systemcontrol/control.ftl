<#include "/common/commoncss.ftl" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.thiscolor{
	display: inline-block;
	width: 20px;
    height: 20px;
    border-radius: 50%;
    margin-right:10px;
}
.thiscolor:HOVER {
	cursor: pointer;
}
</style>
<script type="text/javascript" src="js/common/tocolor.js"></script>
<link rel="stylesheet" href="css/controlpanel.css" />
<link rel="stylesheet" href="css/common/skintheme.css" />
<!-- <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css"> -->
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
	<script type="text/javascript">
		$(function(){
			var themeSkin='${user.themeSkin}';
			if(themeSkin=="blue"){
				toblue();
			}else if(themeSkin=="green"){
				togreen();
			}else if(themeSkin=="yellow"){
				toyellow();
			}else if(themeSkin=="red"){
				tored();
			}
		});
	</script>
<#--仅用于测试-->
<script type="text/javascript">
	function funblue(){
		console.log("点击变蓝了");
		parent.toblue();
		toblue();
	}
	function fungreen(){
		console.log("点击变绿了");
		parent.togreen();
		togreen();
	}
	function funyellow(){
		console.log("点击变黄了");
		parent.toyellow();
		toyellow();
	}
	function funred(){
		console.log("点击变红了");
		parent.tored();
		tored();
	}
</script>
<div class="head-show" style="position: relative; height: 76px;">

</div>
<!--顶部的四个面板-->
<div class="container-fluid">
	<div class="row">
		<!--考勤签到-->
		<div class="col-md-4" >
		    <div id="refresh">
				<#include "signin.ftl">
			</div>
		</div>
		<!--文件管理-->
		<div class="col-md-4">
			<div class="jichu filecolor">
				<div class="wenzi">
					<h2>${filenum}</h2>
					<p>文件管理</p>
				</div>
				<div class="iconfont">
					<span class="glyphicon glyphicon-folder-open" style="margin-left: 130px;"></span>
				</div>
				<a href="filemanage" class="moreduo"> 更多 <span
					class="glyphicon glyphicon-circle-arrow-right"></span>
				</a>
			</div>
		</div>
		<!--通讯录-->
		<div class="col-md-4">
			<div class="jichu tongxun">
				<div class="wenzi">
					<h2>${directornum}</h2>
					<p>通讯录</p>
				</div>
				<div class="iconfont">
					<span class="glyphicon glyphicon-earphone"></span>
				</div>
				<a href="addrmanage" class="moreduo"> 更多 <span
					class="glyphicon glyphicon-circle-arrow-right"></span>
				</a>
			</div>
		</div>

	</div>
</div>
<!--右侧刷新的内容块-->
<div class="container-fluid"
	style="margin-top: 20px;  margin-bottom: 50px;">
	<div class="row ">
		<div class="col-md-7 gridly">
			<!--第一个公告通知-->
			<div class="panel panel-default box-show green-box">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>公告通知</h4>
					</div>
					<div class="pull-right right-btn-group dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown" >
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="infrommanage">公告通知</a></li>
							</ul>
						</div>
						<a  >
							<button>
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button>
						</a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				
				<div id="" class="shrink">
					<table class="table table-hover" >
						<tr>
							<th>发布</th>
							<th>日期</th>
							<th>状态</th>
							<th>标题</th>
							<th></th>
						</tr>
						<#list noticeList as notice>
							<tr>
								<td>${notice.deptName}</td>
								<td>${notice.notice_time}</td>
								<td><span class="label ${(notice.statusColor)!''}">${notice.status}</span></td>
								<td><span>${(notice.title)!''}</span></td>
								<td><a href="informshow?id=${notice.notice_id}&read=${notice.is_read}&relationid=${notice.relatin_id}" class="look-xiangxi"><span
										class="glyphicon glyphicon-search"> </span> 查看 </a></td>
							</tr>
						</#list>
						
					</table>
				</div>
			</div>
			<!--第二个box；流程管理-->
			<div class="panel panel-default box-show green-box">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>流程管理</h4>
					</div>
					<div class="pull-right right-btn-group dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="xinxeng">新建流程</a></li>
								<li><a href="flowmanage">流程管理</a></li>
							</ul>
						</div>
						<a  ><button>
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				<div id="" class="shrink">
					<table class="table table-hover" >
						<tr>
							<th>类型</th>
							<th>日期</th>
							<th>状态</th>
							<th>标题</th>
							<th></th>
						</tr>
						
							<#list processlist as pro>
							<tr>
								<td>${(pro.typeNmae)!''}
								</td>
								<td>${(pro.applyTime)!''}</td>
								<td><#list prostatuslist as pros>
								<#if pros.statusId==pro.statusId>
								<span class="label ${(pros.statusColor)!''}">${(pros.statusName)!''}</span>
								</#if>
								</#list>
								</td>
								<td><span>${(pro.processName)!''}</span></td>
								<td><a  class="look-xiangxi"><span
										class="glyphicon glyphicon-search"> </span> 查看 </a></td>
							</tr>
						</#list>
					</table>
				</div>
			</div>
			<!--第三个box；工作计划-->
			<div class="panel panel-default box-show green-box">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>工作计划</h4>
					</div>
					<div class="pull-right right-btn-group dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="planview">计划管理</a></li>
								<li><a href="planedit?pid=-1">新增计划</a></li>
							</ul>
						</div>
						<a  ><button>
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				<div id="" class="shrink">
					<table class="table table-hover" >
						<tr>
							<th>类型</th>
							<th>结束日期</th>
							<th>状态</th>
							<th>标题</th>
							<th></th>
						</tr>
						<#list planList as plan>
							<tr>
								<td>
								<#list ptypelist as ptype>
								<#if plan.typeId==ptype.typeId>
									${(ptype.typeName)!''}
								</#if>
								</#list>
								</td>
								<td>${(plan.endTime)!''}</td>
								<#list pstatuslist as pstatus>
								<#if pstatus.statusId==plan.statusId>
								<td>
								<span class="label ${(pstatus.statusColor)!''}">${(pstatus.statusName)!''}</span>
								</td>
								</#if>
								</#list>
								
								
								<td><span>${(plan.title)!''}</span></td>
								<td><a href="planedit?pid=${plan.planId}" class="look-xiangxi"><span
										class="glyphicon glyphicon-search"> </span> 查看 </a></td>
							</tr>
						</#list>
					</table>
				</div>
			</div>
		</div>

		<!--内容右侧5个格子；-->
		<div class="rightcolmd">
			<!--第四个格子-->

			<!--第五个格子-->
			<div class="panel panel-default box-show green-box">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>
							<span class="glyphicon glyphicon-pushpin"> </span> 我的便签
						</h4>
					</div>
					<div class="pull-right right-btn-group btn-color dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown" style="background: #18e89d !important;">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="userpanel">我的便签</a></li>
							</ul>
						</div>
						<a  ><button style="background: #18e89d !important;">
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button style="background: #18e89d !important;">
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				
				<div  class="shrink">
					<ul class="list-group">
						<#list  notepaperList as np>
						<li class="list-group-item list-group-item-li" style=""><img
							src="/image/${(user.imgPath)!'/timg.jpg'}" alt="photo" title="wowoowo"
							class="item-li-img" />
							<p class="item-li-p">
								<a href="userpanel">${(np.title)!''} <small class="pull-right"
									style="color: #777;"><span
										class="glyphicon glyphicon-time"></span>${(np.createTime)!''}</small>
								</a><br> ${(np.concent)!''}
							</p></li>
							</#list>
					</ul>
					<div class="input-group input-div">
						<input type="text" placeholder="便签内容" style="outline: none;" class="concent"/> <a
							id="writep" style="cursor: pointer;"><span class="glyphicon glyphicon-plus"
							style="margin-top: 6px;"></span></a>
					</div>
				</div>
				
			</div>
			<!--5个格子栅格系统end-->
		</div>
	</div>
</div>

<script>
//基础图标放大缩小
	$('.jichu').on('mouseover', function() {
		$(this).children('.iconfont').children('.glyphicon').css('font-size', '88px');
	});
	
	$('.jichu').on('mouseout', function() {
		$(this).children('.iconfont').children('.glyphicon').css('font-size', '76px');
	});
	/* 关闭面板按钮 */
	$('.glyphicon-remove').parent().on('click',function(){
		if(confirm("确定关闭此面板吗？")==false){
			return false;
		}
		console.log($(this).parents('.box-show'));
		$(this).parents('.box-show').css('display','none');
		
	});
	
	$(".shousuo").on('click',function(){
		if($(this).hasClass("glyphicon-plus")){
			console.log("0000")
			$(this).removeClass("glyphicon-plus").addClass("glyphicon-minus")
			$(this).parents(".panel").children(".shrink").slideToggle(100);
		}
		else{
			console.log("1111")
				$(this).removeClass("glyphicon-minus").addClass("glyphicon-plus")
				$(this).parents(".panel").children(".shrink").slideToggle(100);
			}
	})
	
		$("#writep").click(function(){ 
			var $concent=$(".concent").val();
			if($concent==null||$concent=="")
				return confirm("您输入为空 请重新输入");
			$.ajax({
				url:'writep',
				data:{concent:$concent},
				type:"get",
				success:function(){
					window.location.reload();
				}
			})
		})
		$(".icon").css({
			"right":"0px",
			"top":"-10px",
			"height":"5px"
		})

</script>
<script src="js/littlecalendar.js"></script>
<script src="js/highcharts/jquery.js"></script>
<script src="js/highcharts/highcharts.js"></script>
<script src="js/tongji.js"></script>
