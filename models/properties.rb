def all_properties
    run_sql('SELECT * FROM properties')
end  

def my_properties(created_by)
    run_sql('SELECT * FROM properties WHERE created_by = $1', [created_by])
end 

