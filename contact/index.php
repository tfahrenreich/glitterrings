<?php
include_once('../libs/setup.php');

if(isset($_GET['submitted'])){
    $smarty->assign('submitted' , true);
};

$page = array(
    "title" => "Glitterrings | contact",
    "type" => "contact",
    'content' => $smarty->fetch($path.'/templates/contact/index.tpl'),
    "js" => array("/includes/js/foundation/foundation.abide.js"),
    "css" => array("/includes/css/contact.less")
);

$smarty->run($page);