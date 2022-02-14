
def user_info(email, user_emails, user_storage):

    if email in user_emails:
        message = "user_email=", email, \
                  "\n", \
                  "User_info:", user_storage[email]
        return message
    else:
        message = "No user with email: " + email
        return message

def all_users_info(users_storage):
    for k, v in users_storage.items():
        user_emails = "User_email = " + k
        user_info_1 = "User_info = ", v

        print(user_emails, "\n", user_info_1 )
        print("-------------------------------")


