class User:
    def __init__(self, username, password, contact):
        self.username = username
        self.__password = hash(password)
        self.contact = contact
        self.__authenticated = False
        print("created:", self)
     
    def __str__(self):
        return f'{self.username}, {self.__password}, {self.contact}'
    
    def login(self, username, password):
        if username == self.username and hash(password) == self.__password:
            self.__authenticated = True
            print("login successful.")
            return True
        
        else:
            print("invalid credentials.")
            return False
        
    def logout(self):
        self.__authenticated = False
        print("logged out successfully.:", self)
        
    def is_authenticated(self):
        if self.__authenticated:
            return True
        else:
            return False
        
    