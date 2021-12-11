"""  
student id: 32718179
student name: Kelly Victoria Wijaya
start date: 13 Nov 2021
last modified date: 15 Nov 2021

Remove and filter certain words in each statement that have the CHAT symbols as either prefixes or suffixes, but retaining certain symbols and words for analysis in Part 2.

"""

import re # Import library Regex Expression (RE)

def remove_symbol(filename, output): # Create function with parameter "filename"
  number_of_statement = 0 # initiate variable number_of_statement with value 0
  unique_word = 0 # initiate variable unique_word with value 0
  number_of_repetition = 0 # initiate variable number_of_repetition [/] with value 0
  number_of_retracing = 0 # initiate variable number_of_retracing [//] with value 0
  number_of_grammatical = 0 # initiate variable number_of_grammatical [*] with value 0
  number_of_pause = 0 # initiate variable number_of_pause (.) (..) (...) with value 0

  f = open(filename, "r") # Open file text
  for x in f: # Loop every lines on file text
    if x[0:5] == "*CHI:": # To check 5 first char is "*CHI:" or not
      number_of_statement += 1 # add value number_of_statement with 1
      x = re.sub('[&+<",>@-]', '', x) # remove character &+<",>@- on text line
      x = x[1:] # remove # on first line of text

      if '(.)' in x: # if there is (.) on text
        x = re.sub('(?<=[^.])[()](?=[^.])', '', x) # remove symbol ( and ) who doesn't have . on it
        x = re.sub('[/]', '', x) # remove symbol / from text
        number_of_pause += 1 # add value number_of_pause with 1
      
      elif '(..)' in x: # if there is (..) on text
        x = re.sub('(?<=[^.])[()](?=[^.])', '', x) # remove symbol ( and ) who doesn't have . on it
        x = re.sub('[/]', '', x) # remove symbol / from text
        number_of_pause += 1 # add value number_of_pause with 1
      
      elif '(...)' in x: # if there is (...) on text
        x = re.sub('(?<=[^.])[()](?=[^.])', '', x) # remove symbol ( and ) who doesn't have . on it
        x = re.sub('[/]', '', x) # remove symbol / from text
        number_of_pause += 1 # add value number_of_pause with 1

      elif '[/]' in x: # if there is [/] on text
        x = re.sub('[(^.$)]', '', x) # remove all symbol except [/]
        number_of_repetition += 1 # add value number_of_repetition with 1

      elif '[//]' in x: # if there is [//] on text
        x = re.sub('[(^.$)]', '', x) # remove all symbol except [//]
        number_of_retracing += 1 # add value number_of_retracing with 1

      elif '[*]' in x: # if there is [*] on text
        x = re.sub('[(^.$)]', '', x) # remove all symbol except [*]
        number_of_grammatical += 1 # add value number_of_grammatical with 1

      else: # else
        x = re.sub(r"[^a-zA-Z0-9:\t\n]+", ' ', x) # remove all symbol on it
        unique_word += 1 # add value unique word with 1

      fopen = open(output, 'a') #re-write data into cleaned file
      fopen.write(x+"\n") # assign x into file
  
  fopen = open(output, 'a') #append data into cleaned files
  fopen.write("Number of Statement :"+str(number_of_statement)+"\n") # assign number of statement
  fopen.write("Number of Repetition :"+str(number_of_repetition)+"\n") # assign number of repetation
  fopen.write("Number of Retracing :"+str(number_of_retracing)+"\n") # assign number of retracing
  fopen.write("Number of Grammatical :"+str(number_of_grammatical)+"\n") # assign number of grammatical
  fopen.write("Number of Pause :"+str(number_of_pause)+"\n") # assign number of pause
  fopen.write("Number of Unique Word :"+str(unique_word)) # assign unique word
  f.close()

remove_symbol("Assessment2dataset/SLI/SLI-1.txt", "Assessment2dataset/SLI-Cleaned/SLI-1.txt") # call function remove symbol
remove_symbol("Assessment2dataset/SLI/SLI-2.txt", "Assessment2dataset/SLI-Cleaned/SLI-2.txt") # call function remove symbol
remove_symbol("Assessment2dataset/SLI/SLI-3.txt", "Assessment2dataset/SLI-Cleaned/SLI-3.txt") # call function remove symbol
remove_symbol("Assessment2dataset/SLI/SLI-4.txt", "Assessment2dataset/SLI-Cleaned/SLI-4.txt") # call function remove symbol
remove_symbol("Assessment2dataset/SLI/SLI-5.txt", "Assessment2dataset/SLI-Cleaned/SLI-5.txt") # call function remove symbol
remove_symbol("Assessment2dataset/SLI/SLI-6.txt", "Assessment2dataset/SLI-Cleaned/SLI-6.txt") # call function remove symbol
remove_symbol("Assessment2dataset/SLI/SLI-7.txt", "Assessment2dataset/SLI-Cleaned/SLI-7.txt") # call function remove symbol
remove_symbol("Assessment2dataset/SLI/SLI-8.txt", "Assessment2dataset/SLI-Cleaned/SLI-8.txt") # call function remove symbol
remove_symbol("Assessment2dataset/SLI/SLI-9.txt", "Assessment2dataset/SLI-Cleaned/SLI-9.txt") # call function remove symbol
remove_symbol("Assessment2dataset/SLI/SLI-10.txt", "Assessment2dataset/SLI-Cleaned/SLI-10.txt") # call function remove symbol

remove_symbol("Assessment2dataset/TD/TD-1.txt", "Assessment2dataset/TD-Cleaned/TD-1.txt") # call function remove symbol
remove_symbol("Assessment2dataset/TD/TD-2.txt", "Assessment2dataset/TD-Cleaned/TD-2.txt") # call function remove symbol
remove_symbol("Assessment2dataset/TD/TD-3.txt", "Assessment2dataset/TD-Cleaned/TD-3.txt") # call function remove symbol
remove_symbol("Assessment2dataset/TD/TD-4.txt", "Assessment2dataset/TD-Cleaned/TD-4.txt") # call function remove symbol
remove_symbol("Assessment2dataset/TD/TD-5.txt", "Assessment2dataset/TD-Cleaned/TD-5.txt") # call function remove symbol
remove_symbol("Assessment2dataset/TD/TD-6.txt", "Assessment2dataset/TD-Cleaned/TD-6.txt") # call function remove symbol
remove_symbol("Assessment2dataset/TD/TD-7.txt", "Assessment2dataset/TD-Cleaned/TD-7.txt") # call function remove symbol
remove_symbol("Assessment2dataset/TD/TD-8.txt", "Assessment2dataset/TD-Cleaned/TD-8.txt") # call function remove symbol
remove_symbol("Assessment2dataset/TD/TD-9.txt", "Assessment2dataset/TD-Cleaned/TD-9.txt") # call function remove symbol
remove_symbol("Assessment2dataset/TD/TD-10.txt", "Assessment2dataset/TD-Cleaned/TD-10.txt") # call function remove symbol

