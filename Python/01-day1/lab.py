


# This will create a new string with the modified character.
# join() method to join the list of characters back into a string.
# enumerate() is a built-in function in Python that allows you to loop over a list of items and keep track of the index of each item. 

modified_string = "".join([char if i != 5 else "k" for i, char in enumerate("abracadabra")])
print (modified_string)


#-----------------------------------------------------------------------------#
#another way by for loop
#-----------------------------------------------------------------------------#

# orignal_string='abracadabra'
# modified_string=[]
# for i in range(len(orignal_string)):
#     if i==5:
#         modified_string.append('k')
#     else:
#         modified_string.append(orignal_string[i])

# print ("".join(modified_string))