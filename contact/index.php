<?php
include_once('../libs/setup.php');

$page = array(
    "title" => "Glitterrings | contact",
    "type" => "contact",
    'content' => $smarty->fetch($path.'/templates/contact/index.tpl'),
    //"js" => array("/includes/js/contact.js"),
    "css" => array("/includes/css/contact.less")
);

$smarty->run($page);