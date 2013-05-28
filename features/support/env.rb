# encoding: UTF-8
#config files
require "rack/test"

ENV["APP_ROOT"] = File.expand_path(File.dirname(__FILE__)) + "/../.."
ENV["RACK_ENV"] = "test" unless ENV["RACK_ENV"]

ENV['APP_RU'] = ENV["APP_ROOT"] + '/config.ru'

World(Rack::Test::Methods)
def app
  eval("Rack::Builder.new {( " + File.read(ENV["APP_RU"]) + "\n )}")
end
#Capybara.app = Rack::Builder.parse_file(File.expand_path(File.dirname(__FILE__)+"/../../config.ru")).first
