<? 
require "../inc/config.php";
require "../inc/pagenav.class.php";

if(isset($_REQUEST["page"]) ){$intCurPage=$_REQUEST["page"];}else{$intCurPage=1;}



if(!isset($_GET[pdir])){
	
//取出一级目录目录列表
$strSQL="SELECT id_proddir,name FROM productdir WHERE level='1' and dele='1' order by ordernum ASC";
$objDB->Execute($strSQL);
$arrnewsdir_ch=$objDB->GetRows();


$intRows = 10;
$strSQLNum = "SELECT COUNT(*) as num from productinfo  where  dele=1";  //目录不存在 查询所有新闻

$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 


$strSQL = "select id_prodinfo,id_proddir,title,intro from productinfo  where  dele=1  order by id_prodinfo desc" ;//目录不存在 
$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrnews=$objDB->GetRows();




}else{
	
//取出二级目录列表
$strSQL="SELECT id_proddir,name FROM productdir WHERE fatherid='".$_GET[pdir]."' and dele='1' order by ordernum ASC";
$objDB->Execute($strSQL);
$arrnewsdir_ch=$objDB->GetRows();

$intRows = 10;
$strSQLNum = "SELECT COUNT(*) as num from productinfo  where  dele=1 and id_proddir ='".$_GET[pdir]."' ";  //按目录查新闻

$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select id_prodinfo,id_proddir,title,intro from productinfo  where  dele=1 and id_proddir='".$_GET[pdir]."'   order by id_prodinfo desc" ;//按目录查新闻

$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrnews=$objDB->GetRows();


if(sizeof($arrnews)==0){
$intRows = 10;
$strSQLNum = "SELECT COUNT(*) as num from productinfo as a left join productdir as b on a.id_proddir=b.id_proddir  where a.dele=1 and b.fatherid='".$_GET[pdir]."' ";  //按目录查新闻

$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select a.id_prodinfo,a.id_proddir,a.title,a.intro from productinfo as a left join productdir as b on a.id_proddir=b.id_proddir  where a.dele=1 and b.fatherid='".$_GET[pdir]."'   order by a.id_prodinfo desc" ;//按目录查新闻

$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrnews=$objDB->GetRows();	
}



}

//如果目录存在 查出目录名
if(isset($_GET[pdir])){
$strsql="select id_proddir,name from productdir where id_proddir=$_GET[pdir] and dele=1";
$objDB->Execute($strsql);
$onenewsdir_ch=$objDB->fields();
}
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
.pagenav{height:22px; width:320px;float:left; text-align:center}
.bar_txt{ margin-left:3px; margin-top:5px;}
.footer {line-height:23px; height:auto; text-align:center; border-top:1px solid #999999; background:#c9daef}
.indexlist{ height:auto;}
.clear{ clear:both;}


.indexbox320{float:left;margin-top:10px;margin-bottom:10px;margin-left:5px;width:320px; }
.indexbox320 p{margin-top:5px; FONT-SIZE: 12px;}

.indexmenu { margin-left:5px;width:310px;line-height:23px; border-bottom:1px solid #ccc; height:auto; }
.indexmenu a{ color:#000000}
.indexmenu a:link{ color:#000000}
.indexmenu a:hover{ color:#000000}
.indexmenu a:visited{ color:#000000}


.caselist{ height:auto; float:left; width:310px; }
.caselist ul{ margin:0px; display:inline; float:left; }
.caselist li{float:left; height:120px;line-height:20px; width:310px;border-bottom:none; margin-top:10px;}
.caselist ul li a {	color: #494949;	text-decoration: none;}
.caselist ul li a:hover{  color: #494949; text-decoration: underline}
.caselist img{width:100px;border:1px solid #ccc; float:left; margin-right:5px;}
 
</style>
</head>
<body style="width:320px;margin:0 auto;">

<div class="mainbox">

<? require "../logo.php"; ?>

<div class="bar"><div class="bar_txt">
<? if(!isset($_GET[pdir])){?>
<a href="/">首页</a> > <a href="/product/products.php">产品中心</a>
<? }else{?>
<a href="/">首页</a> > <a href="/product/products.php">产品中心</a> > <a href="#"><?=$onenewsdir_ch[name];?></a>
<? }?>
</div>
</div>

<div class="indexmenu" style="text-align:left">
<? for($i=0;$i<sizeof($arrnewsdir_ch);$i++){?>
<a href="/product/products.php?pdir=<?=$arrnewsdir_ch[$i][id_proddir]?>"><strong><?=$arrnewsdir_ch[$i][name]?></strong></a> | 
<? }?>
</div>

<div class="caselist">
<ul>
<? for($i=0;$i<sizeof($arrnews);$i++){
   //找出关联图片
$strsql="select id_prodinfo,opicname as pic from productpic where id_prodinfo='".$arrnews[$i][id_prodinfo]."' ";
$objDB->Execute($strsql);
$onepic=$objDB->fields();
?>
<li><img src="/upload/product/<?=$onepic[pic];?>" alt="" /><a href="productview.php?pid=<?=$arrnews[$i][id_prodinfo]?>&pdir=<?=$arrnews[$i][id_proddir]?>"><strong><?=$arrnews[$i][title];?></strong></a><br>
  <a href="productview.php?pid=<?=$arrnews[$i][id_prodinfo]?>&pdir=<?=$arrnews[$i][id_proddir]?>"><?=$arrnews[$i][intro];?></a></li>
<? }?>
</ul>
</div>
<div class="pagenav"><?php if(strlen($strNavigate)!=65){echo $strNavigate;}?></div>
<div class="clear"></div>   
  
<? require "../footer.php"; ?>

</div><!--end mainbox!-->

</body>
</html>