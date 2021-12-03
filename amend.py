#This amend function is used to update item weight

def amend(itemNumber, weight, listItems):
    listItems[itemNumber - 1].update({'weight': str(weight)})

    for item in listItems:
        print(item)

    return