




$(function() {

	$('.changePassword').on('click', function() {
		$('.passwordInput').toggleClass("active");
		$('.login-data-section').toggleClass("hidden");
		// $('.changePassword').toggleClass("hidden");
	});

	$('#changePersonalProfile').on('click', function() {
		$('#compName').prop('disabled', false);
		$('#chargePerson').prop('disabled', false);
		$('#email').prop('disabled', false);
		$('#compPhone').prop('disabled', false);
		$('#address').prop('disabled', false);
	})

	$("input").on({
		keydown: function(e) {
			if (e.which === 32)
				return false;
		},
		change: function() {
			this.value = this.value.replace(/\s/g, "");
		}
	});

})

