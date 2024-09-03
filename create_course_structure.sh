#!/bin/bash

# Define course names and months
months=("1_HTML_and_CSS" "2_Intermediate_CSS_and_JavaScript" "3_JavaScript_Deep_Dive_and_Git_GitHub" "4_React_and_Capstone_Project")
weeks=("Week_1" "Week_2" "Week_3" "Week_4")

# Define the base directory where the course structure will be created
base_dir="$HOME/CourseStructure"

# Create the base directory
mkdir -p "$base_dir"

# Create folder structure
for month in "${months[@]}"; do
    month_dir="$base_dir/$month"
    mkdir -p "$month_dir"
    for week in "${weeks[@]}"; do
        week_dir="$month_dir/$week"
        mkdir -p "$week_dir/Assignments"
        mkdir -p "$week_dir/Projects"
        mkdir -p "$week_dir/Resources"
    done
done

echo "Course structure has been created at $base_dir."

