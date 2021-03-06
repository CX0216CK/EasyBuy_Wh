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
<script type="text/javascript" src="js/jquery.nestable.min.js"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>栏目</title>
</head>

<body>
<div class="margin" id="page_style">
<div class="operation">
<button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;删除</button>
<span class="submenu"><a href="javascript:void(0)" class="btn button_btn bg-deep-blue" title="添加栏目"  onclick="add_columns()"><i class="fa  fa-edit"></i>&nbsp;添加栏目</a></span>
</div>
<div class="Columns_list slideBox margin-top" id="Columns_list">
<div class="hd">
  <ul>
   <li>主导航栏目</li>
   <li>顶部栏目</li>
   <li>底部栏目</li>
  </ul>
  </div>
  <div class="bd">
  <ul class="main_column">
<table class="table table_list table_striped table-bordered  margin-top">
  <thead>
  <tr>
   <th width="7%">栏目名称</th>
   <th width="55%">链接地址</th>
   <th width="15%">添加时间</th>
   <th width="8%">级别</th>
   <th width="5%">状态</th>
   <th width="10%">操作</th>
   </tr>   
  </thead>
  <tbody>
  <tr>
  <td colspan="7" class="padding_none">
  <div class="dd" id="nestable">
  <ol class="dd-list">  
    <li class="dd-item" data-id="1">
    <div class="dd-handle">
       <table>
       <tbody>
       <tr>
        <td width="7%">首页</td>
        <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">一级</td>
        <td width="5%">显示</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'10')">删除</a>
         <a href="" class="btn btn-white button_btn">修改</a>
        </td>
        </tr>
        </tbody>
       </table>
    </div>    
    </li>
    <li class="dd-item" data-id="2">
       <div class="dd-handle">
       <table>
       <tbody>
       <tr>
        <td width="7%">全部产品</td>
         <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">一级</td>
        <td width="5%">显示</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'11')">删除</a>
         <a href="" class="btn btn-white button_btn">修改</a>
        </td>
        </tr>
        </tbody>
       </table>
       </div>
    </li>              
    <li class="dd-item" data-id="3">
      <div class="dd-handle dd-columns">
      <table>
       <tbody>
       <tr>
        <td width="7%">关于我们</td>
        <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">一级</td>
        <td width="5%">显示</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'12')">删除</a>
         <a href="" class="btn btn-white button_btn">修改</a>
        </td>
        </tr>
        </tbody>
       </table>
       </div>
        <ol class="dd-list">
          <li class="dd-item" data-id="4">
           <div class="dd-handle dd-handle_two">
             <table>
               <tbody>
               <tr>
                <td width="7%">公司介绍</td>
                <td width="55%">http://www.weiqing.com/page.php?id=1</td>
                <td width="15%">2016-08-22</td>
                <td width="8%">二级</td>
                <td width="5%">显示</td>
                <td width="10%">
                 <a href="" class="btn button_btn btn-danger">删除</a>
                 <a href="" class="btn button_btn btn-danger">修改</a>
                </td>
                </tr>
                </tbody>
               </table>
              </div>
             </li>
              <li class="dd-item" data-id="5">
                <div class="dd-handle dd-handle_two">
                <table>
               <tbody>
               <tr>
                <td width="7%">组织架构</td>
                 <td width="55%">http://www.weiqing.com/page.php?id=1</td>
                <td width="15%">2016-08-22</td>
                <td width="8%">二级</td>
                <td width="5%">显示</td>
                <td width="10%">
                 <a href="" class="btn button_btn btn-danger">删除</a>
                 <a href="" class="btn button_btn btn-danger">修改</a>
                </td>
                </tr>
                </tbody>
               </table>                    
                  </div> 
              </li>
          </ol>
      </li>
      <li class="dd-item" data-id="6">
          <div class="dd-handle">
         <table>
       <tbody>
       <tr>
        <td width="7%">团购商品</td>
        <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">一级</td>
        <td width="5%">显示</td>
        <td width="10%" class="operating">
         <a href="" class="btn btn-white button_btn">删除</a>
         <a href="" class="btn btn-white button_btn">修改</a>
        </td>
        </tr>
        </tbody>
       </table>              
          </div>
      </li>
      <li class="dd-item" data-id="7">
       <div class="dd-handle">
       <table>
       <tbody>
       <tr>
        <td width="7%">帮助中心</td>
         <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">一级</td>
        <td width="5%">显示</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'14')">删除</a>
         <a href="" class="btn btn-white button_btn">修改</a>
        </td>
        </tr>
        </tbody>
       </table>
       </div>
      </li>
       <li class="dd-item" data-id="8">
       <div class="dd-handle">
        <table>
       <tbody>
       <tr>
        <td width="7%">联系我们</td>
        <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">一级</td>
        <td width="5%">显示</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'15')">删除</a>
         <a href="" class="btn btn-white button_btn">修改</a>
        </td>
        </tr>
        </tbody>
       </table>
       </div>
      </li>
  </ol>
