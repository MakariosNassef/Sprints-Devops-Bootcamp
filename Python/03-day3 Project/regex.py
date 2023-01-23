import re

def validate_email(email):
    # Regex pattern for email validation
    pattern = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'
    return re.match(pattern, email)

def validate_phone(phone):
    # Regex pattern for phone number validation
    pattern = r'^\+?\d{9,15}$'
    return re.match(pattern, phone)