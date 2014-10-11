<!DOCTYPE html>
<html class="{$page.type|default:''}">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/includes/css/styles.less">
    <link rel="stylesheet" type="text/css" href="/includes/css/responsive.css">
    <script src="/includes/js/vendor/jquery.js"></script>
    <script src="/includes/js/foundation/responsive.js"></script>
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
    {include file="partials/top-bar.tpl"}
    {$page.content|default:''}
    {include file='partials/third-party-scripts.tpl'}
    <script src="/includes/js/foundation/foundation.topbar.js"></script>
    <script>
    $(document).foundation();
    </script>
</body>
</html>