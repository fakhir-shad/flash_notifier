window.fetchFlashOption = (attribute, defaultValue) ->
  options = $('[data-flash-notifier-options]').data('flash-notifier-options')
  option = eval("options.#{attribute}")
  if option == undefined then defaultValue else option

window.initializeFlashNotifier = (method) ->
  try
    Turbolinks.supported
    $(document).on 'turbolinks:load', -> method()
  catch e
    $(document).ready -> method()