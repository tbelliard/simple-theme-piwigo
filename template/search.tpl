<header class="titrePage">
  <h2>{'Search'|@translate}</h2>
</header>

<form class="filter" method="post" name="search" action="{$F_SEARCH_ACTION}">
<fieldset>
  <legend>{'Filter'|@translate}</legend>
  <label>{'Search for words'|@translate}
    <input type="text" name="search_allwords"></label>
  <label><input type="radio" name="mode" value="AND" checked="checked">
    <span>{'Search for all terms'|@translate}</span></label>
  <label><input type="radio" name="mode" value="OR">
    <span>{'Search for any terms'|@translate}</span></label>
  <label>{'Search for Author'|@translate}
  <input type="text" name="search_author"></label>
</fieldset>

{if isset($TAG_SELECTION)}
<fieldset>
  <legend>{'Search tags'|@translate}</legend>
  {$TAG_SELECTION}
  <label><input type="radio" name="tag_mode" value="AND" checked="checked">
    <span>{'All tags'|@translate}</span></label>
  <label><input type="radio" name="tag_mode" value="OR">
    <span>{'Any tag'|@translate}</span></label>
</fieldset>
{/if}

<fieldset>
  <legend>{'Search by Date'|@translate}</legend>
    <p>{'Kind of date'|@translate}</p>
    <label><input type="radio" name="date_type" value="date_creation" checked="checked">
    {'Creation date'|@translate}</label>
    <label><input type="radio" name="date_type" value="date_available">
    {'Post date'|@translate}</label>

  <ul>
  <li><label>{'Date'|@translate}</label></li>
    <li>
    <select id="start_day" name="start_day">
        <option value="0">--</option>
        {section name=day start=1 loop=32}
        <option value="{$smarty.section.day.index}" {if $smarty.section.day.index==$START_DAY_SELECTED}selected="selected"{/if}>{$smarty.section.day.index}</option>
        {/section}
      </select>
    <select id="start_month" name="start_month">
        {html_options options=$month_list selected=$START_MONTH_SELECTED}
      </select>
    <input id="start_year" name="start_year" type="text">
    <input id="start_linked_date" name="start_linked_date" type="hidden" disabled="disabled">
  </li>
  <li>
    <a class="date_today" href="#" onClick="document.search.start_day.value={$smarty.now|date_format:"%d"};document.search.start_month.value={$smarty.now|date_format:"%m"};document.search.start_year.value={$smarty.now|date_format:"%Y"};return false;">{'today'|@translate}</a>
  </li>
  </ul>

  <ul>
  <li><label>{'End-Date'|@translate}</label></li>
    <li>
    <select id="end_day" name="end_day">
          <option value="0">--</option>
        {section name=day start=1 loop=32}
          <option value="{$smarty.section.day.index}" {if $smarty.section.day.index==$END_DAY_SELECTED}selected="selected"{/if}>{$smarty.section.day.index}</option>
        {/section}
      </select>
    <select id="end_month" name="end_month">
        {html_options options=$month_list selected=$END_MONTH_SELECTED}
      </select>
    <input id="end_year" name="end_year" type="text">
    <input id="end_linked_date" name="end_linked_date" type="hidden" disabled="disabled">
  </li>
  <li>
    <a class="date_today" href="#" onClick="document.search.end_day.value={$smarty.now|date_format:"%d"};document.search.end_month.value={$smarty.now|date_format:"%m"};document.search.end_year.value={$smarty.now|date_format:"%Y"};return false;">{'today'|@translate}</a>
    </li>
  </ul>
</fieldset>

<fieldset>
  <legend>{'Search Options'|@translate}</legend>
  <label>{'Search in albums'|@translate}
    <select class="categoryList" name="cat[]" multiple="multiple" >
      {html_options options=$category_options selected=$category_options_selected}
    </select>
  </label>
  <ul>
    <li><label>{'Search in sub-albums'|@translate}</label></li>
    <li><label>
      <input type="radio" name="subcats-included" value="1" checked="checked">{'Yes'|@translate}
    </label></li>
    <li><label>
      <input type="radio" name="subcats-included" value="0">{'No'|@translate}
    </label></li>
  </ul>
</fieldset>

<input type="submit" name="submit" value="{'Submit'|@translate}">
<input type="reset" value="{'Reset'|@translate}">
</form>
