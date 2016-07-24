# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogGifs/version'

Gem::Specification.new do |spec|
  spec.name          = "dogGifs"
  spec.version       = '1.1.0'
  spec.authors       = ["SteveC"]
  spec.email         = ["stevechenweb@gmail.com"]

  spec.summary       = %q{Ruby library that returns a dog gif}
  spec.description   = %q{Using animatedgif.me's json api it fetches a random gif of a dog within the database.}
  spec.homepage      = "https://github.com/SteveChenDC/DogGifs"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
