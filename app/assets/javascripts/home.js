# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function(){
	$('#h2').hover(function(){
		$(this).click(color: #FF0000);
	});
	$mysqlhost = "localhost";
	$mysqluser = "LUYP";
	$mydqlpasswd = "p30313238";

	$link = @mysql_connect($mysqlhost, $mysqluser, $mydqlpasswd);

	$mysql_query("set names utf-8");
	$mysqldbname = "COLADB";
	$mysql_select_db($mysqldbname);

	$regions = mysql_query("select a03a3_regioncode from COLADB");
	$regionCodeArr = array();
	$regionCount = 0;
	while($rows = mysql_fetch_array($regions)){
		$regionCodeArr[$regionCount] = $rows[Region_Name];
		$regionCount++;
	}
	for (var $i = 0; $i < count($regionCodeArr); i++) ${
		echo"document.getElementById("regionList").options[$i] = new Option($regionCodeArr[$i], $regionCodeArr[$i]);";
	}
});