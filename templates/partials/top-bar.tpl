<div class="fixed">
    <nav class="top-bar" data-topbar role="navigation">
        <ul class="title-area">
            <li class="name">
                <h1><a href="/">Glitterrings</a></h1>
            </li>
            <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
            <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
        </ul>

        <section class="top-bar-section">
            <!-- Right Nav Section -->
            <ul class="right">
                <li {if $page.type == 'about'|default:false}class="active"{/if}><a href="/about/">About</a></li>
                <li {if $page.type == 'work'|default:false}class="active"{/if}><a href="/work/">Work</a></li>
                <li {if $page.type == 'techniques'|default:false}class="active"{/if}><a href="/techniques/">Techniques</a></li>
                <li {if $page.type == 'contact'|default:false}class="active"{/if}><a href="/contact/">Contact</a></li>
                <li class=""><a href="http://blog.glitterrings.com" target="_blank">Blog</a></li>
            </ul>
        </section>
    </nav>
</div>
