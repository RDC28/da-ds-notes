from .user import User

class Customer(User):
    def __init__(self, username, password, contact, coupons : list):
        super().__init__(username, password, contact)
        self.coupons = coupons

class Coupon:
    def __init__(self, code, value):
        self.code = code
        self.value = value

    def __str__(self):
        return f'{self.code} {self.value}'