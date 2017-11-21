<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>roncoo Admin</title>
<link href="/static/img/favicon.ico" type="image/x-icon" rel="shortcut icon">

<!--第三方插件样式-->
<link href="/static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/static/vendor/datatable/datatable.css" rel="stylesheet">
<link href="/static/vendor/metismenu/metis-menu.min.css" rel="stylesheet">
<link href="/static/vendor/alert/sweet-alert.css" rel="stylesheet">
<link href="/static/vendor/bootstrap-multiselect.css" rel="stylesheet">
<link href="/static/vendor/validform.css" rel="stylesheet">
<link href="/static/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="/static/vendor/bootstrap/css/bootstrap-datetimepicker.css" rel="stylesheet">



<!--自定义样式文件 ＊重要＊-->
<link href="/static/vendor/sb-admin-2.css" rel="stylesheet">


<style type="text/css">
.navbar-header{
    width: 200px;
    text-align: center;
}
.navbar-brand{
    font-size: 20px;

}
.table{
    margin-top: 10px;
}

.hover{
    cursor: pointer;
}
.progress-reboot{
    position: absolute;
    height: 2px;
    top:0px;
    background: #337ab7;
    width: 0%;
    z-index: 2000;
}
#main-content{
    overflow-x:auto;
}
#main-content .add-btn{
    position: absolute;
    z-index:100;
    width: 200px;
}
#wrapper{
    background: #2e3c4e;
}
.navbar-default .navbar-nav>li>a{
    color:white;
}
.navbar-default .navbar-nav>li>a:hover{
    background: #299d71;
}

.navbar-default .navbar-brand{
    color:white;
}

.navbar-default .navbar-brand:hover{
    color:white;
}
.select2-container{
    width: 100% !important;
}
button.detail{
    margin-left: 10px;
}
.sweet-alert h2{
    margin-top: 30px;
}


.NoNewline {  word-break: keep-all;  }
.server_list_button{float:right; margin-right: 10px;margin-bottom: 10px;}
#host_list{ height: 250px; overflow-y: scroll;border:1px solid #ccc; width:220px;padding-left:10px;float:left;margin-right:20px;}
.modal-body{min-height: 280px;}
#zabbix_group{width:200px;}

</style>

</head>

<body>
<div id="wrapper"> <!--页面全局样式-->

<!--页面头部导航 -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <a class="navbar-brand" href="/">龙果系统</a>
    <ul class="nav navbar-nav">
	<li  class="dropdown" id="profile-messages" >
	    <a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="fa fa-user fa-fw"></i><span class="text">{% if errmsg %}<span style="color: red;">{{errmsg}}</span>{%else%}{{user.name}}{%endif%}</span> <b class="caret"></b></a>
	    <ul class="dropdown-menu">
		<li><a href="/user/userinfo"><i class="fa fa-user fa-fw"></i>个人中心</a></li>
		<li class="divider"></li>
		<li><a href="/logout"><i class="fa fa-mail-forward fa-fw"></i>退出登录</a></li>
	    </ul>
	</li>
	<li><a href="/logout"><i class="fa fa-mail-forward fa-fw" ></i><span>退出登录</span></a></li>
    </ul>
    <ul class="nav navbar-nav pull-right">
 
	<!--
        <li><a href="#" target="_blank">API文档</a></li>
        <li><a href="#" target="_blank">里程碑</a></li>
	-->
    </ul>
    <form class="navbar-form">
        <input type="text" class="form-control" placeholder="Search...">
    </form>
</nav><!--nav  end -->

