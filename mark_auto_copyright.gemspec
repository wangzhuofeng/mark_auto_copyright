# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mark_auto_copyright/version"

Gem::Specification.new do |spec|
  spec.name          = "mark_auto_copyright"
  spec.version       = MarkAutoCopyright::VERSION
  spec.authors       = ["Mark"]
  spec.email         = ["wangzhuofeng@gmail.com"]

  spec.summary       = %q{Put in dynamic copyright info.}
  spec.description   = %q{ut in dynamic copyright info that will show the latest year.}
  spec.homepage      = "http://getmorebizonline.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
