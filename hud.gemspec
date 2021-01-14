require_relative 'lib/hud/version'

Gem::Specification.new do |spec|
  spec.name          = "hud"
  spec.version       = Hud::VERSION
  spec.authors       = ["dsofadog"]
  spec.email         = ["delaney@so.fa.dog"]

  spec.summary = %q{"Head up Display view screen builder"}
  spec.description   = %q{ Hud ui and api response builder"}
  spec.homepage      = "https://github.com/cococoder/hud"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'thor'
  spec.add_dependency 'mote'
end
