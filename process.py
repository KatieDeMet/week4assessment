#The following line is opening the um-server file and saving it to a variable.
log_file = open("um-server-01.txt")

#This is a function called sales_reports that accepts a parameter of the open file.
def sales_reports(log_file):
    #The for loop will loop through each line saving it to the temp variable line.
    for line in log_file:
        #The rstrip method will remove all whitespace from the end of each line
        line = line.rstrip()
        #This line looks like it assigns the first 3 characters of the current string
        #and saves them to a new variable called day.
        day = line[0:3]
        #Conditional if statment that compares strings to see if the beginning of the line is 'Tue'
        if day == "Mon":
            #prints line to console if first 3 letters match
            print(line)

#runs the function
sales_reports(log_file)
