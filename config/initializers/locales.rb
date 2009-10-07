
require 'yaml'

module I18n
  class << self
    alias :old_translate :translate

    def translate(key, options = {})
      begin
        scope = options[:scope] ? options[:scope].join('.') : ''
        ActiveRecord::Base.logger.debug "TRANSLATE: #{key} - scope: #{scope}"
      rescue Exception => e
        ActiveRecord::Base.logger.debug "TRANSLATE: #{e.message}"
      end
      old_translate(key, options)
    end

    def t(key, options = {})
      translate(key, options)
    end
  end
end