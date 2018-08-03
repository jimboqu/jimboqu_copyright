
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jimboqu_copyright/version"

Gem::Specification.new do |spec|
  spec.name          = "jimboqu_copyright"
  spec.version       = JimboquCopyright::VERSION
  spec.authors       = ["jimboqu"]
  spec.email         = ["jamesm.quilter@gmail.com"]

  spec.summary       = %q{Small gem to generate some copyright text dynamically}
  spec.description   = %q{Adding some flycopy at the bottom of the page. A logo, name, message}
  spec.homepage      = "https://github.com/jimboqu"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
