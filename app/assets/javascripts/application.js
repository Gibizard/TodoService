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
//= require jquery
//= require jquery_ujs
//= require_tree
console.log("WORK");
$(document).ready(function(){
  $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue',
    radioClass: 'iradio_square-blue',
  });

  $('.icheckbox_square-blue.checked').each(function(){
    this.closest('li').style.setProperty("text-decoration", "line-through");
  });

  $('.icheckbox_square-blue').on('ifChecked', function(event){
    this.closest('li').style.setProperty("text-decoration", "line-through");
  });
  $('.icheckbox_square-blue').on('ifUnchecked', function(event){
    this.closest('li').style.setProperty("text-decoration", "none");
  });

  $('.icheckbox_square-blue').on('ifToggled', function(event){
    event.preventDefault();
    this.closest(".check_form").submit();
  });
});

$(document).ready(function() {
  $('select').select2();
//  $("select").select2({
//    width: '100%' // for shure
//  });
  $('select').select2({
    minimumResultsForSearch: -1
  });
});

$(document).ready(function() {
  $('.overlay').hide();
  $('#new_todo').click(function() {
    $('.overlay').show();
  });
  $('#cancel_btn').click(function(event) {
    event.preventDefault();
    $('.overlay').hide();
  });
});
