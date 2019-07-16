require 'sinatra'

class MyApp < Sinatra::Base
  get '/' do
    'Hello, Sinatra!'
  end
end
