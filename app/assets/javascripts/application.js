//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){

  $('#add_answer').click(add_answer);

});

function add_answer()
{
  field = $('<div>');
  field.addClass('field');

  box = $('<input>');
  box.attr('type', 'text');
  box.attr('name', 'question[answers][][text]')
  field.append(box);

  cb = $('<input>');
  cb.attr('type', 'checkbox');
  cb.attr('name', 'question[answers][][correct]')
  field.append(cb);

  $('#answers').append(field);
}
