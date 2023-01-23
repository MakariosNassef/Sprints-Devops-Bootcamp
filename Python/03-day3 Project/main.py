import json
import os
from regex import *
import datetime
from delete import *


def add_contact():
    name = input("Enter the name: ")
    insert_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    address = input("Enter the address: ")

    email = input("Enter the email: ")
    while not validate_email(email):
        print("Invalid email format, please enter a valid email")
        email = input("Enter the email: ")
    
    phone = input("Enter the phone: ")
    while not validate_phone(phone):
        print("Invalid phone format, please enter a valid phone number")
        phone = input("Enter the phone: ")
    
    create_json_if_not_exist()
    with open('contacts.json', 'r') as file:
        data = json.load(file)
    
    data[name] = {"email": email, "phone": phone, "Address":address, "time":insert_time}
    with open('contacts.json', 'w') as file:
        json.dump(data, file)


def create_json_if_not_exist():
    if not os.path.exists('contacts.json'):
        with open('contacts.json', 'w') as file:
            json.dump({}, file)


def update_contact(name, new_email, new_phone):
    with open('contacts.json', 'r') as file:
        data = json.load(file)
    data[name]['email'] = new_email
    data[name]['phone'] = new_phone
    with open('contacts.json', 'w') as file:
        json.dump(data, file)
        
def list_contacts():
    with open('contacts.json', 'r') as file:
        data = json.load(file)
    for name,contact in data.items():
        print(f"Name: {name}, Email: {contact['email']}, Phone: {contact['phone']}")

FUNCTIONS_LIST = ["add_contact", "delete_contact", "update_contact", "list_contacts"]

def main():
    print("Please select a function to execute:")
    for i, function in enumerate(FUNCTIONS_LIST):
        print(f"{i+1}. {function}")
    selection = input("Enter your selection: ")
    try:
        selected_function = FUNCTIONS_LIST[int(selection) - 1]
        if selection == "2":
            name = input("Enter the name of the contact to delete: ")
            delete_contact(name)
        else:
            globals()[selected_function]()
        globals()[selected_function]()
    except (ValueError, IndexError):
        print("Invalid selection, please try again")
        main()



main()