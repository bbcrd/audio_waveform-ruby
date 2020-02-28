$:.unshift File.expand_path('../lib', __FILE__)

require 'audio_waveform/version'

Gem::Specification.new do |s|
  s.name          = "audio_waveform-ruby"
  s.version       = AudioWaveform::VERSION
  s.license       = 'Apache-2.0'
  s.authors       = ["Chris Needham"]
  s.email         = ["chris.needham@bbc.co.uk"]
  s.description   = "The audiowaveform_ruby gem provides a Ruby API for access to audio waveform data files generated by the audiowaveform program"
  s.summary       = "Reads, writes, and rescales audio waveform data files"
  s.homepage      = "https://github.com/bbc/audio_waveform-ruby"

  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^spec/audio_waveform/.*\.rb$})

  s.require_paths = ["lib"]

  s.add_dependency 'json', '~> 2.1.0'

  s.add_development_dependency 'rake', '~> 13.0.1'
  s.add_development_dependency 'rspec', '~> 3.7.0'
  s.add_development_dependency 'simplecov', '~> 0.15.1'
  s.add_development_dependency 'redcarpet', '~> 3.4.0'
  s.add_development_dependency 'yard', '~> 0.9.11'
end
