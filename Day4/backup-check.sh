#!/bin/bash

# Ask the user for a directory
read -p "Enter the directory path: " dir

# Verify whether the directory exists
if [ -d "$dir" ]; then
    echo "Directory found"
else
    echo "Directory not found"
fi

# Print numbers from 1 to 5
echo "Numbers from 1 to 5:"
for num in {1..5}
do
    echo "$num"
done

# Function to display the current date
show_date() {
    echo "Today's date is: $(date)"
}

# Call the function
show_date
