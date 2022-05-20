
get '/properties/listings' do
  property_listings = all_properties()
    erb :'/properties/listings', locals: {
      property_listings: property_listings
    }
end

get '/agent_dashboard' do
  my_property_listings = my_properties(session['user_id'])
  erb :'/properties/agent_dashboard',
  locals: {
    my_property_listings: my_property_listings
  }
end

get '/properties/create' do
  erb :'/properties/create'
end

get '/properties/update' do
  erb :'/properties/update'
end