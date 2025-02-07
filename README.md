# Shell Script File Processing Bug
This repository demonstrates a common error in shell scripting when handling filenames that contain spaces.  The script `bug.sh` attempts to iterate over a list of files and process them, but fails to correctly handle filenames with spaces.  The solution is provided in `bugSolution.sh`.

## Bug Description
The original script uses double quotes around the filename variable in the loop. While this prevents word splitting, it also prevents parameter expansion if the filename contains spaces or special characters. This results in the script not processing files with spaces correctly.

## Solution
The solution uses an array to store filenames and iterates over the array elements using proper parameter expansion. This ensures that filenames with spaces are correctly handled.
