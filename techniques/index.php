<?php
include_once('../libs/setup.php');

$page = array(
    "title" => "Glitterrings | techniques",
    "type" => "techniques",
    'content' => $smarty->fetch($path.'/templates/techniques/index.tpl'),
    "js" => array("/includes/js/techniques.js"),
    "css" => array("/includes/css/techniques.less")
);

$smarty->run($page);