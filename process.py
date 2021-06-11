log_file = open("um-server-01.txt")#To open a file for reading it,and to specify the name of the file
#The key function , working with files in Python.

def sales_reports(log_file):
#creating a function called sales_reports and passing  log_file as param .
    for line in log_file:
        # looping over each line of a file
        line = line.rstrip()
        # rstrip()>>Remove any white spaces at the end of the string and resign the data to the line.
        day = line[0:3]
        #here we are creating a variable and line values store in the "day"
        if day == "Mon":    #if day == "Tue":
            #if day == "Tue":(in this condition if the day equals to true then it willonly print the order start with tue in line.)
            # here i changed the value  as "Mon" then it will print the mon orders in the line 
            
            # one of the example output for monday :
            # Mon 2014-05-19: 2 Carolina Cross 180 Watermelon delivered to User 39
            
            print(line)
            # printing the line 

sales_reports(log_file)
#we are calling a function sales_reports with log_file