<!--页面左边导航-->
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">  <!--菜单列表-->
            <li><a href="/"><i class="fa fa-home fa-fw"></i>控制面板</a></li>
            <li> <!--用户管理-->
            <a href="#"><i class="fa fa-user fa-fw"></i>用户管理<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                <li> 
                    <a href="/">个人中心</a>
                </li>
                {% if info and 'sa' in info.role %}
                <li>
                    <a href="/user/userlist">用户列表</a>
                </li>
                <li>
                    <a href="/user/role">角色列表</a>
                </li>
                <li>
                    <a href="/user/power">权限列表</a>
                </li>
                {% endif %}
            </ul>    
            </li> <!--用户管理 end-->


           
	   <li><!--cobbler-->
            <a href="#"><i class="fa fa-database fa-fw"></i>装机平台<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
		 {% if info and 'zj' in info.role %}
		<li>
                    <a href="/cobbler/system">定制系统</a>
                </li>		
                <li>
                    <a href="/cobbler/cobbler">装机定义</a>
                </li>  
		<li>
                    <a href="/cobbler/install">操作记录</a>
                </li> 
                {% endif %}
            </ul>
            </li> <!--cobbler 装机平台-->

            <li><!--资产平台-->
            <a href="#"><i class="fa fa-database fa-fw"></i>资产平台<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                {% if info and 'cmdb' in info.perm %}
	        <li>
                    <a href="/cmdb/jigui">监控概览</a>
                </li>
                <li> 
                    <a href="/cmdb/server">硬件资产</a>
                </li>
		<li>
                    <a href="/cmdb/access">资产管理</a>
                </li>
                <li>
                    <a href="/cmdb/idc">机房管理</a>
                </li>
                <li>
                    <a href="/cmdb/cabinet">机柜管理</a>
                </li>
		<li>
                    <a href="/cmdb/switch">网络设备</a>
                </li>
                {% endif %}
            </ul>    
            </li> <!--CMDB资产平台结束-->

	    <li><!--报障管理-->
            <a href="#"><i class="fa fa-database fa-fw"></i>报障处理<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                {% if info and 'report' in info.perm %}
                <li>
                    <a href="/device/report">故障申报</a>
                </li>
		{%endif%}
		{%if info and 'maintain' in info.perm%}
                <li>
                    <a href="/device/maintain">故障处理</a>
                </li>
		{%endif%}
		{%if info and 'down' in info.perm%}
                <li>
                    <a href="/device/down">下架记录</a>
                </li>
                {% endif %}
            </ul>
            </li> <!--保障平台-->



            <li><!--代码发布系统-->
            <a href="#"><i class="fa fa-rocket fa-fw"></i>代码发布系统<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                {% if info and 'git' in info.perm %}
                <li>
                    <a href="/project/project">项目管理</a>
                </li>
                {% endif %}
                {% if info and 'testing' in info.perm %}
                <li>
                    <a href="/project/testing">测试发布</a>
                </li>
                {% endif %}
                {% if info and 'apply' in info.perm %}
                <li>
                    <a href="/project/apply">申请发布</a>
                </li>
                {% endif %}
                {% if info and 'deploy' in info.perm %}
                <li>
                    <a href="/project/deploy">发布列表</a>
                </li>  
                 {% endif %}
            </ul>    
            </li> <!--代码发布系统结束-->
            <li><!--监控平台-->
            <a href="#"><i class="fa fa-eye fa-fw"></i>监控平台<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                {% if info and 'zabbix' in info.perm %}
                <li> 
                    <a href="/zabbix/#">zabbix监控</a>
                </li>
		<li>
                    <a href="/zabbix/jigui">监控概览</a>
                </li>
		<li>
                    <a href="/zabbix/template">模板管理</a>
                </li> 
		<li>
		   <a href="/zabbix/maintenance">维护周期</a>	
		</li>
                {% endif %}
            </ul>
            </li><!--监控平台结束-->
        </ul><!--菜单列表结束-->

    </div><!--sidebar-collapse end -->
</div><!--navbar-static-side 左边菜单结束 -->

<!--页面正文部分-->

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
        <div id='main-content' class="col-md-12" style='padding-top:20px;'>
		<div id="content-header">
			  <ul class="breadcrumb">
				<li><i class="fa fa-home fa-fw"></i><a href="/">Home</a><span class="divider"></span></li>
				{% block breadcrumb %}
				{% endblock %}
			  </ul> 
			  <hr>
    	</div><!--end content-header-->
            {% block body %}
            {% endblock %}
        </div>
        </div>
    </div>
</div>  <!--页面正文部分结束-->

</div><!--页面全局样式结束-->

<!--js 部分-->
     <script src="/static/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/static/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/vendor/bootstrap/js/bootstrap-datetimepicker.js"></script>    
    <script src="/static/vendor/bootstrap/js/bootstrap-datetimepicker.zh-CN.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/static/vendor/datatable/datatable.js"></script>
    <script src="/static/vendor/metismenu/metis-menu.min.js"></script>
    <script src="/static/vendor/validform.js"></script>
    <script src="/static/vendor/bootstrap-multiselect.js"></script>
    <script src='/static/vendor/alert/sweet-alert.min.js'></script> 
    <script src='/static/vendor/alert/bootstrap-treeview.js'></script>

    <script>
        $("#side-menu").metisMenu()
        {% block js %}
        {% endblock %}
    </script>



</body>

</html>
