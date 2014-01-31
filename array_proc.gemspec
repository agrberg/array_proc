Gem::Specification.new do |s|
  s.name        = 'array_proc'
  s.version     = '0.0.1'
  s.date        = '2012-03-23'
  s.summary     = 'Turn an array into an array of procs to be called on an object.'
  s.description = 'Adds the to_proc method to the array class.'
  s.authors     = ['Aaron Rosenberg']
  s.email       = 'aarongrosenberg@gmail.com'
  s.files       = ['lib/array_proc.rb']
  s.homepage    = 'https://github.com/LtCmdDudefellah/array_proc'

  s.add_development_dependency 'rspec', '~> 2.0', '>= 2.0.0'
  s.add_development_dependency 'simplecov', '~> 0.8', '>= 0.8.0'
end
