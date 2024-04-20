#!/bin/bash

# Define the output file
outfile="metadata.csv"

# Write the headers to the file
echo "primary_label,filename,filepath" > $outfile

# Function to append file info to the CSV
append_files() {
    dir=$1
    label=$2
    folder=$3
    for file in "$dir"/*; do
        echo $file
        echo "$label,$folder/$(basename "$file"),$file" >> $outfile
    done
}

# Append files from the two directories
append_files "data/Binary_Drone_Audio/unknown" "0" "unknown"
append_files "data/Binary_Drone_Audio/yes_drone" "1" "yes_drone"