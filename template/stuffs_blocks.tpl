{foreach from=$blocks item=block key=key}
  <div class="stuffs_block">
    {if isset($block.TITLE)}
    <header class="titrePage">
      {if !empty($block.U_EDIT)}
        <ul class="categoryActions">
          <li><a href="{$block.U_EDIT}"><i class="icon-edit icon-white"></i></a></li>
        </ul>
      {/if}
      {if isset($block.TITLE_URL)}
        <h2><a href="{$block.TITLE_URL}">{$block.TITLE}</a></h2>
      {else}
        <h2>{$block.TITLE}</h2>
      {/if}
    </header>
    {/if}
    <div id="stuffs_block_{$block.ID}" class="subcontent">
      {include file=$block.TEMPLATE}
    </div>
  </div>
{/foreach}
