# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'array_proc'
  s.version     = '1.0.2'
  s.summary     = 'Turn an array into an array of procs to be called on an object.'
  s.description = 'Adds `Array#to_proc`.'
  s.authors     = ['Aaron Rosenberg']
  s.email       = 'aarongrosenberg@gmail.com'
  s.files       = ['lib/array_proc.rb']
  s.homepage    = 'https://github.com/agrberg/array_proc'
  s.licenses    = ['MIT']
  s.metadata['rubygems_mfa_required'] = 'true'
  s.required_ruby_version = '>= 2.0' # rubocop:disable Gemspec/RequiredRubyVersion — This should work on any version of Ruby
end
