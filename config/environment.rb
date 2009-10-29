
RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
 config.gem "thoughtbot-shoulda", :lib => "shoulda", :source => "http://gems.github.com"
 config.gem "authlogic"
  config.gem "graysky-translator", :lib => "translator"
  config.gem "josevalim-inherited_resources", :lib => 'inherited_resources'
# NOW IN PLUGIN:  config.gem "mustache"
  
  config.time_zone = 'UTC'
  config.i18n.default_locale = :es

  config.load_paths += %W( #{RAILS_ROOT}/lib )
end
