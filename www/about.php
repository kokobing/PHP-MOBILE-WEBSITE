<? 
require "inc/config.php";

$strSQL = "select content,title  from layout  where id_layout='$_REQUEST[pageid]'" ;
$objDB->Execute($strSQL);
$aboutcontent=$objDB->fields();

?>
﻿<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
<meta http-equiv="Cache-Control" content="no-cache"></meta>
<title><?php echo $setinfo[title];?></title>
<style type="text/css">
body,h1,h2,tr,td,h3,ul,ol,form,p{margin:0 0;padding:0 0;font-size:12px;;line-height:1.25em;}
body{ background:#797979;}
a:link{color:#000000;}
li{padding:2px 2px;}
img{border:0px;} 
ul,ol{list-style:none;}
li{border-bottom:1px solid #eee;}
a{color:#00E; text-decoration:none;}
a:link, a:visited{color:#00E; text-decoration:none;}
.c{border-top:2px solid #ff6500;}
.c1{vertical-align:middle;} 
.n{background:#efefef;padding:2px 0;margin:1px 0;}
.nf{color:#9a9a9a;}
.red{color:#FF0000;}
.vcent {vertical-align:middle;}
.ft{border-top:2px solid #f77c23;margin-top:2px;}
.logo{ text-align:center;}
.mainbox{ width:320px; height:auto; background:#FFFFFF;}
.bar{height:22px; width:320px; background:#C8E8F4;float:left;}
.bar_txt{ margin-left:3px; margin-top:5px;}
.footer {line-height:23px; height:auto; text-align:center; border-top:1px solid #999999; background:#c9daef}
.indexlist{ height:auto;}
.clear{ clear:both;}


.indexbox320{float:left;margin-top:10px;margin-bottom:10px;margin-left:5px;width:320px; }
.indexbox320 p{margin-top:5px; FONT-SIZE: 12px;}
 
</style>
</head>
<body style="width:320px;margin:0 auto;">

<div class="mainbox">

<? require "logo.php"; ?>

<div class="bar"><div class="bar_txt"><a href="/">首页</a> > <a href="#"><?=$aboutcontent[title];?></a></div>
</div>

<div class="indexlist">

    <div class="indexbox320"><p><?=$aboutcontent[content];?></p></div>

 </div>
 <div class="clear"></div>   
  
<? require "footer.php"; ?>

</div><!--end mainbox!-->

</body>
</html>