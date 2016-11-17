#= require_self
#= require jquery
#= require jquery-ui
#= require jquery_ujs
#= require bootstrap-sprockets
#= require moment
#= require bootstrap-datetimepicker
#= require_tree ./events

window.PPIS ||= {}
PPIS.Views ||= {}
PPIS.Views.Events ||= {}

PPIS.init = ->
  appData = $('body').data()
  if viewName = appData['view']
    [viewsClass, viewName] = viewName.split(".")
    if appData['environment'] == 'development'
      console.log(viewsClass, viewName)
    if PPIS.Views[viewsClass]?[viewName]?
      (window.view = new PPIS.Views[viewsClass][viewName]).render()
    if PPIS.Views[viewsClass]?["Common"]?
      (new PPIS.Views[viewsClass]["Common"]).render()

  $(document).ready ->
    $(".alert").delay(5000).slideUp()
    return

  $('.modal').on 'show.bs.modal', (e)->
    return

  $('.modal').on 'hidden.bs.modal', (e)->
    $(".alert").addClass("fade")
    return
  return
