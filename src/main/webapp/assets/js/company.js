




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
	
	
	document.querySelector('#product-launchAndDiscontinue').onclick = () => {
		const form = document.querySelector('#getListByCompNo');
		const button = document.createElement('button');
		button.type = 'submit';
		// form.append(button);
		form.submit();
	};

	document.querySelector('#view-orders').onclick = () => {
		const form1 = document.querySelector('#getAllOrders');
		const button1 = document.createElement('button');
		button1.type = 'submit';
		// form.append(button);
		form1.submit();
	};
	
	document.querySelector('#byebye').onclick = () => {
		const form2 = document.querySelector('#logout');
		const button2 = document.createElement('button');
		button2.type = 'submit';
		// form.append(button);
		form2.submit();
	};

	$("#launch-btn").on("click",function(){
		$("#inputValue").val("1");
		const button2 = document.createElement('button');
		button5.type = 'submit';
		("#launchAndDiscontinueForm").submit();
		
	})

	$("#discontinue-btn").on("click",function(){
		$("#inputValue").val("0");
		const button2 = document.createElement('button');
		button5.type = 'submit';
		("#launchAndDiscontinueForm").submit();
	})

})