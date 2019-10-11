This repository contains some scripts useful to manipulate Apple Photos Library or work with photos files.
I used then to migrate my 800gb, 101.000 photos library from Apple Photos to digikam.


# Check Photos Library

Not once, but several times, I tried to export a file in my Mac Photos App and got an error that the photo could not be copied.
Later I discovered that the physical file was missing, althrough it is referenced in Photos database, and even can be seen inside the App (possibly a low res version of it). 

So, I made this simple script that checks if the file is missing or not on the disk. It generates an output file
with all UUIDs of it's master and Versions found on database that has missing files on disc, that list can be used on the 
Applescript "Missing Photos to Album" and restore_from_directory, explained below.

On my last check, I found out that I have 720 photos/videos missing, from a total of about 100.000 of my Library. 
This was tested on Photos version is 3.0 (High Sierra), but I think it also works on Photos 4.0. 
   
Requires python 3, may work with python 2 with little changes, but not tested.

USAGE:
 ``` shell
  $ ./check_photos_library.py directory_of_your_library output_file
```

**OPTIONS:**

    -ev          : Exclude version check of files. Only MASTER files are checked (not functional)
    -v, --verbose: print a lof of messages on terminal.
    -p, --path   : create a CSV file with UUDIs and path. (useful on restore script).



# Missing Photos to Album

This applescript receives a list of photos Version UUIDs, Master UUIDs and Pathnames and a selection of Photos in Photos.app.
 With that, it compares the UUIDs of the photos selected to the list and add any photo selected that
 is present in the list to a Album chosen by the user (default "Missing Photos on Disk". 
 
It should work with any size of selection, but on my slow computer it worked better with smaller ones. 
 
**USAGE:**

   ``` shell
   - Open Photos.app
   - Select all photos you want to check
   - Double Click on Script Icon
   - Click RUN button
   - Choose the file with UUIDs (generated by check_photos_library.py)
   - Type Album Name ("Photos Missing on Disk") will be used if pressed cancel
   ``` 


# Recover from Directory

This script takes the UUIDs list from a file, the Library directory of Photos.app and a directory with all 
files that are missing containing on the list. It than copies the file back to Library directory on the same location 
specified in UUIDs list.

   ``` shell
   ./recover_from_directory.py <uuid_list> <photos_dir> <library_dir>
   ``` 


# Organize by Date

This is a helper script to organize the directory structure of your Photos Library. Some organizers do that 
automatically, but in my process of migrating from Mac Photos App to Digikam, I needed something like this, to
put all photos in directories based on their year. 

the script reads the EXIF data from the photos files and move then to a directory structure like YEAR/MONTH/DAY.
You can choose the level to create. YEAR is mandatory, will always be created.

Requires python 3 and PyExifTool, may work with python 2 with some minor changes, but not tested.

**USAGE:**

   ``` shell
   ./organize_by_date.py [options] -s <path_or_files> -o [output_dir]
   ``` 


**OPTIONS:**

    -s, --source: list of source paths and files to check
    -o, --output_dir: where the directory structure will be created.
                      OPTIONAL. Defaults to './' 
    -m, --month: create MONTH directories. Result will be YEAR/MONTH . OPTIONAL
    -d, --day: create DAY directories. Result will be YEAR/MONTH/DAY . OPTIONAL
    -g, --guess: try to guess the date, othewise, does nothing. Method sequence: . OPTIONAL
                   1) EXIF DateTimeOriginal
                   2) EXIF DateTime
                   3) EXIF ModifyDate
                   4) Date of creation of file from SO 


   - path_or_files: if a Path, will scan all files inside and try to extract the EXIF data from then. those whose EXIF data could not be extract will be IGNORED
   - output_dir: where the files will be MOVED to. If ignored, defaults to current dir, './'

