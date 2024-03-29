<?php

define ("WEBROOT", "http://localhost/cdr/");
define ("FSROOT", "/var/www/html/cdr/");



define ("LIBDIR", FSROOT."lib/");


define ("HOST", "localhost");
define ("PORT", "3306");
define ("USER", "root");
define ("PASS", "gandalf");
define ("DBNAME", "RedNeck");
define ("DB_TYPE", "mysql"); // mysql or postgres


define ("DB_TABLENAME", "cdr");
 
// Regarding to the dst you can setup an application name
// Make more sense to have a text that just a number
// especially if you have a lot of extension in your dialplan
$appli_list['1711']=array("myappli_01");
$appli_list['1712']=array("myappli_02");
$appli_list['1713']=array("myappli_03");


include (FSROOT."lib/DB-modules/phplib_".DB_TYPE.".php");


function DbConnect()
  {
	
	$DBHandle = new DB_Sql();
	$DBHandle -> Database = DBNAME;
	$DBHandle -> Host = HOST;
	$DBHandle -> User = USER;
	$DBHandle -> Password = PASS;

	$DBHandle -> connect ();


	return $DBHandle;
}


function getpost_ifset($test_vars)
{
	if (!is_array($test_vars)) {
		$test_vars = array($test_vars);
	}
	foreach($test_vars as $test_var) { 
		if (isset($_POST[$test_var])) { 
			global $$test_var;
			$$test_var = $_POST[$test_var]; 
		} elseif (isset($_GET[$test_var])) {
			global $$test_var; 
			$$test_var = $_GET[$test_var];
		}
	}
}



function display_minute($sessiontime){
		global $resulttype;
		if ((!isset($resulttype)) || ($resulttype=="min")){  
				$minutes = sprintf("%02d",intval($sessiontime/60)).":".sprintf("%02d",intval($sessiontime%60));
		}else{
				$minutes = $sessiontime;
		}
		echo $minutes;
}

function display_2dec($var){		
		echo number_format($var,2);
}

function display_2bill($var){	
		$var=$var/100;
		echo '$ '.number_format($var,2);
}

function remove_prefix($phonenumber){
		
		if (substr($phonenumber,0,3) == "011"){
					echo substr($phonenumber,3);
					return 1;
		}
		echo $phonenumber;
}


function display_acronym($field){		
		echo '<acronym title="'.$field.'">'.substr($field,0,7).'...</acronym>';		
}




?>
