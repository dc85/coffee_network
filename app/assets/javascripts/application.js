// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(':input[title]').each(function() {
  var $this = $(this);
  if($this.val() === '') {
    $this.val($this.attr('title'));
  }
  $this.focus(function() {
    if($this.val() === $this.attr('title')) {
      $this.val('');
    }
  });
  $this.blur(function() {
    if($this.val() === '') {
      $this.val($this.attr('title'));
    }
  });
});