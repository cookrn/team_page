# CURRENT FILE :: team_page.gemspec
require File.expand_path("../lib/team_page/version", __FILE__)

# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name                      = "team_page"
  s.version                   = TeamPage::VERSION
  s.platform                  = Gem::Platform::RUBY
  s.authors                   = [ "Your Name" ]
  s.email                     = [ "your@email.com" ]
  s.homepage                  = "http://yourwebsite.com"
  s.description               = "A simple Rails 3 engine gem that adds a team page to any Rails 3 application."
  s.summary                   = "team_page-#{s.version}"

  s.rubyforge_project         = "team_page"
  s.required_rubygems_version = "> 1.3.6"

  s.add_dependency "activesupport" , "~> 3.0.7"
  s.add_dependency "rails"         , "~> 3.0.7"

  # All changes need to be committed to take effect since we're using
  # git to manage our gem's files
  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
