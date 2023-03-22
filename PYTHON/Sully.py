import os
i = 5
if i > 0:
    with open("Sully_"+str(i-1)+".py", "w") as file2:
        directory = os.getcwd()
        print(directory)
        s = 'import os\ni = {0}\nif i > 0:\n    with open("Sully_"+str(i-1)+".py", "w") as file2:\n        directory = os.getcwd()\n        print(directory)\n        s = {1}\n        file2.write(s.format(i-1, repr(s)))\n    os.system("/Users/jperras/goinfre/.brew/bin/python3 "+directory+"/Sully_"+str(i-1)+".py")\n'
        file2.write(s.format(i-1, repr(s)))
    os.system("/Users/jperras/goinfre/.brew/bin/python3 "+directory+"/Sully_"+str(i-1)+".py")
