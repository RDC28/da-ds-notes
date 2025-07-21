from user import User

num = 0
users = []

def option_list1():
    global num
    print("""
          press 1 to register
          press 2 to login
          press 3 to view user details
          press 4 to logout
          press 5 to exit""")
    num = int(input())
    
def get_user(users : list, u_to_find : str):
    for u in users:
        if u.username == u_to_find:
            return u
    return None

if __name__ == "__main__":
    option_list1()
    obj = User(None, None, None)

    while True:
        if num ==  1:
            username  = input("username: ")
            password  = input("password: ")
            contact  = input("contact: ")

            if get_user(users, username):
                print("user already exists.")
                option_list1()
            else:
                obj = User(username, password, contact)
                users.append(obj)
                option_list1()

        if num ==  2:
            username  = input("username: ")
            password  = input("password: ")
            
            found = get_user(users, username)

            if found:
                obj = found
                obj.login(username, password)
                option_list1()
            else:
                print("user not found.")
                option_list1()
        if num ==  3:
            if obj.is_authenticated():
                print(obj)
                option_list1()
            else:
                print("please login first. ")
                option_list1()
        if num ==  4:
            if obj.is_authenticated():
                obj.logout()
                option_list1()
            else:
                print("please login first. ")
                option_list1()
        if num ==  5:
            break
    
    list(map(print, users))