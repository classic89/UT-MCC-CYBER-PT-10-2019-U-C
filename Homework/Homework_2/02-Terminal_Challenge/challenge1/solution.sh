#!/bin/bash
 set -o errexit # stop execution on error

# images_folder = $1 # retrieve input parameter and populate a variable

absolute_path='/mnt/c/repo/Cyber_Security_Class_Oct2019/UT-MCC-CYBER-PT-10-2019-U-C/Homework/Homework_2/'
out_folder=$absolute_path'02-Terminal_Challenge/challenge1/'
images_folder=$absolute_path'resources/Chal-1_Images/Pictures/'
JPG_folder=$out_folder'JPG/'
PNG_folder=$out_folder'PNG/'
TIF_folder=$out_folder'TIFF/'

echo 'out_folder: '$out_folder
echo 'images_folder: '$images_folder
echo 'JPG_folder: '$JPG_folder
echo 'PNG_folder: '$PNG_folder
echo 'TIF_folder: '$TIF_folder

for dir in $JPG_folder $PNG_folder $TIF_folder
do
     if [ -d $dir ]; then
          echo 'folder does exist'
          cd $images_folder
      # * Locate all **.jpg** files inside the folder and copy each into their respective folder.
          find -iname '*.jp*' -exec cp {} $JPG_folder \;
	  find -iname '*.png' -exec cp {} $PNG_folder \;
	  find -iname '*.tiff' -exec cp {} $TIF_folder \;
     else
          echo "no folder"
          cd $out_folder
          mkdir JPG
          mkdir PNG
          mkdir TIFF
          touch PictureCounts.md
     fi
done

cd $JPG_folder
echo 'JPG: '$(ls -1 | wc -l) >> ../PictureCounts.md
# cat 'PNG: ' -exec 
cd $PNG_folder
echo 'PNG: '$(ls -1 | wc -l) >> ../PictureCounts.md
# cat 'TIF: ' -exec
cd $TIF_folder
echo 'TIF: '$(ls -1 | wc -l) >> ../PictureCounts.md

#* Locate all **.jpg**, **.png**, and **.tiff** files inside the folder
#* copy each into their respective folder.
#* Create a new file called **PictureCounts.md**.
#* Count how many times each file type occurs and log the results to the **PictureCounts.md** file.
#* An annotated PDF document with screenshots of each of the commands being run in the command line and the results shown in the file explorer when relevant.
