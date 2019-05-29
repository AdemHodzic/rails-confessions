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
//= require activestorage
//= require turbolinks
//= require js-routes
//= require slideout
//= require_tree .
document.addEventListener('turbolinks:load', () => {
  (document.querySelectorAll('.notification .delete') || []).forEach(($delete) => {
    let $notification = $delete.parentNode;
    console.log($delete)
    console.log($notification)
    $delete.addEventListener('click', (e) => {
      $notification.style.display = 'none';
      e.preventDefault();
    });
  });

  (document.querySelectorAll('.confession') || []).forEach((confession) => {
    confession.addEventListener('click', (e) => {
      e.preventDefault();
      const id = confession.dataset.id;
      const url = Routes.confession_path(id);
      window.location = url;
    });
  });

  const slideout = new Slideout({
    'panel': document.getElementById('panel'),
    'menu': document.getElementById('menu'),
    'padding': 256,
    'tolerance': 70,
    side: 'right'
  });

  document.querySelector('#hamburgerMenu').addEventListener('click', function() {
    slideout.toggle();
  });
});