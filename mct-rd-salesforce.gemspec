Gem::Specification.new do |spec|
  spec.name          = "mct-rd-salesforce"
  spec.version       = "0.0.3"
  spec.authors       = ["Marcos C. Tinos"]
  spec.email         = ["marcoscastrot@gmail.com"]
  spec.summary       = "Gem that integrate person as a lead on salesforce"
  spec.description   = "Gem that connect and create, read, update and destroy person as a leads on salesforce"
  spec.homepage      = "https://github.com/marcoscastrot/mct-rd-salesforce"
  spec.license       = "MIT"
  spec.files         = ["lib/mct-rd-salesforce.rb", "lib/mct-rd-salesforce/lead.rb","lib/mct-rd-salesforce/client.rb"]
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  spec.add_dependency('restforce', '~> 2.1')

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
