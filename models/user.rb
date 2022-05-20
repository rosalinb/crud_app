def create_user(name, email, password, user_type)
    password_digest = BCrypt::Password.create(password)
    run_sql("INSERT INTO users(name, email, password_digest, user_type) VALUES($1, $2, $3, $4)",[name, email, password_digest, user_type])
end