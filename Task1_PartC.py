"""  
student id: 32718179
student name: Kelly Victoria Wijaya
start date: 4 Nov 2021
last modified date: 15 Nov 2021

This file create instances or objects of each class by importing Part A and Part B. To apply 'all' the methods deﬁned for each class on the corresponding objects to 'test' the implementation for each of the methods.

"""
#Below are the files that are imported file Task1_PartA.py & Task1_PartB.py
from Task1_PartA import StringClass
from Task1_PartB import LinkedList

my_strclass = StringClass('Hello, World!') # Create Object with name "my_strclass" and value "Hello World!"
print(my_strclass.str_data) # Convert my object into string
my_strclass.search('l')                   # Call method search to find alpha "l" on my value (Hello World!)
my_strclass.frequency('e')                # Call method frequency to count how many times "x" appear in Hello World!
my_strclass.replace('o', 'a')             # Call method replace to replace alpha "o" into "a"
print(my_strclass.str_data)                      # Convert my object into string
my_strclass.lowercase()                   # Call method lowercase to change my alpha into lower letter
print(my_strclass.str_data)                      # Convert my object into string
my_strclass.uppercase()                   # Call method uppercase to change my alpha into capital letter
print(my_strclass.str_data)                      # Convert my object into string
print(my_strclass.__str__())              # Call method str to join list into string
my_strclass.tokenise(',')                 # Call method tokenise to seperate word by comma
print(my_strclass.str_data)                      # Convert my object into string
print(my_strclass.__eq__('HELLAW!'))      # Call method equal to compare two word is same or not


list1 = LinkedList(5) # Create Object with name "listnumber", limit size is 5
list2 = LinkedList(5) # Create Object with name "listnumber", limit size is 5
list1.add("apple") # Add apple into list1
list2.add("cat") # Add cat into list2
list1.add("orange") # Add orange into list1
list2.add("dog") # Add dog into list2
list1.add("grape") # Add grape into list1
list2.add("bird") # Add bird into list2
list1.add("peach") # Add peach into list1
list2.add("hamster") # Add hamster into list2
list1.add("guava") # Add guava into list1
list2.add("kangaroo") # Add kangaroo into list2
print(list1.string) # print list1 (fruits)
print(list2.string) # print list2 (animals)
list1.remove("apple") # remove apple from list1
print(list1.string) # print list1
print(list2.search("dog")) # search dog from list2
print(list1.search("cat")) # search cat from list1
print(list1.__len__()) # count datas on list1
print(list2.__len__()) # count datas on list2
print(list1.__str__()) # join datas on list1 into 1 word
print(list2.__str__()) # join datas on list2 into 1 word
