    
require 'sinatra'

get '/' do
  erb :'home/index'
end

require './controllers/properties_controller'



