require 'pg'

def run_sql(sql_code, params = [])

  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'property_finder'})
  data = db.exec_params(sql_code, params)
  db.close
  data

end 