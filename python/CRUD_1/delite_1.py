

def delite_user(user_del, users_storage, user_emails):
    users_storage.pop(user_del)
    user_emails.remove(user_del)
    print("user ", user_del, "delete")
    print("users_storage = ", users_storage)
    print("user_semails = ", user_emails)

