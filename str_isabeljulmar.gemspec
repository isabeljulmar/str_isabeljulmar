
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_isabeljulmar/version"

Gem::Specification.new do |spec|
  spec.name          = "str_isabeljulmar"
  spec.version       = StrIsabeljulmar::VERSION
  spec.authors       = ["isabel"]
  spec.email         = ["isabel.youthboard@futureindesign.org"]

  spec.summary       = "Learning about gems"
  spec.description   = "Learning how to publish a gem"
  spec.homepage      = "https://github.com/isabeljulmar/str_isabeljulmar"
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
  spec.add_development_dependency "rspec/minitest", "~> "
end
