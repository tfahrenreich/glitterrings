<?php
include_once('libs/setup.php');

$page = array(
    "title" => "Glitterrings",
    "type" => "home",
    'content' => $smarty->fetch($path.'/templates/home.tpl'),
    "js" => array("/includes/js/home.js", "/includes/js/foundation/foundation.orbit.js"),
    "css" => array("/includes/css/home.less")
);

$smarty->run($page);