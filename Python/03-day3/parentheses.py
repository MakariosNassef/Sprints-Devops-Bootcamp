def isValid( s: str) -> bool:
        # Create a dictionary of all the pairs of brackets
        brackets = {"(":")", "[":"]", "{":"}"}
        stack = [s[0]]
        for i in range(1, len(s)):
            if len(stack) != 0 and brackets.get(stack[-1]) == s[i]:
                #.pop removes an item at the specified index from the list.
                stack.pop()
            else:
                # append() will place new items in the available space. 
                stack.append(s[i])
        return len(stack) == 0

val=input("Parentheses: ")
print (isValid(val))
