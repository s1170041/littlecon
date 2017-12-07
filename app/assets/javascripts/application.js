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
    
        $("#pc-view .trg_show_list").hover(function(){
            $(".ul-1").hide();
            $(this).find(".ul-1").show();
            $(this).addClass("active-seb");
        });


        $("#pc-view .trg_ul_2").hover(function(){
            $(".ul-2").hide();
            var parent = $(this).parent();
            parent.find(".ul-2").show();
        });

        $("#pc-view").on('click', function(event) {
            $(".ul-1, .ul-2").hide();
        });

        $("#sm-view .sm_trg_ul_1").on("click", function(){
            var parent = $(this).parent();
            addArrow($(this))       
            parent.find(".ul-1").slideToggle();
        });
        function addArrow(elm) {
            if (elm.hasClass("arrow-right")) {
                elm.addClass("arrow-up").removeClass("arrow-right");
            } else {
                elm.addClass("arrow-right").removeClass("arrow-up");
            }
        }
    });
});
