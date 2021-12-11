"""  
student id: 32718179
student name: Kelly Victoria Wijaya
start date: 13 Nov 2021
last modified date: 15 Nov 2021

This file is to produce a number of statistics for the two groups of children transcripts. Create a visualisation to present the mean difference of these statistics for the two groups.

"""

import pandas as pd
import matplotlib.pyplot as plot
import csv
import re
import statistics

data = {}
data_statistics = {}
data_count = {}
index = ["Unique Word", "Pause", "Grammatical", "Retracing", "Repetition", "Statement"]
UniqueWord_SLI, Pause_SLI, Grammatical_SLI, Retracing_SLI, Repetition_SLI, Statement_SLI = [], [], [], [], [], []
UniqueWord_TD, Pause_TD, Grammatical_TD, Retracing_TD, Repetition_TD, Statement_TD = [], [], [], [], [], []

def chart(filename):
    with open(filename, 'r') as f:
        value = []
    for row in reversed(list(csv.reader(f))[-6:]): #read the last 6 rows from the cleaned files
        for x in row:
            x = re.sub('[a-z,: A-Z]','',x) #erase the letters & symbols except the numbers of the last 6 rows
            value.append(int(x)) 
    
    data[filename] = value

# call function chart
chart("Assessment2dataset/SLI-Cleaned/SLI-1.txt")
chart("Assessment2dataset/SLI-Cleaned/SLI-2.txt")
chart("Assessment2dataset/SLI-Cleaned/SLI-3.txt")
chart("Assessment2dataset/SLI-Cleaned/SLI-4.txt")
chart("Assessment2dataset/SLI-Cleaned/SLI-5.txt")
chart("Assessment2dataset/SLI-Cleaned/SLI-6.txt")
chart("Assessment2dataset/SLI-Cleaned/SLI-7.txt")
chart("Assessment2dataset/SLI-Cleaned/SLI-8.txt")
chart("Assessment2dataset/SLI-Cleaned/SLI-9.txt")
chart("Assessment2dataset/SLI-Cleaned/SLI-10.txt")

for a,b in data.items():
  UniqueWord_SLI.append(b[0])
  Pause_SLI.append(b[1])
  Grammatical_SLI.append(b[2])
  Retracing_SLI.append(b[3])
  Repetition_SLI.append(b[4])
  Statement_SLI.append(b[5])

chart("Assessment2dataset/TD-Cleaned/TD-1.txt")
chart("Assessment2dataset/TD-Cleaned/TD-2.txt")
chart("Assessment2dataset/TD-Cleaned/TD-3.txt")
chart("Assessment2dataset/TD-Cleaned/TD-4.txt")
chart("Assessment2dataset/TD-Cleaned/TD-5.txt")
chart("Assessment2dataset/TD-Cleaned/TD-6.txt")
chart("Assessment2dataset/TD-Cleaned/TD-7.txt")
chart("Assessment2dataset/TD-Cleaned/TD-8.txt")
chart("Assessment2dataset/TD-Cleaned/TD-9.txt")
chart("Assessment2dataset/TD-Cleaned/TD-10.txt")

for a,b in data.items():
  UniqueWord_TD.append(b[0])
  Pause_TD.append(b[1])
  Grammatical_TD.append(b[2])
  Retracing_TD.append(b[3])
  Repetition_TD.append(b[4])
  Statement_TD.append(b[5])

data_statistics["SLI"] = [statistics.mean(UniqueWord_SLI), statistics.mean(Pause_SLI), statistics.mean(Grammatical_SLI), statistics.mean(Retracing_SLI), statistics.mean(Repetition_SLI), statistics.mean(Statement_SLI)] #find the mean for each index
data_statistics["TD"] = [statistics.mean(UniqueWord_TD), statistics.mean(Pause_TD), statistics.mean(Grammatical_TD), statistics.mean(Retracing_TD), statistics.mean(Repetition_TD), statistics.mean(Statement_TD)] #find the mean for each index
data_count["SLI"] = [len(UniqueWord_SLI), len(Pause_SLI), len(Grammatical_SLI), len(Retracing_SLI), len(Repetition_SLI), len(Statement_SLI)]#count for each index in SLI
data_count["TD"] = [len(UniqueWord_TD), len(Pause_TD), len(Grammatical_TD), len(Retracing_TD), len(Repetition_TD), len(Statement_TD)]#count for each index in TD

# Dictionary loaded into a DataFrame       
dataFrame = pd.DataFrame(data=data_statistics, index=index) #
dataFrameCount = pd.DataFrame(data=data_count, index=index)

# Draw a vertical bar chart

dataFrame.plot.bar(rot=15, title="Data Mean Comparision between SLI & TD") #show average mean difference between the 2 groups
dataFrameCount.plot.bar(rot=15, title="Data Count Comparision between SLI & TD")#compare both groups for each index
plot.show(block=True)#visually show the overall statistical bar chart