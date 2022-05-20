get '/login' do
    erb :'sessions/new'
end

post '/login_sessions' do
    email = params['email']
    password = params['password']
    user = find_user_by_email(email) 

    if user && BCrypt::Password.new(user['password_digest'])==password
        session['user_id'] = user['id']
        session['user_type'] = user['user_type']

        if session['user_type'] == 'agent'
        redirect '/agent_dashboard'
        else
        redirect '/'
        end  
        redirect '/'
    end

end

delete '/login_sessions' do
    session['user_id']  = nil 
    session['user_type'] = nil
    redirect '/'
end