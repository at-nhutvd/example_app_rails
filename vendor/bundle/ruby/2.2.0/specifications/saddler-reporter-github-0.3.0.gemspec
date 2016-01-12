# -*- encoding: utf-8 -*-
# stub: saddler-reporter-github 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "saddler-reporter-github"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["sanemat"]
  s.bindir = "exe"
  s.date = "2016-01-04"
  s.description = "Saddler reporter for GitHub."
  s.email = ["o.gata.ken@gmail.com"]
  s.homepage = "https://github.com/packsaddle/ruby-saddler-reporter-github"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Saddler reporter for GitHub."

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<octokit>, [">= 0"])
      s.add_runtime_dependency(%q<git_diff_parser>, ["< 3.0", ">= 2.0"])
      s.add_runtime_dependency(%q<saddler-reporter-support>, ["< 0.2", ">= 0.1"])
      s.add_runtime_dependency(%q<saddler-reporter-support-git>, ["< 0.4", ">= 0.3"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
    else
      s.add_dependency(%q<octokit>, [">= 0"])
      s.add_dependency(%q<git_diff_parser>, ["< 3.0", ">= 2.0"])
      s.add_dependency(%q<saddler-reporter-support>, ["< 0.2", ">= 0.1"])
      s.add_dependency(%q<saddler-reporter-support-git>, ["< 0.4", ">= 0.3"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<octokit>, [">= 0"])
    s.add_dependency(%q<git_diff_parser>, ["< 3.0", ">= 2.0"])
    s.add_dependency(%q<saddler-reporter-support>, ["< 0.2", ">= 0.1"])
    s.add_dependency(%q<saddler-reporter-support-git>, ["< 0.4", ">= 0.3"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
  end
end
