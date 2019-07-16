require File.join(File.dirname(__FILE__), '..', '..', 'dummy', 'app')
require 'rack/test'

module AppHelper
  def app
    MyApp
  end
end

World(Rack::Test::Methods, AppHelper)
