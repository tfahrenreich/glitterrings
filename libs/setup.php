<?php
$path = $_SERVER['DOCUMENT_ROOT'];

require_once('Smarty-3.1.19/libs/Smarty.class.php');
require_once('Smarty.gr.class.php');
$smarty = New customSmarty();
$smarty->setTemplateDir($path.'/templates')
    ->setCompileDir($path.'/templates_c')
    ->setCacheDir('../cache')
    ->force_compile = true;

$smarty->caching = 0;
