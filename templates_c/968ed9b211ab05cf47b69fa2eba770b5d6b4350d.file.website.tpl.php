<?php /* Smarty version Smarty-3.1.19, created on 2014-10-06 07:58:35
         compiled from "C:\xampp\htdocs\projects\glitterrings\templates\website.tpl" */ ?>
<?php /*%%SmartyHeaderCode:322654322f8b883b78-76370239%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '968ed9b211ab05cf47b69fa2eba770b5d6b4350d' => 
    array (
      0 => 'C:\\xampp\\htdocs\\projects\\glitterrings\\templates\\website.tpl',
      1 => 1412574882,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '322654322f8b883b78-76370239',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page' => 0,
    'css' => 0,
    'js' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_54322f8b8a6428_25536448',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54322f8b8a6428_25536448')) {function content_54322f8b8a6428_25536448($_smarty_tpl) {?><!DOCTYPE html>
<html class="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['page']->value['type'])===null||$tmp==='' ? '' : $tmp);?>
">
<head>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="./includes/css/styles.less">
    <script src="./includes/js/vendor/jquery.js"></script>
    <script src="./includes/js/scripts.js"></script>
    <title><?php echo (($tmp = @$_smarty_tpl->tpl_vars['page']->value['title'])===null||$tmp==='' ? 'Tim Fahrenreich' : $tmp);?>
</title>
    <?php if ((($tmp = @$_smarty_tpl->tpl_vars['page']->value['css'])===null||$tmp==='' ? false : $tmp)) {?>
        <?php  $_smarty_tpl->tpl_vars['css'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['css']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['page']->value['css']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['css']->key => $_smarty_tpl->tpl_vars['css']->value) {
$_smarty_tpl->tpl_vars['css']->_loop = true;
?>
            <link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['css']->value;?>
">
        <?php } ?>
    <?php }?>
    <?php if ((($tmp = @$_smarty_tpl->tpl_vars['page']->value['js'])===null||$tmp==='' ? false : $tmp)) {?>
        <?php  $_smarty_tpl->tpl_vars['js'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['js']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['page']->value['js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['js']->key => $_smarty_tpl->tpl_vars['js']->value) {
$_smarty_tpl->tpl_vars['js']->_loop = true;
?>
            <script src="<?php echo $_smarty_tpl->tpl_vars['js']->value;?>
"></script>
        <?php } ?>
    <?php }?>
</head>
<body>
    <?php echo (($tmp = @$_smarty_tpl->tpl_vars['page']->value['content'])===null||$tmp==='' ? '' : $tmp);?>

    <?php echo $_smarty_tpl->getSubTemplate ('partials/third-party-scripts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</body>
</html><?php }} ?>
