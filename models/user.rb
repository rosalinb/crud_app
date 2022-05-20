def create_user(name, email, password, user_type)
    password_digest = BCrypt::Password.create(password)
    run_sql("INSERT INTO users(name, email, password_digest, user_type) VALUES($1, $2, $3, $4)",[name, email, password_digest, user_type])
end

def find_user_by_email(email)
    users = run_sql("SELECT * FROM users WHERE email = $1",[email])
    if users.to_a.count > 0
        users[0]
    else
        nil
    end
end

def find_user_by_id(id)
    run_sql("SELECT * FROM users WHERE id = $1",[id])[0]
end

