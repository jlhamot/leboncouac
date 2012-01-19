
$(document).ready(function() {	
		var name = $( "#name" ),
			email = $( "#email" ),
			phone = $( "#phone" ),
			message = $( "#message" ),
			musician_contact_url;
		
		$( "#dialog-contact" ).dialog({
			autoOpen: false,
			height: 300,
			width: 350,
			modal: true,
			buttons: {
				"Envoyer": function() {
					$.ajax({
		            	type: "PUT",
						url: musician_contact_url ,
						dataType: "json"
		            });					
					$( this ).dialog( "close" );
				},
				"Annuler": function() {
					$( this ).dialog( "close" );
				}
			}
		});

		$( ".contact_musician" )
			.button()
			.click(function() {
				musician_contact_url = $(this).attr("musician_contact_url");
				$( "#dialog-contact" ).dialog( "open" );
	});
});