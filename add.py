import sys

# Initiate Dictionary of Economy Letter Price Guide and Economy Parcel Price Guide
LetterUpTo500g = {"Zone 1": 10.67, "Zone 2": 13.77, "Zone 3": 14.39, "Zone 4": 15.85, "Zone 5": 15.06, "Zone 6": 20.46, "Zone 7": 21.48, "Zone 8": 25.64, "Zone 9": 26.01}
LetterUpTo1000g = {"Zone 1": 23.06, "Zone 2": 28.44, "Zone 3": 29.79, "Zone 4": 33.38, "Zone 5": 31.02, "Zone 6": 35.19, "Zone 7": 36.95, "Zone 8": 47.53, "Zone 9": 50.4}
LetterUpTo1500g = {"Zone 1": 29.08, "Zone 2": 43.33, "Zone 3": 45.35, "Zone 4": 45.4, "Zone 5": 47.46, "Zone 6": 47.54, "Zone 7": 49.91, "Zone 8": 67.51, "Zone 9": 71.63}
LetterUpTo2000g = {"Zone 1": 34.04, "Zone 2": 55.29, "Zone 3": 57.45, "Zone 4": 57.63, "Zone 5": 59.83, "Zone 6": 60.05, "Zone 7": 63.05, "Zone 8": 89.19, "Zone 9": 94.59}

ParcelUpTo3kg = {"Zone 1": 30.31, "Zone 2": 35.74, "Zone 3": 40.15, "Zone 4": 42.79, "Zone 5": 43.82, "Zone 6": 45.94, "Zone 7": 48.2, "Zone 8": 50.59, "Zone 9": 53.11}
ParcelUpTo5kg = {"Zone 1": 48.86, "Zone 2": 50.11, "Zone 3": 54.02, "Zone 4": 58.92, "Zone 5": 61.8, "Zone 6": 63.06, "Zone 7": 66.03, "Zone 8": 69.25, "Zone 9": 72.63}
ParcelUpTo10kg = {"Zone 1": 85.45, "Zone 2": 87.99, "Zone 3": 93.56, "Zone 4": 97.87, "Zone 5": 98.84, "Zone 6": 101.78, "Zone 7": 104.83, "Zone 8": 109.03, "Zone 9": 113.39}
ParcelUpTo15kg = {"Zone 1": 119.98, "Zone 2": 124.63, "Zone 3": 130.15, "Zone 4": 134.26, "Zone 5": 139.22, "Zone 6": 144.33, "Zone 7": 151.54, "Zone 8": 159.12, "Zone 9": 167.08}
ParcelUpTo20kg = {"Zone 1": 150.34, "Zone 2": 155.87, "Zone 3": 161.52, "Zone 4": 165.5, "Zone 5": 170.41, "Zone 6": 177.91, "Zone 7": 186.81, "Zone 8": 196.15, "Zone 9": 205.96}

def addItem(countryZone, listItems):
    itemDict = {}
    duplicate = False
    global price

    # User can input type of item either letter or parcel
    itemType = input("Please input your Item Type (letter/parcel) : ")
    while not (itemType == "letter" or itemType == "parcel"):
        itemType = input("Please input your Item Type (letter/parcel) : ")
        
    # User can input either small, medium or large size
    size = input("Please input your Item Type size (small/medium/large) : ")
    while not (size == "small" or size == "medium" or size == "large"):
        size = input("Please input your Item Type size (small/medium/large) : ")

    # User can input the weight
    weight = input("Please input weight of your item (kg) : ")
    
    # User can input the destination
    destination = input("Please input your destination : ")

    # Check duplicate data
    for index in range(len(listItems)):
      for thisDict in listItems[index]:
        if listItems[index]["itemType"] == itemType and listItems[index]["size"] == size and listItems[index]["weight"] == weight and listItems[index]["destination"] == destination:
          duplicate = True   
    
    if duplicate:
      answer = input("This data was inserted, do you want to continue the process ? (yes/no) : ")
      while not (answer == "yes" or answer == "no"):
          answer = input("This data was inserted, do you want to continue the process ? (yes/no) : ")

      if answer == "no":
          sys.exit()

    # Get destination zone from country dictionary
    zone = countryZone[destination]

    # Check data from Economy letter Price Guide.csv if item type = letter
    if itemType == "letter":    
      if float(weight) <= 0.5:
        price = LetterUpTo500g[zone]
      elif float(weight) > 0.5 and float(weight) <= 1:
        price = LetterUpTo1000g[zone]
      elif float(weight) > 1 and float(weight) <= 1.5:
        price = LetterUpTo1500g[zone]
      elif float(weight) > 1.5:
        price = LetterUpTo2000g[zone]
    else:
    # Check data from Economy parcel Price Guide.csv if item type = parcel
      if float(weight) <= 3:
        price = ParcelUpTo3kg[zone]
      elif float(weight) > 3 and float(weight) <= 5:
        price = ParcelUpTo5kg[zone]
      elif float(weight) > 5 and float(weight) <= 10:
        price = ParcelUpTo10kg[zone]
      elif float(weight) > 10 and float(weight) <= 15:
        price = ParcelUpTo15kg[zone]
      elif float(weight) > 15:
        price = ParcelUpTo20kg[zone] 

    # Check price from size dimension
    if size == "small":
      finalPrice = price
    elif size == "medium":
      finalPrice = price + (price * 0.1)
    else:
      finalPrice = price + (price * 0.15)

    itemDict["itemType"] = itemType
    itemDict["size"] = size
    itemDict["weight"] = str(weight)
    itemDict["destination"] = destination
    itemDict["price"] = float("{:.2f}".format(finalPrice))
 
    listItems.append(itemDict)
    return listItems
