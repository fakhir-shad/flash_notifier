require "flash_notifier/version"

module FlashNotifier
  require 'flash_notifier/railtie' if defined?(Rails)
  class Engine < ::Rails::Engine; end
end
