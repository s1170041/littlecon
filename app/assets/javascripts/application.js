// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require bootstrap-sprockets
$(function() {
	$(".date").datepicker({
		minDate: 0
	});

	if ($("#profiles-form").length == 1) {
		$("#profiles-form .address input[type='text']").on("keyup", function(){
			setTimeout(function(){
				if ($(".pref31").val() != "" && $(".addr31").val() != "") {
					$(".address .display-none").show();
				}
			},10);
		});
	}
});
