#This function is utlise to view cart

def view(listItems):
    totalPrice = 0

    print("Shopping Cart :") #User is able to view item details and cost
    for index, item in enumerate(listItems):
        print(index + 1, ". Item : ", item["itemType"], "& Price : ", item["price"])
        totalPrice += item["price"]
    
    print("Total Price :", totalPrice)
    return