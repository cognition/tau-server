# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tau/server/version'

Gem::Specification.new do |spec|
  spec.name          = "tau-server"
  spec.version       = Tau::Server::VERSION
  spec.authors       = ["Ramon Brooker"]
  spec.email         = ["rbrooker@aetherealmind.com"]

  spec.summary       = %q{Tau is a server side ruby program that connects to multiple servers for configuration. A very light weigth, command line tool similar to salt.}
  spec.description   = %q{Tau is a server side ruby program that connects to multiple servers for configuration, and remote maintaince, by creating an ssh handshake that sends a discrete set of commands.}
  spec.homepage      = "https://github.com/cognition/tau-server"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "thor" 
  spec.add_dependency "net-ssh"






end
