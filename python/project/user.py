class User:
    def __init__(self, username, password, contact):
        self.username = username  # Public username
        self.__password = hash(password)  # Private hashed password
        self.contact = contact  # Public contact info
        self.__authenticated = False  # Private flag to track login status
        print("created:", self)  # Print user info on creation

    def __str__(self):
        # Returns user data as a string representation
        return f'{self.username}, {self.__password}, {self.contact}'
    
    def login(self, username, password):
        # Authenticate user by comparing credentials
        if username == self.username and hash(password) == self.__password:
            self.__authenticated = True
            print("login successful.")
            return True
        else:
            print("invalid credentials.")
            return False
        
    def logout(self):
        # Logs the user out by setting authentication flag to False
        self.__authenticated = False
        print("logged out successfully.:", self)
        
    def is_authenticated(self):
        # Returns current authentication status
        return self.__authenticated