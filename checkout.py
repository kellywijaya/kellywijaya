import datetime
import csv

def checkout(listItems):
    last_row = None
    datas = []

    # Get last sale_id from sales_history.csv
    with open('sales_history.csv', 'r') as f:
        for row in reversed(list(csv.reader(f))[-1:]):
            last_row = row[0]

    # Initiate current time (now), file name, and total price
    now = datetime.datetime.now()
    filename = str(now.strftime("%Y-%m-%d %H_%M_%S")) + ".txt"
    totalPrice = 0

    # open filename (txt) to write the invoice
    f = open(filename, "a")
    f.write("----------Invoice----------\n")

    for i, item in enumerate(listItems):
        f.write("Item No: "+ str(i + 1) + "\tItem type : " + item["itemType"] + "\tWeight : " + item["weight"] + "\tDestination : " + item["destination"] + "\tUnit Price : $" + str(item["price"]) + "\n")
        totalPrice += item["price"]

        datas.append({
            "sale_id": int(last_row)+1,
            "date_time": now.strftime("%Y-%m-%d %H:%M:%S"),
            "item type": item["itemType"],
            "weight": item["weight"],
            "country name": item["destination"],
            "size": item["size"],
            "cost": item["price"],
        })
    
    f.write("\n")
    f.write("Total Cost :" + str(totalPrice) + "\n")
    f.write("----------End Invoice----------\n\n")

    for item in listItems:
        f.write("----------Purchased Stamps----------\n")
        f.write(item["itemType"] + "\n")
        f.write("Destination : " + item["destination"] + "\tWeight : " + item["weight"] + "kg\n")
        f.write("------------------------------------\n\n")
    f.close()

    # Open filename (txt), then print invoice
    f = open(filename, "r")
    print(f.read())

    # Add the current checkout data into sales_history.csv
    with open('sales_history.csv', 'a', newline='') as f_obj:
        headersCSV = ["sale_id","date_time","item type","weight","country name","size","cost"]
        writer = csv.DictWriter(f_obj, fieldnames=headersCSV)
        writer.writerows(datas)
    
    return