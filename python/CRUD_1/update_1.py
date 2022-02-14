
def update_user(email, name, password, phone, users_storage):
    update = {"name": name,
              "password": password,
              "phone": phone}
    users_storage[email] = update
    print(users_storage)
