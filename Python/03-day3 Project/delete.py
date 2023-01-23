import json


def delete_contact(name):
    with open('contacts.json', 'r') as file:
        data = json.load(file)
    del data[name]
    with open('contacts.json', 'w') as file:
        json.dump(data, file)
