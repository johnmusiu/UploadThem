# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('input#upload_files').on 'change', ->
  $('#upload-file-info').html("")
  files = $(this).prop('files')
  console.log("kfkk")
  $('#upload-file-info').append(files[i].name) for i in [1 .. files.count]
