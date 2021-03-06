<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script type="text/javascript" src="js/Validform/Validform.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<title>管理员列表</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
<div class="margin Competence_style" id="page_style">
    <div class="operation clearfix">
<button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;删除</button>
 <a href="javascript:ovid()" id="administrator_add" class="btn button_btn bg-deep-blue"><i class="fa  fa-edit"></i>&nbsp;添加管理员</a>
  <select class="select Competence_sort" name="admin-role" size="1" id="Competence_sort">
					<option value="0">--选择分类--</option>
					<option value="1">超级管理员</option>
					<option value="2">普通管理员</option>
					<option value="3">栏目编辑</option>
				</select>
   <div class="search  clearfix">

   <input name="" type="text"  class="form-control col-xs-8"/><button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;搜索</button>
</div>
</div>
<div class="compete_list">
       <table id="sample_table" class="table table_list table_striped table-bordered dataTable no-footer">
		 <thead>
			<tr>
			  <th class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
			  <th>登录名</th>
			  <th>手机</th>
              <th>邮箱</th>
              <th>角色</th>
			  <th class="hidden-480">加入时间</th>  
              <th>状态</th>         
			  <th class="hidden-480">操作</th>
             </tr>
		    </thead>
             <tbody>
			  <tr>
				<td class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
				<td>admin123456</td>
				<td>13567878908</td>
				<td >3456778@qq.com</td>
				<td>超级管理员</td>
                <td>2016-9-20 10:23:23</td>
                <td class="td-status"><span class="label label-success label-sm">已启用</span></td>
				<td class="td-manage">
                 <a title="停用" onclick="Competence_close(this,'12')" href="javascript:;" class="btn button_btn btn-Dark-success">停用</a> 
                 <a title="编辑" onclick="Competence_modify('560')" href="javascript:;" class="btn button_btn bg-deep-blue">编辑</a>        
                 <a title="删除" href="javascript:;" onclick="Competence_del(this,'1')" class="btn button_btn btn-danger">删除</a>
                 <a title="查看" href="javascript:;" onclick="Competence_View(this,'1')" class="btn button_btn btn-green">查看</a>
				</td>
			   </tr>
               <tr>
				<td class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
				<td>化海天堂</td>
				<td>13567878908</td>
				<td >3456778@qq.com</td>
				<td>普通管理员</td>
                <td>2016-9-20 10:23:23</td>
                <td class="td-status"><span class="label label-success label-sm">已启用</span></td>
				<td class="td-manage">
                  <a title="停用" onclick="Competence_close(this,'12')" href="javascript:;" class="btn button_btn btn-Dark-success">停用</a> 
                 <a title="编辑" onclick="Competence_modify('560')" href="javascript:;" class="btn button_btn bg-deep-blue">编辑</a>        
                 <a title="删除" href="javascript:;" onclick="Competence_del(this,'1')" class="btn button_btn btn-danger">删除</a>
                 <a title="查看" href="javascript:;" onclick="Competence_View(this,'1')" class="btn button_btn btn-green">查看</a>
				</td>
			   </tr>
               <tr>
				<td class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
				<td>admin</td>
				<td>13567878908</td>
				<td >3456778@qq.com</td>
				<td>普通管理员</td>
                <td>2016-9-10 10:23:23</td>
                <td class="td-status"><span class="label label-success label-sm">已启用</span></td>
				<td class="td-manage">
                   <a title="停用" onclick="Competence_close(this,'12')" href="javascript:;" class="btn button_btn btn-Dark-success">停用</a> 
                 <a title="编辑" onclick="Competence_modify('560')" href="javascript:;" class="btn button_btn bg-deep-blue">编辑</a>        
                 <a title="删除" href="javascript:;" onclick="Competence_del(this,'1')" class="btn button_btn btn-danger">删除</a>
                 <a title="查看" href="javascript:;" onclick="Competence_View(this,'1')" class="btn button_btn btn-green">查看</a>
				</td>
			   </tr>												
		      </tbody>
	        </table>
     </div>
