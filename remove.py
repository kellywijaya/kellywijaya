#This remove function helps user to delete any added item from the list

def remove(listItems):
    for i, item in enumerate(listItems):
        print(i + 1, ".", item)

    index = int(input("Which item do you want to remove ? : ")) #User is asked which item number want to be deleted?
    if index > len(listItems):
        print("Sorry, this number of item doesn't exist on list")
        exit()

    answer = input("Do you really want to delete this item ? (Yes/No) : ") #double confirmation for user
    while not (answer.lower() == "yes" or answer.lower() == "no") :
        answer = input("Do you really want to delete this item ? (Yes/No) : ")

    if answer.lower() == "yes":
        del listItems[index - 1]
        
        for i, item in enumerate(listItems):
            print(i + 1, ".", item)
        return
    else:
        return
