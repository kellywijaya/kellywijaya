"""

student id: 32718179
student name: Kelly Victoria Wijaya
start date: 3 Nov 2021
last modified date: 15 Nov 2021
 
Implement a number of user-deﬁned methods that are useful for processing or manipulating strings 
 
 """
class StringClass:
    def __init__(self, str_value):
        """
        Assign string to an instance list variable.

        INPUT:
            - str_value: str. String to be converted
        """
        self.str_data = list(str_value) # convert string to list
    
    def search(self, target_char):
        """
        Checks whether spesific character exist within the string.

        INPUT:
            - target_char: str. Character to be searched
        OUTPUT:
            - result: bool. True if char exist else otherwise
        """
        for s in self.str_data: # loop for each character in string
            if s == target_char: # compare character with target character
                return True # return True if match
        return False # return False if every character not match (not found)
    
    def frequency(self, target_char):
        """
        Count the spesific character occurences within the string.

        INPUT:
            - target_char: str. Character to be counted
        OUTPUT:
            - cnt: int. Counted occurence for the character
        """
        cnt = 0 # initialize counter
        for s in self.str_data: # loop for each character in string
            if s == target_char: # compare character with target character
                cnt += 1 # if match increment the counter
        return cnt # return the result

    def replace(self, target_char, new_char):
        """
        Search and replace target character with new character.

        INPUT:
            - target_char: str. Character to be replaced
        """
        for i in range(len(self.str_data)): # loop for each index in string
            if self.str_data[i] == target_char: # compare char with target character
                self.str_data[i] = new_char # if match replace the character with new character
    
    def lowercase(self):
        """
        Converts or normalises the String into lower cases.

        EXAMPLE:
            - "Hello" -> "hello"
        """
        for i in range(len(self.str_data)): # loop for each index
            char_i = ord(self.str_data[i]) # get unicode representation for the string
            if 64 < char_i < 91: # check if the unicode is uppercase
                char_i += 32 # increment the unicode to convert to lowercase according to ASCII
                self.str_data[i] = chr(char_i) # convert the unicode back to string representation

    def uppercase(self):
        """
        Converts or normalises the String into lower cases.

        EXAMPLE:
            - "Hello" -> "HELLO"
        """
        for i in range(len(self.str_data)): # loop for each index
            char_i = ord(self.str_data[i]) # get unicode representation for the string
            if 96 < char_i < 123: # check if the unicode is uppercase according to ASCII
                char_i -= 32 # increment the unicode to convert to uppercase
                self.str_data[i] = chr(char_i)
    
    def tokenise(self, the_delimiter):
        """
        EXAMPLE:
        - "hello kitty" -> ['hello','kitty']
       """
        results = list()
        result = ""
        for s in self.str_data: #large body of text is split up into smaller lines
            if s == the_delimiter:
                results.append(StringClass(result))
                result = ""
            else:
                result += s
        results.append(StringClass(result))
        return results

    def __eq__(self, other):
        """
        EXAMPLE:
        - "hello kitty == hello world" -> false
        """
        str_compare = StringClass(other)#perform equal to operation on 2 values
        return self.str_data == str_compare.str_data #return True, if first value equal to second value, if not, false
    
    def __str__(self): #represent class object as a string
      
        result_str = ""
        for s in self.str_data:
            result_str += s
        return result_str