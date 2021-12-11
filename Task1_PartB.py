"""
student id: 32718179
student name: Kelly Victoria Wijaya
start date: 4 Nov 2021
last modified date: 15 Nov 2021
 
implement another StringList class that is responsible for handling a collection of strings, which is essentially a List abstract data type (ADT).
 
"""
from os import link


class LinkedList(object):
    def __init__(self, size):
        self.size = [None] * size # set max size
        self.string = self.size
    
    def add(self, new_item): # create function add with new_item as parameter
      for idx, val in enumerate(self.string): # for looping self.string
        if val == None: # if value is None, then
          self.string[idx] = new_item # set new item into index X
          return # return the function to stop process
        else:
          continue
      print("Out of limit!")
    
    def search(self, target_item): # create function search with target_item as parameter
      for val in self.string: # for looping self.string
        if val == target_item: # if value is same with target_item, then
          return True # return true
      return False # if there are no data, then return false
    
    def remove(self, target_item): # create function remove with target_item as parameter
      for idx, val in enumerate(self.string): # for looping self.string
        if val == target_item: # if value is same with target_item, then
          self.string[idx] = None # set it into None
          break # break the function to stop process

    def __len__(self): # create function len to count how many our datas
      count = 0 # initiate variable count with 0
      for val in self.string: # for looping self.string
        if val != None: # if value is not None, then
          count += 1 # plus count by 1
      return count # return count (total datas)
    
    def __str__(self): # create function str to join all string
      join = "" # initiate variable join with empty string
      for val in self.string: # for looping self.string
        if val != None: # if value is not None, then
          join += val # join string value into "join" variable
      return join # return join