</div>  
 </td>
 </tr>
 </tbody>
 </table>
 </ul>
 <ul>
  <table class="table table_list table_striped table-bordered" id="sample-table" style="width:100%">
  <thead>
  <tr>
   <th width="50">排序</th>
   <th width="150">栏目名称</th>   
   <th >地址</th>
   <th width="80">所属分类</th>
   <th width="100">状态</th>
   <th width="150">时间</th>
   <th>操作</th>
   </tr>   
  </thead>
  <tbody>
   <tr>
   </tr>
  </tbody>
 </table>
 </ul>
 <ul>
 
 </ul>
</div>
</div>
</div>
<!--添加栏目-->
<div class="add_columns_style" id="add_columns_style" style=" display:none">
  <div class="add_style">
  <ul>
    <li class="clearfix"><label class="label_name col-xs-3">导航栏目名称：&nbsp;&nbsp;</label><div class="Add_content col-xs-9"><input name="" type="text"  class="col-xs-6"/></div>  
    </li>
     <li class="clearfix">
     <label class="label_name col-xs-3">添加位置：&nbsp;&nbsp;</label>
     <div class="Add_content col-xs-9">
     <label><input type="radio" name="checkbox" class="ace" checked="checked"><span class="lbl">主栏目</span></label>
     <label><input type="radio" name="checkbox" class="ace"><span class="lbl">顶部</span></label>
     <label><input type="radio" name="checkbox" class="ace"><span class="lbl">底部</span></label>
    </div> 
      </li>
       <li class="clearfix">
     <label class="label_name col-xs-3">自定义链接：&nbsp;&nbsp;</label>
     <div class="Add_content col-xs-9">
     <label class="l_f checkbox_time"><input type="checkbox" name="checkbox" class="ace" id="checkbox"><span class="lbl">是</span></label>
     <div class="Link_address" style="display:none">
        <input name="" type="text"  class="col-xs-6" placeholder="如：http://www.jd.com/?cu=true"/>
     </div>
    </div> 
      </li>
     <li class="clearfix"><label class="label_name col-xs-3">链接项目：&nbsp;&nbsp;</label><div class="Add_content col-xs-9">
     <select name="nav_menu" onchange="change('nav_name', this)">
              <option value="">请您选择链接项目</option>
                            <option value="page,1" title="公司简介">- 公司简介</option>
                            <option value="page,2" title="企业荣誉">-- 企业荣誉</option>
                            <option value="page,3" title="发展历程">-- 发展历程</option>
                            <option value="page,4" title="联系我们">-- 联系我们</option>
                            <option value="page,5" title="人才招聘">- 人才招聘</option>
                            <option value="page,6" title="营销网络">- 营销网络</option>
                            <option value="product_category,0" title="产品中心"> 产品中心</option>
                            <option value="product_category,1" title="电子数码">- 电子数码</option>
                            <option value="product_category,4" title="智能手机">-- 智能手机</option>
                            <option value="product_category,5" title="平板电脑">-- 平板电脑</option>
                            <option value="product_category,2" title="家居百货">- 家居百货</option>
                            <option value="product_category,3" title="母婴用品">- 母婴用品</option>
                            <option value="article_category,0" title="文章中心"> 文章中心</option>
                            <option value="article_category,1" title="公司动态">- 公司动态</option>
                            <option value="article_category,2" title="行业新闻">- 行业新闻</option>
                           </select>
     
     </div>  
    </li>
    <li class="clearfix"><label class="label_name col-xs-3">上级分类：&nbsp;&nbsp;</label><div class="Add_content col-xs-9"><select name="parent_id">
              <option value="0">无</option>
                            <option value="1"> 公司简介</option>
                            <option value="2">- 企业荣誉</option>
                            <option value="3">- 发展历程</option>
                            <option value="4">- 联系我们</option>
                            <option value="5"> 产品中心</option>
                            <option value="10">- 电子数码</option>
                            <option value="22">-- 智能手机</option>
                            <option value="23">-- 平板电脑</option>
                            <option value="11">- 家居百货</option>
                            <option value="12">- 母婴用品</option>
                            <option value="6"> 文章中心</option>
                            <option value="13">- 公司动态</option>
                            <option value="14">- 行业新闻</option>
                            <option value="7"> 营销网络</option>
                            <option value="15"> 企业荣誉</option>
                            <option value="8"> 人才招聘</option>
                            <option value="9"> 联系我们</option>
                           </select></div>  
    </li>
    <li class="clearfix"><label class="label_name col-xs-3">排序：&nbsp;&nbsp;</label><div class="Add_content col-xs-9"><input name="" type="text"  class="col-xs-1"/></div>  
    </li>
  </ul>
  </div>
