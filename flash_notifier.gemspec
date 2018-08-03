
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "flash_notifier/version"

Gem::Specification.new do |spec|
  spec.name          = "flash_notifier"
  spec.version       = FlashNotifier::VERSION
  spec.authors       = ["fakhir-shad"]
  spec.email         = ["fakhir.shad@virtual-force.com"]

  spec.summary       = %q{Integrate Flash Messages with ease using Noty JS, Toastr JS or Bootstrap}
  spec.description   = %q{A simple Gem that allows you to integrate flash messages using Noty JS, Toastr JS or Bootstrap }
  spec.homepage      = "https://github.com/fakhir-shad/flash_notifier"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
