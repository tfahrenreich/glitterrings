<!DOCTYPE html>
<html class="{$page.type|default:''}">
<head>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/includes/css/styles.less">
    <link rel="stylesheet" type="text/css" href="/includes/css/foundation.css">
    <script src="/includes/js/vendor/jquery.js"></script>
    <script src="/includes/js/foundation/foundation.js"></script>
    <script src="/includes/js/scripts.js"></script>
    <title>{$page.title|default:'Tim Fahrenreich'}</title>
    {if $page.css|default:false}
        {foreach $page.css as $css}
            <link rel="stylesheet" type="text/css" href="{$css}">
        {/foreach}
    {/if}
    {if $page.js|default:false}
        {foreach $page.js as $js}
            <script src="{$js}"></script>
        {/foreach}
    {/if}
</head>
<body>
    {$page.content|default:''}
    {include file='partials/third-party-scripts.tpl'}
    <script>
        $(document).foundation();
    </script>
</body>
</html>