</div>
</body>
</html>
<script type="text/javascript">

jQuery(function($){			
	$('.dd').nestable();							
    $('.dd-handle a').on('mousedown', function(e){
		e.stopPropagation();
	});
});
/**栏目删除**/
function columns_delete(obj,id){
	layer.confirm('确认要删除吗？',{icon:0,},function(index){
		$(obj).parents("li").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});	
	}
/**顶部删除**/
function top_columns_delete(obj,id){
		layer.confirm('确认要删除吗？',{icon:0,},function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});	
	
	}
function add_columns(){
	layer.open({
        type: 1,
        title: '添加栏目',
		maxmin: false, 
		shadeClose:false, //点击遮罩关闭层
        area : ['600px' , '400px'],
        content:$('#add_columns_style'),
		btn:['提交','取消'],
	 });
	
	
}
jQuery(".slideBox").slide({trigger:"click",easing:"easeOutElastic"});
/**********数据**********/
var dataSet=[
['1','帮助中心','http://www.weiqing.com/help.php?name=23&id=1','帮助中心','启用','2016-04-12',' <a href="javascrpit:void()" class="btn bg-deep-blue button_btn" onclick="top_columns_delete(this,'+15+')">删除</a><a href="" class="btn bg-deep-blue button_btn">修改</a>'],
	['1','帮助中心','http://www.weiqing.com/help.php?name=23&id=1','帮助中心','启用','2016-04-12',' <a href="javascrpit:void()" class="btn bg-deep-blue button_btn" onclick="top_columns_delete(this,'+15+')">删除</a><a href="" class="btn bg-deep-blue button_btn">修改</a>'],
['1','帮助中心','http://www.weiqing.com/help.php?name=23&id=1','帮助中心','启用','2016-04-12',' <a href="javascrpit:void()" class="btn bg-deep-blue button_btn" onclick="top_columns_delete(this,'+15+')">删除</a><a href="" class="btn bg-deep-blue button_btn">修改</a>']
];
jQuery(function($) {
				var oTable1 = $('#sample-table').dataTable({
				"data": dataSet,
				
				  "fnInitComplete": function() {
                this.fnAdjustColumnSizing(true);
                },
                "bJQueryUI": true,
				"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		        "bStateSave": true,//状态保存
				"searching": false,
		        "aoColumnDefs": [{"orderable":false,"aTargets":[0,2,3,5]
				}]
		
			   });
			
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			});
$('#checkbox').on('click',function(){
	if($('.checkbox_time input[name="checkbox"]').prop("checked")){
		 $('.Link_address').css('display','block');
		}
	else{		
		 $('.Link_address').css('display','none');
		}	
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
</script>
