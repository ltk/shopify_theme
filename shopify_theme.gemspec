# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "shopify_theme/version"

Gem::Specification.new do |s|
  s.name        = "dev_shopify_theme"
  s.version     = ShopifyTheme::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["John Duff", "Lawson Kurtz"]
  s.email       = ["john.duff@shopify.com", "lawson.kurtz@viget.com"]
  s.homepage    = "https://github.com/ltk/shopify_theme"
  s.summary     = %q{*Insecure* command line tool for developing themes (Dev env only!)}
  s.description = %q{*Insecure* command line tool to help with developing Shopify themes. Provides simple commands to download, upload and delete files from a theme. Also includes the watch command to watch a directory and upload files as they change. (Dev env only!)}
  s.license     = 'MIT'

  s.add_dependency('thor', '>= 0.14.4')
  s.add_dependency('httparty', '~> 0.13.0')
  s.add_dependency('json', '~> 1.8.0')
  s.add_dependency('mimemagic')
  s.add_dependency('filewatcher')
  s.add_dependency('launchy')

  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest', '>= 5.0.0'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-debugger'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
