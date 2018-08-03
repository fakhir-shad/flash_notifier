buildNotyFlash = () ->
  console.log('Noty Flash')
  Noty.overrideDefaults({
    layout: fetchFlashOption('placement','topRight')
    theme: fetchFlashOption('theme','mint')
    timeout: fetchFlashOption('timeout','3500')
    progressBar: fetchFlashOption('progress_bar',false)
  })
  $.each $('[data-flash-notifier]') , (index , val) ->
   new Noty({
     text: $(val).data('flash-msg')
     type: $(val).data('flash-type')
     theme: 'mint'
     timeout: 4000
     progressBar: false
   }).show()

initializeFlashNotifier(buildNotyFlash)