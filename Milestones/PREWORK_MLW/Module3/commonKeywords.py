from collections import Counter
from datetime import date

input = open("00_Combined.txt", "r", encoding="utf8")
Original_contents = input.read().split()
input.close()

sorted_without_duplicates_contents = [key for key, value in Counter(Original_contents).most_common()]

output= open("MostCommonWords-"+str(date.today())+".txt","w+")
output.write("The list after sorting and removal : " + str(sorted_without_duplicates_contents))
output.close()
