jQuery(document).ready(function(){
   jQuery('.person-toggle').click(function(e){
     e.preventDefault();
     var personId = jQuery(this).attr('id').split('-')[1];
     if(jQuery('#person-' + personId + '-summary').is(':visible')){
      jQuery('#person-' + personId + '-summary').hide();
      jQuery('#person-' + personId + '-description').show();
      jQuery(this).html('&laquo; less');
     } else {
      jQuery('#person-' + personId + '-summary').show();
      jQuery('#person-' + personId + '-description').hide();
      jQuery(this).html('more &raquo;');
     }
   });
});
