<!DOCTYPE html>
<html class="{$page.type|default:''}">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/includes/css/styles.less">
    <link rel="stylesheet" type="text/css" href="/includes/css/responsive.css">
    <script src="/includes/js/vendor/jquery.js"></script>
    <script src="/includes/js/foundation/responsive.js"></script>
    <script src="/includes/js/scripts.js"></script>
    <title>{$page.title|default:'Glitterrings'}</title>
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
<script>
    (function(i,s,o,g,r,a,m){ i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-57285676-1', 'auto');
    ga('send', 'pageview');

</script>
    {include file="partials/top-bar.tpl"}
    {$page.content|default:''}
    {include file="partials/footer.tpl"}

    {include file='partials/third-party-scripts.tpl'}
</body>
</html>