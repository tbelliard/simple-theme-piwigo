<ul class="inline">
{foreach from=$lang_switch.flags key=code item=flag name=f}
  <li>
  <a rel="nofollow" href="{$flag.url}" class="dropdown">
    <img class="flags" src="{$flag.img}" alt="{$flag.alt}" title="{$flag.alt}"/> 
  </a>
  </li>
{/foreach}
</ul>
{combine_css path="plugins/language_switch_menubar/language_switch_menu.css"}
