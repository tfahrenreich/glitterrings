<?php
include_once('../libs/setup.php');

$page = array(
    "title" => "Glitterrings | about",
    "type" => "about",
    'content' => $smarty->fetch($path.'/templates/about/index.tpl'),
    "js" => array("/includes/js/about.js"),
    "css" => array("/includes/css/about.less")
);

$smarty->run($page);