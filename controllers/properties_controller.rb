
get '/properties/listings' do
  property_listings = all_properties()
    erb :'/properties/listings', locals: {
      property_listings: property_listings
    }
end

get '/properties/agent_dashboard' do
  created_by = session['user_id']
  my_property_listings = my_properties(created_by)
  erb :'/properties/agent_dashboard',
  locals: {
    my_property_listings: my_property_listings
  }
end

get '/properties/customer_dashboard' do

  erb :'/properties/customer_dashboard'

end



get '/properties/create' do
  erb :'/properties/create'
end

post '/create_properties' do
  image_url = params['image_url']
  ad_line = params['ad_line']
  house_number = params['house_number']
  street_name = params['street_name']
  postcode = params['postcode']
  suburb = params['suburb']
  state = params['state']
  property_type = params['property_type']
  number_of_bedrooms = params['num_of_bedrooms']
  number_of_bathrooms = params['num_of_bathrooms']
  number_of_parkings = params['num_of_parkings']
  price = params['price']
  created_by = session['user_id']

  create_property(image_url,ad_line,house_number,street_name,postcode,suburb,state,property_type,number_of_bedrooms,number_of_bathrooms,number_of_parkings,price,created_by)

  redirect '/properties/agent_dashboard'

end


get '/properties/:id/update' do
  id = params['id']
  property_to_edit = get_property(id)
  erb :'/properties/update', locals: {
    property: property_to_edit
  }
end

put '/properties/:id' do
  id = params['id']
  image_url = params['image_url']
  ad_line = params['ad_line']
  house_number = params['house_number']
  street_name = params['street_name']
  postcode = params['postcode']
  suburb = params['suburb']
  state = params['state']
  property_type = params['property_type']
  number_of_bedrooms = params['number_of_bedrooms']
  number_of_bathrooms = params['number_of_bathrooms']
  number_of_parkings = params['number_of_parkings']
  price = params['price']
  created_by = session['user_id']

  update_property(image_url,ad_line,house_number,street_name,postcode,suburb,state,property_type,number_of_bedrooms,number_of_bathrooms,number_of_parkings,price,created_by,id)

  redirect '/properties/agent_dashboard'
end

delete '/properties/:id' do

    id = params['id']
    delete_property(id)

    redirect '/properties/agent_dashboard'
  
  end


  post '/properties/search' do
    search_text = params['search_text']
    search_result = search_properties(search_text)

    if search_text == ''
      property_listings = all_properties()

      erb :'/properties/listings', locals: {
        property_listings: property_listings
      }
    else 
      erb :'/properties/listings', locals: {
        property_listings: search_result
      }
    end

    
  end