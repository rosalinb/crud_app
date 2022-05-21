get '/sign_up' do
    erb :'users/new' 
end

post '/create_user' do
    name =  params['name']
    email = params['email']
    password = params['password']
    user_type = params['user_type']
    user_image = params['user_image']
    user_contact_info = params['user_contact_info']
  
    create_user(name, email, password, user_type, user_image, user_contact_info)
  
    redirect '/'
  
  end