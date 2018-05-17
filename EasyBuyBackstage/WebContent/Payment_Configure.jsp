<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/layer/layer.js" type="text/javascript" ></script>          
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/dist/echarts.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>æ¯ä»éç½®</title>
</head>

<body>
<div class="margin clearfix">
 <div class="Configure_style">
    <div class="">
      <div class="title_name">ååç¨æ·æ¯ä»éç½®</div>
      <div class="info clearfix">
      <table class="table table-bordered">
        <thead>
         <th  width="150px">æ¯ä»åç§°</th>
         <th width="150px">ç¶æ</th>
         <th>æè¿°</th>
        </thead>
        <tbody>
       <tr>
       <td>å¨çº¿æ¯ä»ï¼é¶èï¼</td>
       <td>
       <label><input name="form-field-radio" type="radio" class="ace" checked="checked" onclick="Enable(this,'123')"><span class="lbl">å¯ç¨</span></label>
       <label><input name="form-field-radio" type="radio" class="ace" onclick="closes(this,'213')"><span class="lbl">å³é­</span></label>     
       </td>      
       <td>å¨çº¿æ¯ä»æ¯æåæ¹ä¸ä¹°æ¹éè¿å ç¹ç½ä¸ççµå­åå¡ç½ç«è¿è¡äº¤ææ¶ï¼é¶è¡ä¸ºå¶æä¾ç½ä¸èµéç»ç®æå¡çä¸ç§ä¸å¡ãå®ä¸ºä¼ä¸åä¸ªäººæä¾äºä¸ä¸ªå®å¨ãå¿«æ·ãæ¹ä¾¿ççµ... </td>
       </tr>
       <tr>
       <td>å¨çº¿æ¯ä»ï¼é¢å­ï¼</td>
       <td>
       <label><input name="form-field-radio4" type="radio" class="ace" checked="checked" onclick="Enable(this,'124')"><span class="lbl">å¯ç¨</span></label>
       <label><input name="form-field-radio4" type="radio" class="ace" onclick="closes(this,'214')"><span class="lbl">å³é­</span></label>     
       </td>      
       <td>å¨çº¿æ¯ä»æ¯æåæ¹ä¸ä¹°æ¹éè¿å ç¹ç½ä¸ççµå­åå¡ç½ç«è¿è¡äº¤ææ¶ï¼é¶è¡ä¸ºå¶æä¾ç½ä¸èµéç»ç®æå¡çä¸ç§ä¸å¡ãå®ä¸ºä¼ä¸åä¸ªäººæä¾äºä¸ä¸ªå®å¨ãå¿«æ·ãæ¹ä¾¿ççµ... </td>
       </tr>
       <tr><td>è´§å°ä»æ¬¾</td>
       <td>
       <label><input name="form-field-radio1" type="radio" class="ace" checked="checked" onclick="Enable(this,'125')"><span class="lbl">å¯ç¨</span></label>
       <label><input name="form-field-radio1" type="radio" class="ace" onclick="closes(this,'215')"><span class="lbl">å³é­</span></label>     
       </td>
       
       <td>å¨çº¿æ¯ä»æ¯æåæ¹ä¸ä¹°æ¹éè¿å ç¹ç½ä¸ççµå­åå¡ç½ç«è¿è¡äº¤ææ¶ï¼é¶è¡ä¸ºå¶æä¾ç½ä¸èµéç»ç®æå¡çä¸ç§ä¸å¡ãå®ä¸ºä¼ä¸åä¸ªäººæä¾äºä¸ä¸ªå®å¨ãå¿«æ·ãæ¹ä¾¿ççµ... </td>
     
       </tr>
       <tr>
       <td>ç¬¬ä¸æ¹å¨çº¿æ¯ä»</td>
       <td>
       <label><input name="form-field-radio2" type="radio" class="ace" checked="checked" onclick="Enable(this,'126')"><span class="lbl">å¯ç¨</span></label>
       <label><input name="form-field-radio2" type="radio" class="ace" onclick="closes(this,'216')"><span class="lbl">å³é­</span></label>     
       </td>       
       <td>æè°ç¬¬ä¸æ¹æ¯ä»ï¼å°±æ¯ä¸äºåäº§åæå¨å½å®¶ä»¥åå½åå¤åå¤§é¶è¡ç­¾çº¦ãå¹¶å·å¤ä¸å®å®ååä¿¡èªä¿éçç¬¬ä¸æ¹ç¬ç«æºææä¾çäº¤ææ¯æå¹³å°ãå¨éè¿ç¬¬ä¸æ¹æ¯ä»å¹³å°ç... </td>    
       </tr>
        <tr>
       <td>çº¿ä¸æ¯ä»</td>
       <td>
       <label><input name="form-field-radio3" type="radio" class="ace" checked="checked" onclick="Enable(this,'126')"><span class="lbl">å¯ç¨</span></label>
       <label><input name="form-field-radio3" type="radio" class="ace" onclick="closes(this,'217')"><span class="lbl">å³é­</span></label>     
       </td>       
       <td>æè°ç¬¬ä¸æ¹æ¯ä»ï¼å°±æ¯ä¸äºåäº§åæå¨å½å®¶ä»¥åå½åå¤åå¤§é¶è¡ç­¾çº¦ãå¹¶å·å¤ä¸å®å®ååä¿¡èªä¿éçç¬¬ä¸æ¹ç¬ç«æºææä¾çäº¤ææ¯æå¹³å°ãå¨éè¿ç¬¬ä¸æ¹æ¯ä»å¹³å°ç... </td>
       </tr>
       </tbody>
      </table>
      </div>
    </div><!--å¶ä»éç½®-->
  <div class="Other_style mt20">
    <div class="title_name">å¶ä»éç½®ä¿¡æ¯</div>
    <div class="mt10">
     <ul class="invoice deploy">
      <li class="name">åç¥¨</li>
      <li class="operating">  
       <span class=""><label><input name="radio" type="radio" class="ace" onclick="invoice_Enable()"><span class="lbl">å¯ç¨</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
       <label><input name="radio" type="radio" class="ace" onclick="invoice_closes()"><span class="lbl">å³é­</span></label></span>   
        <div class="Reply_style">
          <span class="title">éæ©åç¥¨ç±»å</span>
         <p><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl">æ®éçº¸è´¨åç¥¨</span></label></p>
          <p><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl">å¢å¼ç¨åç¥¨</span></label></p>
          <p><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl">çµå­åç¥¨</span></label></p>
        </div>
         </li>
      <li class="info">åç¥¨æ¯æä¸ååä½åä¸ªäººå¨è´­éååãæä¾ææ¥åæå¡ä»¥åä»äºå¶ä»ç»è¥æ´»å¨ä¸­ï¼æå¼å·åæ¶åçä¸å¡å­è¯ï¼æ¯ä¼è®¡æ ¸ç®çåå§ä¾æ®ï¼ä¹æ¯å®¡è®¡æºå³ãç¨å¡æºå³æ§æ³     </li>
     </ul>
      <ul class="invoice deploy">
      <li class="name">ä¼æ åµ</li>
      <li class="operating">  
       <span class="">
       <label><input name="radio1" type="radio" class="ace" ><span class="lbl">å¯ç¨</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
       <label><input name="radio1" type="radio" class="ace" ><span class="lbl">å³é­</span></label></span>          
         </li>
      <li class="info">åç¥¨æ¯æä¸ååä½åä¸ªäººå¨è´­éååãæä¾ææ¥åæå¡ä»¥åä»äºå¶ä»ç»è¥æ´»å¨ä¸­ï¼æå¼å·åæ¶åçä¸å¡å­è¯ï¼æ¯ä¼è®¡æ ¸ç®çåå§ä¾æ®ï¼ä¹æ¯å®¡è®¡æºå³ãç¨å¡æºå³æ§æ³     </li>
     </ul>
      <ul class="invoice deploy">
      <li class="name">æµæ£å·</li>
      <li class="operating">  
       <span class="">
       <label><input name="radio2" type="radio" class="ace" title="å¯ç¨"><span class="lbl">å¯ç¨</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
       <label><input name="radio2" type="radio" class="ace" title="å³é­"><span class="lbl">å³é­</span></label></span>          
         </li>
      <li class="info">å¯ä»¥ç´æ¥æµæ£ç¸åºçéé¢ï¼ä¸åéé¢çéå¶ï¼å¯ä»¥è®¾ç½®éé¢å¤§å°ï¼æææ¶é´ã</li>
     </ul>
     <ul class="invoice deploy">
      <li class="name">ä»£æ¶äºº</li>
      <li class="operating">  
       <span class="">
       <label><input name="radio2" type="radio" class="ace" title="å¯ç¨"><span class="lbl">å¯ç¨</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
       <label><input name="radio2" type="radio" class="ace" title="å³é­"><span class="lbl">å³é­</span></label></span>          
         </li>
      <li class="info">æ¯å¦å¯ç¨ä»£æ¶äººæä½ï¼å¦å®¢æ·èªå·±æ æ³åè´§ï¼å¯ä»¥è®¾ç½®ä¸ä¸ªä»£æ¶ç¹å¸®å¿ä»£æ¶ï¼èçæ¶é´ãè¯¥æä½æ¶ååºéºåå®¶ä½¿ç¨ï¼æ ¹æ®éæ±å¯ç¨ç¸åºçæä½æ¨¡å¼</li>
     </ul>
  </div>
  </div>
 </div>
 
</div>
</body>
</html>
<script>
 /*radioæ¿åäºä»¶*/
function Enable(){}
function closes(){}
 function Enable(ojb,id){
	    layer.alert('ç¡®è®¤è¦å¼å¯åï¼',{icon: 1},function(index){
		layer.msg('å¼å¯æå!',{icon:1,time:1000});
			
	});
 }
 function closes(ojb,id){
	    layer.alert('ç¡®è®¤è¦å³é­è¯¥æ¯ä»åè½åï¼',function(index){
		layer.msg('ä»¥å³é­!',{icon:1,time:1000});
			
		})
}
function invoice_Enable(){ $('.Reply_style').css('display','block');}
function invoice_closes(){$('.Reply_style').css('display','none')}	

</script>
