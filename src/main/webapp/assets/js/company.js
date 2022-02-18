$(function(){

    $('.changePassword').on('click', function () {
        $('.passwordInput').toggleClass("active");
        $('.login-data-section').toggleClass("hidden");
        // $('.changePassword').toggleClass("hidden");
	});

    $('.changePersonalProfile').on('click',function(){
        $('.editCompName').prop('disabled', false);
        $('.editChargePerson').prop('disabled', false);
        $('.editEmail').prop('disabled', false);
        $('.editCompPhone').prop('disabled', false);
        $('.editAddress').prop('disabled', false);
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