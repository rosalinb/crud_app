get '/sign_up' do
    erb :'users/new' 
end

post '/create_user' do
    name =  params['name']
    email = params['email']
    password = params['password']
    user_type = params['user_type']
  
    create_user(name, email, password, user_type)
  
    redirect '/'
  
  end