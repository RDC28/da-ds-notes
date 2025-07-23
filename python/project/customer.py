from .user import User  # Importing the User class from a local module

class Customer(User):
    def __init__(self, username, password, contact, coupons: list):
        super().__init__(username, password, contact)  # Initialize inherited User attributes
        self.coupons = coupons  # List of Coupon objects available to the customer


class Coupon:
    def __init__(self, code, value):
        self.code = code      # Unique coupon code
        self.value = value    # Discount or value the coupon offers

    def __str__(self):
        # String representation of the coupon
        return f'{self.code} {self.value}'