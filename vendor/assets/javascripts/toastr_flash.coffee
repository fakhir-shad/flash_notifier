buildFlash = () ->
  toastr.options = fetchFlashOptions()

  $.each $('[data-flash-notifier]'), (index, val) ->
    eval("toastr.#{$(val).data('flash-type')}('#{$(val).data('flash-msg')}')")

buildOptions = () ->

initializeFlashNotifier(buildFlash)