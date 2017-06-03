<?php
/*
Theme Name: SimpleNG-Murmuran
Version: 3.2.5
Description: SimpleNG theme for Piwigo (adapted to Murmuran)
Theme URI: 
Author: Saïmon (initial author) - Thomas Belliard (adaptations)
Author URI: http://saimon.org/
*/

$themeconf = array(
  'parent' => 'default',
  'load_parent_css' => false,
  'load_parent_local_head' => false,
  'name' => 'simpleng_murmuran',
  'theme_dir' => 'simpleng_murmuran',
  'icon_dir' => 'themes/default/icon',
  'img_dir'      => 'themes/default/images',
  'mime_icon_dir' => 'themes/default/icon/mimetypes/',
  'local_head' => 'local_head.tpl',
  'url' => 'http://saimon.org/simple-theme-piwigo/',
  'colorscheme' => 'dark'
);

// set this if you want to restrict the width of pictures to a specifc width
// global $user;
// $user['maxwidth'] = 800;

pwg_set_session_var('show_metadata', true);

$conf['level_separator'] = '/';

// debug - do not combine files
$conf['template_combine_files'] = false;

?>
