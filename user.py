def encrypt(text,s):
    result = ""
    # transverse the plain text
    for i in range(len(text)):
        char = text[i]
        # Encrypt uppercase characters in plain text
        
        if (char.isupper()):
            result += chr((ord(char) + s-65) % 26 + 65)
        # Encrypt lowercase characters in plain text
        else:
            result += chr((ord(char) + s-97) % 26 + 97)
    return result

def encryptPassword(text,s):
    result = ""
    # transverse the plain text
    for i in range(len(text)):
        char = text[i]
        # Encrypt uppercase characters in plain text
        result += chr((ord(char) + s-48) % 10 + 48)
    return result

def decrypt(text,s):
    result = ""
    # transverse the plain text
    for i in range(len(text)):
        char = text[i]
        # Encrypt uppercase characters in plain text
        
        if (char.isupper()):
            result += chr((ord(char) - s-65) % 26 + 65)
        # Encrypt lowercase characters in plain text
        else:
            result += chr((ord(char) - s-97) % 26 + 97)
    return result

def decryptPassword(text,s):
    result = ""
    # transverse the plain text
    for i in range(len(text)):
        char = text[i]
        # Encrypt uppercase characters in plain text
        result += chr((ord(char) - s-48) % 10 + 48)
    return result

def login():
    username = input("Please insert your username (Input 8 characters) : ")
    while not len(username) == 8:
        username = input("Please insert your username (Input 8 characters) : ")

    password = input("Please insert your password (Input be 4 digits) : ")
    while not len(password) == 4:
        password = input("Please insert your password (Input be 4 digits) : ")

    user_data = encrypt(username,4) + encryptPassword(password,4)

    f = open("user_details.txt", "r")
    for line in f:
        if user_data in line:
            user = user_data[0:8]
            pwd = user_data[-4:]
            user = decrypt(user, 4)
            pwd = decryptPassword(pwd, 4)
            print("Welcome, "+ user)
            return
        else:
            continue
    file = open("user_details.txt", "a")
    file.write(user_data + "\n")
    file.close()
    print("Data succesfully registered")

    f.close()
    return