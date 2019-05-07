""" This program will take all 120,000 points from two different csv files, and plot them into two separate graphs.
    It uses the base code from https://www.geeksforgeeks.org/working-csv-files-python/ for reading in the csv files
    This has devloved into a lot more work than expected as always..."""

# imports
import csv
import numpy
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

# csv filenames
original_data = "okcoin5s.csv"
new_data = "condensedCoinbase1minData.csv"

# local variables
fields = ["Time", "Price", "Ask Volume", "Bid Volume"]
times = []
prices = []

# read csv file
with open(new_data, 'r') as csvfile:
    # create the csv reader
    csvreader = csv.reader(csvfile)

    # extracting each data row one by one
    for row in csvreader:
        times.append(numpy.float32(row[0]))
        prices.append(numpy.float32(row[1]))

plt.plot(times, prices,'r,')
plt.grid(True)
plt.title("New Full Data Set")
plt.xlabel("Price (USD)")
plt.ylabel("Epoch Time")
frame1 = plt.gca()
#frame1.axes.get_xaxis().set_visible(False)
#frame1.axes.get_yaxis().set_visible(False)
plt.savefig('new_data_full_graph.png')