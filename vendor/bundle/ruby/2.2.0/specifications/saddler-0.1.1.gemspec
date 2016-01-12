# -*- encoding: utf-8 -*-
# stub: saddler 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "saddler"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["sanemat"]
  s.bindir = "exe"
  s.date = "2015-03-01"
  s.description = "Saddler."
  s.email = ["o.gata.ken@gmail.com"]
  s.executables = ["saddler"]
  s.files = ["exe/saddler"]
  s.homepage = "https://github.com/packsaddle/ruby-saddler"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Saddler."

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<saddler-reporter-text>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.8"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<saddler-reporter-text>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.8"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<saddler-reporter-text>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.8"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
  end
end
