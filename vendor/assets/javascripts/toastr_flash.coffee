buildFlash = () ->
  console.log('Inside Gem')
  toastr.options =
    positionClass: fetchFlashOption('placement', 'toast-bottom-right')
    timeOut: fetchFlashOption('timeout','3500')
    progressBar: fetchFlashOption('progress_bar',false)

  $.each $('[data-flash-notifier]'), (index, val) ->
    eval("toastr.#{$(val).data('flash-type')}('#{$(val).data('flash-msg')}')")

initializeFlashNotifier(buildFlash)