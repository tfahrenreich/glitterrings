<?php
include_once('../libs/setup.php');

$page = array(
    "title" => "Glitterrings | Work",
    "type" => "work",
    'content' => $smarty->fetch($path.'/templates/work/index.tpl'),
    "js" => array("/includes/js/work.js" , "/includes/js/foundation/foundation.tab.js"),
    "css" => array("/includes/css/work.less"),
);

$smarty->run($page);