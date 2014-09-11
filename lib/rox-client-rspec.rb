# encoding: UTF-8
require 'rspec'

module RoxClient

  module RSpec
    VERSION = '0.4.0'

    class Error < StandardError; end
    class PayloadError < Error; end
  end
end

Dir[File.join File.dirname(__FILE__), File.basename(__FILE__, '.*'), '*.rb'].each{ |lib| require lib }
