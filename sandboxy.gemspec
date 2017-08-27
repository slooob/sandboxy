# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'sandboxy', 'version'), __FILE__)

Gem::Specification.new do |gem|
    gem.name                  = 'sandboxy'
    gem.version               = Sandboxy::VERSION
    gem.platform              = Gem::Platform::RUBY
    gem.summary               = 'Virtual data-oriented environments for Rails'
    gem.description           = 'Sandboxy allows you to use virtual data-oriented environments inside a Rails application while being able to switch in between at runtime.'
    gem.authors               = 'Slooob'
    gem.email                 = 'developer@slooob.com'
    gem.homepage              = 'https://developer.slooob.com/open-source'
    gem.license               = 'MIT'

    gem.files                 = `git ls-files`.split("\n")
    gem.require_paths         = ['lib']

    gem.post_install_message  = IO.read('INSTALL.md')

    gem.required_ruby_version = '>= 2.0'

    gem.add_dependency 'activerecord', '>= 4.0'

    gem.add_development_dependency 'sqlite3', '~> 1.3'
    gem.add_development_dependency 'shoulda_create', '~> 0.0'
    gem.add_development_dependency 'shoulda', '~> 3.5'
    gem.add_development_dependency 'factory_girl', '~> 4.8'
    gem.add_development_dependency 'rails', '>= 4.0'
    gem.add_development_dependency 'tzinfo-data', '~> 1.2017'
end
