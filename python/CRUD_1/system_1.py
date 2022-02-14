
def staus_email(user_emails, email):
    status = True
    for i in user_emails:
        if email == i:
            print("")
            status = False
    return status