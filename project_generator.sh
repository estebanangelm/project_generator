#!/bin/bash

#This script creates a folder structure for a new data science project.
#It asks for two inputs to the user: the project name and the type of license.

#First it collects the project name and stores it in a variable. It will ask the user until a project name is selected or a force quit.
while [[ -z "$project_name" ]]
do
  read -p "Enter Your Project Name: "  project_name
done

#It creates the main folder with the project name, and then enters it for creating the rest of the folders
mkdir $project_name
cd $project_name

#Start creating the rest of the folders according to the structure in the README.md file.
mkdir "doc"
mkdir "notebooks"

mkdir "data"
cd "data"
mkdir "sql_queries"
mkdir "processed"
mkdir "original"
cd ..

mkdir "results"
cd "results"
mkdir "figures"
cd ..

mkdir "src"
cd "src"
mkdir "data"
mkdir "models"
cd ..

#Now it creates the README.md file with the project with a suggested structure for explaining the project.

echo "# $project_name
Put some information about your data science project! I recommend you a structure:

## Problem

In a couple of sentences write the problem you're trying to solve using data.

## Hypothesis

State your main hypothesis.

## Requirements

Explain the technical requirements the user cloning your repository needs for reproducing the project.

## Data Sources

There's a directory just for data sources, but it's important to have a summary table with the main ones:

| File Name | Address | Description |
|:-:|:-:|:-:|:-:|
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |" > README.md

# Now it creates the LICENSE.md file. It asks the user if he wants an MIT, BSD or empty license file.
# The user must select the number. The script will ask the user until a valid answer is returned.
# After receiving a valid answer, the script ends.
PS3='Please select a license type for your project (just type the number): '
options=("MIT" "BSD" "Empty")
select opt in "${options[@]}"
do
    case $opt in
        "MIT")
            echo "# LICENSE
MIT License

Copyright (c) ((NAME))((YEAR))

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" > LICENSE.md
          break;;
        "BSD")
            echo "# LICENSE
Copyright <YEAR> <COPYRIGHT HOLDER>

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
" > LICENSE.md
          break;;
        "Empty")
            echo "# LICENSE" > LICENSE.md
            break;;
        *) echo invalid option;;
    esac
done
