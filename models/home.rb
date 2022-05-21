get '/' do
    erb :'home/index'
end

get '/about' do
    erb :'home/about'
end

get '/help_center' do
    erb :'home/help_center'
end