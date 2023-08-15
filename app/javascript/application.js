// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//= require jquery
//= require jquery_ujs
// require turbolinks
//= require activestorage
//= require popper
//= require bootstrap
//= require datatables
//= require_tree .

$("tr[data-link]").click(function() {
    window.location = $(this).data("link")
})

$("tr[data-link]").hover(function() {
    $(this).css('cursor', 'pointer');
})

$(function() {
    $('#patients-datatable').DataTable().destroy();
    var oTable = $("#patients-datatable").dataTable({});
});

