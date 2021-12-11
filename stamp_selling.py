#Below are the files that are imported for stamp selling
from add import addItem
from amend import amend
from remove import remove
from checkout import checkout
from user import login
from view import view

#Below are the numbers, user have to choose from the list to operate the specific function
def show_menu():
    print("----------MENU----------")
    print("1. Add Item")
    print("2. Amend Item")
    print("3. Remove Item")
    print("4. View Cart")
    print("5. Checkout")
    print("6. Exit Program")
    print("------------------------")

    menu = int(input("Choose your menu : "))
    while not (menu == 1 or menu == 2 or menu == 3 or menu == 4 or menu == 5 or menu == 6) :
        menu = int(input("Choose your menu : "))
    
    return menu #loop to the main menu

def main():
    # Initiate List
    listItems = []

    exitProgram = False

    # Country Zone dictionary
    countryZone = {
        "Arab Emirates": "Zone 9",
        "Argentina": "Zone 9",
        "Austria": "Zone 8",
        "Bahrain": "Zone 9",
        "Belgium": "Zone 8",
        "Brazil": "Zone 8",
        "Brunei Darussalam": "Zone 5",
        "Cambodia": "Zone 5",
        "Canada": "Zone 4",
        "Chile": "Zone 9",
        "China": "Zone 2",
        "Cook Islands": "Zone 5",
        "Croatia": "Zone 8",
        "Cyprus": "Zone 8",
        "Czech Republic": "Zone 8",
        "Denmark": "Zone 8",
        "Estonia": "Zone 8",
        "Fiji": "Zone 5",
        "Finland": "Zone 8",
        "France": "Zone 7",
        "French Polynesia": "Zone 5",
        "Germany": "Zone 7",
        "Greece": "Zone 8",
        "Hong Kong": "Zone 3",
        "Hungary": "Zone 8",
        "India": "Zone 3",
        "Indonesia": "Zone 3",
        "Iran": "Zone 9",
        "Ireland": "Zone 6",
        "Israel": "Zone 9",
        "Italy": "Zone 7",
        "Japan": "Zone 3",
        "Kenya": "Zone 9",
        "Korea": "Zone 3",
        "Kuwait": "Zone 9",
        "Lao": "Zone 5",
        "Macedonia": "Zone 8",
        "Malaysia": "Zone 3",
        "Malta": "Zone 8",
        "Mauritius": "Zone 9",
        "Mexico": "Zone 9",
        "Myanmar": "Zone 5",
        "Nauru": "Zone 5",
        "Nepal": "Zone 5",
        "Netherlands": "Zone 7",
        "New Caledonia": "Zone 5",
        "New Zealand": "Zone 1",
        "Nigeria": "Zone 9",
        "Norway": "Zone 7",
        "Pakistan": "Zone 5",
        "Papua New Guinea": "Zone 5",
        "Peru": "Zone 9",
        "Philippines": "Zone 5",
        "Poland": "Zone 8",
        "Portugal": "Zone 8",
        "Qatar": "Zone 9",
        "Romania": "Zone 8",
        "Russian Federation": "Zone 8",
        "Samoa": "Zone 5",
        "Saudi Arabia": "Zone 9",
        "Serbia": "Zone 8",
        "Singapore": "Zone 3",
        "Slovenia": "Zone 8",
        "Solomon Islands": "Zone 5",
        "South Africa": "Zone 8",
        "Spain": "Zone 7",
        "Sri Lanka": "Zone 5",
        "Sweden": "Zone 7",
        "Switzerland": "Zone 7",
        "Taiwan": "Zone 3",
        "Thailand": "Zone 3",
        "Tonga": "Zone 5",
        "Turkey": "Zone 8",
        "Ukraine": "Zone 8",
        "United Kingdom": "Zone 6",
        "United States": "Zone 4",
        "Vanuatu": "Zone 5",
        "Vietnam": "Zone 3",
    }

    # Call Login
    login()

    # Call menu
    while(not exitProgram):
      menu = show_menu()
      if menu == 1:
          addItem(countryZone, listItems) #add item
          print(listItems)
      elif menu == 2: #amend
          itemNumber = int(input("Which number you want to amend ? : "))
          weight = int(input("How much the item weight that you want to update ? : "))
          amend(itemNumber, weight, listItems)
      elif menu == 3: #remove item
          remove(listItems)
      elif menu == 4: #view cart
          view(listItems)
      elif menu == 5: #checkout cart
          checkout(listItems)
      elif menu == 6: #exit program
          exit()

main()