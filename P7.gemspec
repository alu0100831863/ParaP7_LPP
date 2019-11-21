lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "P7/version"

Gem::Specification.new do |spec|
  spec.name          = "P7"
  spec.version       = P7::VERSION
  spec.authors       = ["Jonathan Eliot Viera Rivas"]
  spec.email         = ["alu0100831863@ull.edu.es"]

  spec.summary       = %q{Clase gema P7.}
  spec.description   = %q{Clase gema lista y TDD}
  spec.homepage      = ""
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
	  spec.metadata["allowed_push_host"] = ""
  else
	  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
end
