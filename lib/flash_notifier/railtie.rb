require 'flash_notifier/flash_helper'

module FlashNotifier
  class Railtie < Rails::Railtie
    initializer 'build_flash.helper' do |app|
      ActionView::Base.send :include, FlashHelper
    end
  end
end