</div>
 <!--添加管理员-->
 <div id="add_administrator" class=" add_administrator" style="display:none">
   <div class="add_style add_administrator_style">
    <form action="" method="post" id="form-admin-add">
    <ul>
     <li class="clearfix">
     <label class="label_name col-xs-2 col-lg-2"><i>*</i>用户名：</label>
     <div class="formControls col-xs-6">
     <input type="text" class="input-text col-xs-12" value="" placeholder="" id="user-name" name="user-name" datatype="*2-16" nullmsg="用户名不能为空"></div>
    <div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
     <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>初始密码：</label>
	 <div class="formControls col-xs-6">
	 <input type="password" placeholder="密码" name="userpassword" autocomplete="off" value="" class="input-text col-xs-12" datatype="*6-20" nullmsg="密码不能为空">
	</div>
     <div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
       <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>确认密码：</label>
       <div class="formControls  col-xs-6">
	<input type="password" placeholder="确认新密码" autocomplete="off" class="input-text Validform_error  col-xs-12" errormsg="您两次输入的密码不一致！" datatype="*" nullmsg="请再输入一次新密码！" recheck="userpassword" id="newpassword2" name="newpassword2">
	</div>
	  <div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
      <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>性&nbsp;别：</label>
      <div class="formControls  skin-minimal col-xs-6">
		    <label><input name="form-field-radio" type="radio" class="ace" checked="checked"><span class="lbl">保密</span></label>&nbsp;&nbsp;
            <label><input name="form-field-radio" type="radio" class="ace"><span class="lbl">男</span></label>&nbsp;&nbsp;
            <label><input name="form-field-radio" type="radio" class="ace"><span class="lbl">女</span></label>
	  </div>
     </li>
     <li class="clearfix">
      <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>手&nbsp;机：</label>
      <div class="formControls col-xs-6">
		<input type="text" class="input-text col-xs-12" value="" placeholder="" id="user-tel" name="user-tel" datatype="m" nullmsg="手机不能为空">
	  </div>
	 <div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
      <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>邮&nbsp;箱：</label>
      <div class="formControls col-xs-6">
		<input type="text" class="input-text col-xs-12" placeholder="@" name="email" id="email" datatype="e" nullmsg="请输入邮箱！">
	   </div>
		<div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
      <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>角&nbsp;色：</label>
      <div class="formControls col-xs-6"> <span class="select-box" style="width:150px;">
				<select class="select" name="admin-role" size="1">
					<option value="0">超级管理员</option>
					<option value="1">管理员</option>
					<option value="2">栏目主辑</option>
					<option value="3">栏目编辑</option>
				</select>
				</span>
         </div>
     </li>
     <li class="clearfix">
			<label class="label_name col-xs-2 col-lg-2">备&nbsp;注：</label>
			<div class="formControls col-xs-6">
				<textarea name="" cols="" rows="" class="textarea col-xs-12" placeholder="说点什么...100个字符以内" dragonfly="true" onkeyup="checkLength(this);"></textarea>
				<span class="wordage">剩余字数：<span id="sy" style="color:Red;">100</span>字</span>
			</div>
		</li>
         <li class="clearfix col-xs-12 col-lg-12 align">
			
	  <input class="btn button_btn bg-deep-blue btn_height" type="submit" id="Add_Administrator" value="提交注册">
      <input name="reset" type="reset" class="btn button_btn btn-infobtn-gray btn_height" value="取消重置" />
		</li>
    </ul>
    </form>
	 </div>
   </div>
</body>
</html>
<script>
	/*添加管理员*/
$('#administrator_add').on('click', function(){
	layer.open({
    type: 1,
	title:'添加管理员',
	area: ['600px',''],
	shadeClose: false,
	content: $('#add_administrator'),
	
	});
})
$(function(){
	$("#Competence_sort").click(function(){
		var option=$(this).find("option:selected").text();
		var value=$(this).val();
		if(value==0){
			  
			$("#sample_table tbody tr").show()
			}
			else{
		$("#sample_table tbody tr").hide().filter(":contains('"+(option)+"')").show();	
			}
		}).click();	
	});

/*******滚动条*******/
$("body").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
/*管理员-停用*/
function Competence_close(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn button_btn btn-gray" onClick="Competence_start(this,id)" href="javascript:;" title="启用">启用</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success label-sm">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}

/*管理员-启用*/
function Competence_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn button_btn  btn-Dark-success" onClick="Competence_close(this,id)" href="javascript:;" title="停用">停用</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success label-sm">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
}
/****复选框选中******/
$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
});
	//表单验证提交
$("#form-admin-add").Validform({		
		 tiptype:2,
		callback:function(data){
		//form[0].submit();
		if(data.status==1){ 
                layer.msg(data.info, {icon: data.status,time: 1000}, function(){ 
                    location.reload();//刷新页面 
                    });   
            } 
            else{ 
                layer.msg(data.info, {icon: data.status,time: 3000}); 
            } 		  
			var index =parent.$("#iframe").attr("src");
			parent.layer.close(index);
			//
		}				
	});
//字数限制
function checkLength(which) {
	var maxChars = 100; //
	if(which.value.length > maxChars){
	   layer.open({
	   icon:2,
	   title:'提示框',
	   content:'您输入的字数超过限制!',	
    });
		// 超过限制的字数了就将 文本框中的内容按规定的字数 截取
		which.value = which.value.substring(0,maxChars);
		return false;
	}else{
		var curr = maxChars - which.value.length; //250 减去 当前输入的
		document.getElementById("sy").innerHTML = curr.toString();
		return true;
	}
};	
</script>
