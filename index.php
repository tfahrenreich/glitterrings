<?php
include_once('libs/setup.php');

$page = array(
    "title" => "Glitterrings",
    "type" => "home",
    'content' => $smarty->fetch($path.'/templates/home/index.tpl'),
    "js" => array("/includes/js/home.js", "/includes/js/foundation/foundation.orbit.js"),
    "css" => array("/includes/css/home.less"),
    "foundationOptions" => "{orbit: {
        pause_on_hover: false,
        timer_speed: 5000,
        navigation_arrows: false,
        slide_number: false,
    }}"
);

$smarty->run($page);