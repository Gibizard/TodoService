# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#$ -> # Уже бесполезно, жалко удалять
#  $("select").change (event) ->
#    project = $("select option:selected").text()
#    $("#form_selected").text(project)
$ ->
  $("#submit_btn").click (event) ->
    event.preventDefault()
    $("#form_id").submit()
