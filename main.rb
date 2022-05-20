    
require 'sinatra'
require 'pry'
require 'bcrypt'

get '/' do
  erb :'home/index'
end

enable :sessions

require './controllers/properties_controller'
require './controllers/sessions_controller'
require './controllers/users_controller'

require './db/db'

require './models/user'
require './models/properties'

require './helpers/sessions_helper'



