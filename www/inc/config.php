<?php
session_start();
require_once("mysql.class.php");

$db_hostname="localhost"; 
$db_username="root";  
$db_password="123456";
$db_database="mobi_tysh"; 
$prefix="tysh_";

  

$objDB=new mysql($db_hostname,$db_username,$db_password,$db_database);
mysql_query("SET NAMES utf8"); 
mysql_query("set sql_mode=''"); 

$strSQL = "select iscopy,otherheader,title,keywords,description,icp,mapcode,statistics from siteset where id_siteset=1" ;
$objDB->Execute($strSQL);
$setinfo=$objDB->fields();


?>