def create_user(name, email, password, user_type, user_image, user_contact_info)
    password_digest = BCrypt::Password.create(password)
    run_sql("INSERT INTO users(name, email, password_digest, user_type, user_image, user_contact_info) VALUES($1, $2, $3, $4, $5, $6)",[name, email, password_digest, user_type, user_image, user_contact_info])
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
