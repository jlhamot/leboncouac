
$(document).ready(function() {	
		var musician_contact_url;
		
		$("#dialog-contact").dialog({
			autoOpen: false,
			height: 300,
			width: 350,
			modal: true,
			buttons: {
				"Envoyer": function() {
					$.ajax({
		            	type: "PUT",
						data: { name: $("#name").val(), 
								email: $("#email").val(), 
								phone: $("#phone").val(), 
								message: $("#message").val()
						},
						url: musician_contact_url ,
						dataType: "json",
						complete: function() {
							$("#name").val(""); 
							$("#email").val(""); 
							$("#phone").val(""); 
							$("#message").val("");
						}
		            });					
					$(this).dialog("close");
				},
				"Annuler": function() {
					$(this).dialog("close");
				}
			}
		});

		$(".contact_musician")
			.button()
			.click(function() {
				musician_contact_url = $(this).attr("musician_contact_url");
				$("#dialog-contact").dialog("open");
	});
});