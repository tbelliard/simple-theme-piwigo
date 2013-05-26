// use this in case of conflicts with other js frameworks
// jQuery.noConflict();

jQuery(document).ready(function($){
  jQuery('.dropdown-toggle').dropdown();
  jQuery('.thumbnail a').tooltip({placement: 'left'});
  jQuery('.thumbnail img').tooltip({placement: 'left'});

  // put the title in the navbar
  jQuery('.navbar .brand').html(jQuery('#gallery_title').html());
  jQuery('#gallery_title').hide();
});
