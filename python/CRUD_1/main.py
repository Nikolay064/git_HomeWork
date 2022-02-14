from create_1 import create_user
from delite_1 import delite_user
from read_1 import user_info, all_users_info
from system_1 import staus_email
from update_1 import update_user

# HW по Python CRUD
# Доделать то, что начали на занятии по CRUD
# На занятии мы сделали Create, Read
# Теперь надо доделать Update, Delete.
#
#  1. Сделать функционал для проверки уникальности Email (существует ли такой пользователь) перед добавлением нового пользователя.
#  2. Добавить возможность обновления информации о существующем пользователе.
#  3. Добавить возможность удалить существующего пользователя
#  4. Сделать -- Help для просмотра списка возможных команд с комментариями к ним
#
# Постарайтесь всё сделать через функции.

user_emails = [] #List
users_storage = {} #dict
action = ""

while True:
    if action == "":
        action = input("Enter action: 1: create, 2: read_all, 3: read_user, 4:update, 5:delete, 6:help. \n")
        print(type(action))

    if action == "1": #create
        print("action = create")
        email = input("Email: ")
        status = staus_email(user_emails, email)

        if status:
            name = input("Name: ")
            password = input("Password: ")
            phone = input("Phone: ")
            create_user(email,
                        name,
                        password,
                        phone,
                        user_emails,
                        users_storage)
            print("user_emails_main = ", user_emails)
            action = ""
            print("-------------------------==========================-------------------------")
        else:
            print("Such a user has already been created, enter another user.")
            print("-------------------------==========================-------------------------")

    elif action == "2": #read_all
        print("action = ", action)
        all_users_info(users_storage)
        action = ""


    elif action == "3": #read_user
        print("action = ", action)
        email = input("Enter user email")
        status = staus_email(user_emails, email)
        print("status = ", status)
        if not status:
            message = user_info(email, user_emails, users_storage)
            print("message = ", message)
            print("user_emails_main = ", user_emails)
            action = ""
            print("-------------------------==========================-------------------------")
        else:
            print("There is no such user, enter another user")
            print("Available user = ", user_emails)
            print("-------------------------==========================-------------------------")

    elif action == "4": #update
        print("action = ", action)
        email = input("Enter user email")
        status = staus_email(user_emails, email)
        if not status:
            name = input("Name: ")
            password = input("Password: ")
            phone = input("Phone: ")
            update_user(email,
                        name,
                        password,
                        phone,
                        users_storage)
            print("user_emails_main = ", user_emails, "edited")
            action = ""
            print("-------------------------==========================-------------------------")
        else:
            print("There is no such user, enter another user")
            print("Available user = ", user_emails)
            print("-------------------------==========================-------------------------")

    elif action == "5": #delete
        print("action = ", action)
        user_del = input("Enter user email")
        status = staus_email(user_emails, user_del)
        if not status:
            delite_user(user_del, users_storage, user_emails)
            print("user ", user_del, " delete")
            action = ""
            print("-------------------------==========================-------------------------")
        else:
            print("There is no such user, enter another user")
            print("user_emails_main = ", user_emails)
            print("-------------------------==========================-------------------------")

    elif action == "help":
        print("Вам доступны следующие команды: \n"
              "create - The following commands are available to you.\n"
              "read_user - Allows you to display user data on the screen.\n"
              "read_all - Выведет на экран данные всех юзеров.\n"
              "update - Displays the data of all users on the screen.\n"
              "delete - Allows you to delete the desired user.\n")
        action = ""
        print("-------------------------==========================-------------------------")

    else:
        print("No correct input, try again")
        action = "help"
        print("-------------------------==========================-------------------------")
