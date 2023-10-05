#!/bin/bash

# 1. Print the current working directory.
echo "1. Current directory:"
pwd

# 2. Create a new directory.
echo "2. Creating a directory..."
mkdir test_directory

# 3. Move into the newly created directory.
echo "3. Moving into the directory..."
cd test_directory

# 4. Create a sample file.
echo "4. Creating a sample file..."
echo "Hello, World!" > file1.txt

# 5. List the contents of the directory.
echo "5. Contents of the directory:"
ls

# 6. Display the content of the sample file.
echo "6. Contents of file1.txt:"
cat file1.txt

# 7. Search for the word "sample" in the file.
echo "7. Searching for 'sample' in file1.txt:"
grep "sample" file1.txt

# 8. Rename file1.txt to new_file.txt.
echo "8. Renaming file1.txt to new_file.txt..."
mv file1.txt new_file.txt

# 9. List the contents of the directory.
echo "9. Updated contents of the directory:"
ls

# 10. Archive the directory.
echo "10. Archiving the directory..."
tar -czf archive.tar.gz .

# 11. List the contents of the directory.
echo "11. Contents of the directory after archiving:"
ls

# 12. Extract the archive.
echo "12. Extracting the archive..."
tar -xzf archive.tar.gz

# 13. List the contents of the directory.
echo "13. Contents of the directory after extracting the archive:"
ls

# 14. Remove the archive.
echo "14. Removing the archive..."
rm archive.tar.gz

# 15. Remove the directory and its contents.
echo "15. Removing the directory..."
cd ..
rm -r test_directory

# 16. Verify that the directory is deleted.
echo "16. Contents of the parent directory after removal:"
ls

# 17. Create an empty file.
echo "17. Creating an empty file..."
touch empty_file.txt

# 18. Create a new directory.
echo "18. Creating a new directory..."
mkdir new_directory

# 19. Remove the new directory (if it's empty).
echo "19. Removing the new directory..."
rmdir new_directory

# 20. Copy an empty file.
echo "20. Copying the empty file..."
cp empty_file.txt copied_file.txt

# 21. Create a file with content.
echo "21. Creating a file with content..."
echo "Renamed file" > renamed_file.txt

# 22. Display the first few lines of a file.
echo "22. Displaying the first few lines of renamed_file.txt:"
head renamed_file.txt

# 23. Display the last few lines of a file.
echo "23. Displaying the last few lines of renamed_file.txt:"
tail renamed_file.txt

# 24. Remove sections from each line.
echo "24. Removing sections from each line of renamed_file.txt:"
cut -d' ' -f1 renamed_file.txt

# 25. Count words, lines, characters, and bytes in a file.
echo "25. Counting words, lines, characters, and bytes in renamed_file.txt:"
wc renamed_file.txt

# 26. Compress files and directories.
echo "26. Archiving and compressing the directory..."
tar -czf archive.tar.gz .

# 27. List the contents of the directory.
echo "27. Contents of the directory after archiving and compressing:"
ls

# 28. Extract files from an archive.
echo "28. Extracting files from the archive..."
tar -xzf archive.tar.gz

# 29. List the contents of the directory.
echo "29. Contents of the directory after extracting the archive:"
ls

# 30. Remove the archive.
echo "30. Removing the archive..."
rm archive.tar.gz

# 31. Change file permissions.
echo "31. Changing file permissions..."
chmod 644 renamed_file.txt

# 32. Change file owner.
echo "32. Changing file owner..."
chown user:group renamed_file.txt

# 33. List running processes.
echo "33. Listing running processes:"
ps aux

# 34. Terminate a running process.
echo "34. Terminating a process (replace process_id with the actual process ID):"
# kill process_id

# 35. Display system activity.
echo "35. Displaying system activity (press 'q' to exit):"
top

# End of the script.
echo "Script completed."
