window.fetchFlashOptions = ->
  options = $('[data-flash-notifier-options]').data('flash-notifier-options')
  if Object.keys(options).length > 0 then options else {}

window.initializeFlashNotifier = (method) ->
  try
    Turbolinks.supported
    $(document).on 'turbolinks:load', -> method()
  catch e
    $(document).ready -> method()