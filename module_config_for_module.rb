require 'debug'

module Ex
  module Config
    def self.included(host_class)
      host_class.extend ClassMethods
    end

    module ClassMethods
      def config
        @config ||= Configuration.new
      end

      def configure
        yield config
      end
    end

    extend ClassMethods

    class Configuration
      attr_accessor :api_key, :api_secret
    end
  end
end

module Ex
  include Ex::Config

  class << self
    def pera
      "pera"
    end
  end
end

debugger