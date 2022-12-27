lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mini_form/version'

Gem::Specification.new do |spec|
  spec.name          = 'mini_form'
  spec.version       = MiniForm::VERSION
  spec.authors       = ['Radoslav Stankov']
  spec.email         = ['rstankov@gmail.com']
  spec.description   = 'Sugar around ActiveModel::Model'
  spec.summary       = 'Easy to use form objects in Rails projects'
  spec.homepage      = 'https://github.com/RStankov/MiniForm'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin\/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)\/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel', '>= 4.0'

  spec.add_development_dependency 'bundler', '>= 2.1.4'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '3.12.0'
  spec.add_development_dependency 'rspec-mocks', '3.12.0'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
end
