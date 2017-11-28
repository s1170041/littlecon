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
	$("#profiles-form .date").datepicker({
		minDate: 0
	});

	// プロフィールの処理
	if ($("#profiles-form").length == 1) {
		$(".address input[type='text']").on("keyup", function(){
			setTimeout(function(){
				if ($(".pref31").val() != "" && $(".addr31").val() != "") {
					$(".address .display-none").show();
				}
			},100);
		});
	}
});

$(function() {

	jQuery(function($) {
		$("#search-encounter-sm .trg_show_list").on("click", function(){
			var parent = $(this).parents(".search-encounter-block");
			parent.find("ul").slideToggle();
			if ($(this).hasClass("arrow-up")) {
				$(this).addClass("arrow-right").removeClass("arrow-up");
			} else {
				$(this).addClass("arrow-up").removeClass("arrow-right");			
			}
		});

		$("#search-encounter-pc .trg_show_list").hover(function(){
			$(this).find("ul").show();
			$(this).addClass("active-seb");		
		},function(){
			$(this).find("ul").hide();
			$(this).removeClass("active-seb");
		});		
	});
});
