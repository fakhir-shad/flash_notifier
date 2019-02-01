buildNotyFlash = () ->
  Noty.overrideDefaults(fetchFlashOptions())
  $.each $('[data-flash-notifier]') , (index , val) ->
   new Noty({
     text: $(val).data('flash-msg')
     type: $(val).data('flash-type')
   }).show()

initializeFlashNotifier(buildNotyFlash)