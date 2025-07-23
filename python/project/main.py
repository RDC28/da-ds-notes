from user import User  # Import User class from user module

# Global variables
num = 0  # Stores user menu choice
users = []  # List to store registered users


def option_list1():
    # Display menu options and get user input
    global num
    print("""
          press 1 to register
          press 2 to login
          press 3 to view user details
          press 4 to logout
          press 5 to exit""")
    num = int(input())  # Read user choice


def get_user(users: list, u_to_find: str):
    # Search for a user by username in the users list
    for u in users:
        if u.username == u_to_find:
            return u
    return None  # Return None if user not found


if __name__ == "__main__":
    option_list1()  # Show the menu for the first time
    obj = User(None, None, None)  # Default user object

    while True:
        if num == 1:
            # Registration block
            username = input("username: ")
            password = input("password: ")
            contact = input("contact: ")

            if get_user(users, username):
                print("user already exists.")
            else:
                obj = User(username, password, contact)  # Create new user
                users.append(obj)  # Add to users list

            option_list1()  # Show the menu again

        elif num == 2:
            # Login block
            username = input("username: ")
            password = input("password: ")

            found = get_user(users, username)

            if found:
                obj = found
                obj.login(username, password)
            else:
                print("user not found.")

            option_list1()  # Show the menu again

        elif num == 3:
            # View user details
            if obj.is_authenticated():
                print(obj)
            else:
                print("please login first.")

            option_list1()  # Show the menu again

        elif num == 4:
            # Logout user
            if obj.is_authenticated():
                obj.logout()
            else:
                print("please login first.")

            option_list1()  # Show the menu again

        elif num == 5:
            # Exit the loop
            break

        else:
            # Any invalid input also exits
            break

    # Print all users after exiting
    print(list(map(print, users)))