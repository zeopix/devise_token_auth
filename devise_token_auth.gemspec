$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_token_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_token_auth"
  s.version     = DeviseTokenAuth::VERSION
  s.authors     = ["Iván Guillén"]
  s.email       = ["ivan.guillen91@gmail.com"]
  s.homepage    = "http://github.com/zeopix/devise_token_auth"
  s.summary     = "Token based authentication for rails 5. Uses Devise + OmniAuth."
  s.description = "For use with client side single page apps such as the venerable https://github.com/lynndylanhurley/ng-token-auth."
  s.license     = "WTFPL"

  s.files      = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
  s.test_files.reject! { |file| file.match(/[.log|.sqlite3]$/) }

  s.add_dependency "rails", "< 6"
  s.add_dependency "devise", "> 4.1.1", "<= 4.2.1"

  s.add_development_dependency "sqlite3", "~> 1.3"
  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
end
