// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require jquery.tablesorter.min.js
//= require_tree .

/**$.ajaxSetup({
    beforeSend:function(){
   		$('body').css('cursor', 'wait');
 	},
    complete:function(){
        $('body').css('cursor', 'auto');
    }
});
*/

$(document).ready(function(){
	$(".inscription_button").button();

	$("#musician_table").tablesorter({ 
       headers: { 
           6: { 
               sorter: false 
           },
		7: { 
               sorter: false 
           }
        },
		sortList: [[4,0], [5,0]]
	}); 	
});