def all_properties
    run_sql('SELECT * FROM properties')
end  

def my_properties(created_by)
    run_sql('SELECT * FROM properties WHERE created_by = $1', [created_by])
end 

def search_properties(search_text)
    run_sql('SELECT * FROM properties WHERE upper(suburb) like $1', [search_text.upcase])
end 

def create_property(image_url,ad_line,house_number,street_name,postcode,suburb,state,property_type,number_of_bedrooms,number_of_bathrooms,number_of_parkings,price,created_by)
    run_sql("INSERT INTO properties(image_url,ad_line,house_number,street_name,postcode,suburb,state,property_type,number_of_bedrooms,number_of_bathrooms,number_of_parkings,price,created_by) VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13)", [image_url,ad_line,house_number,street_name,postcode,suburb,state,property_type,number_of_bedrooms,number_of_bathrooms,number_of_parkings,price,created_by])
end

def get_property(id)
    run_sql("SELECT * FROM properties WHERE id = $1", [id])[0]
end

def update_property(image_url,ad_line,house_number,street_name,postcode,suburb,state,property_type,number_of_bedrooms,number_of_bathrooms,number_of_parkings,price,created_by,id)
    run_sql("UPDATE properties SET image_url=$1, ad_line=$2, house_number=$3, street_name=$4, postcode=$5, suburb=$6, state=$7, property_type=$8, number_of_bedrooms=$9, number_of_bathrooms=$10, number_of_parkings=$11, price=$12, created_by=$13 WHERE id=$14", [image_url,ad_line,house_number,street_name,postcode,suburb,state,property_type,number_of_bedrooms,number_of_bathrooms,number_of_parkings,price,created_by,id])
end

def delete_property(id)
    run_sql("DELETE FROM properties WHERE id = $1", [id])
end


