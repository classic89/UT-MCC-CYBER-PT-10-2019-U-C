set -o errexit # stop execution on error

# Create three folders called: **JPG**, **PNG**, **TIFF**.
absolute_path = pwd
mkdir JPG
mkdir PNG
mkdir TIFF
touch PictureCounts.md

#* Locate all **.jpg**, **.png**, and **.tiff** files inside the folder and copy each into their respective folder.
images_folder = $1 # retrieve input parameter and populate a variable
if [ -f images_file  ]; then
     echo do something here file does exist
     cd images_folder
     Locate all **.jpg**
     # find ./ -type f \( -iname \*.jpg
     find -E . -regex '.*\.(jpg|png)'
else
    echo no filename added
    cd images_folder = ../images
fi



#* Locate all **.jpg**, **.png**, and **.tiff** files inside the folder
#* copy each into their respective folder.
#* Create a new file called **PictureCounts.md**.
#* Count how many times each file type occurs and log the results to the **PictureCounts.md** file.
#* An annotated PDF document with screenshots of each of the commands being run in the command line and the results shown in the file explorer when relevant.
