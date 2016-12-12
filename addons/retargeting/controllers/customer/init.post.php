<?php

if ( !defined('AREA') ) { die('Access denied'); }

if( !empty($_SESSION['auth']['user_id']) ){
    $retargeting_set_email = db_get_field("SELECT email FROM ?:users WHERE user_id=?i", $_SESSION['auth']['user_id']);
    $view->assign('retargeting_set_email', $retargeting_set_email);
}

?>