#!/bin/bash
read -p "Enter Your Project Name: "  project_name

mkdir $project_name
cd $project_name


mkdir "data"
mkdir "doc"
mkdir "models"
mkdir "notebooks"
mkdir "results"
mkdir "src"

echo "# README

    Put some information about your data science project! I recommend you a structure:

    ## Problem

    In a couple of sentences write the problem you're trying to solve using data.

    ## Hypothesis

    State your main hypothesis of the research.

    ## Data Sources

    There's a directory just for data sources, but it's important to have a summary table with the main ones:
    Here's also a table for adding the important files and their routes inside the repository:


    | File Name | Address | Description |
    |:-:|:-:|:-:|:-:|
    |  |  |  |  |
    |  |  |  |  |
    |  |  |  |  |" > README.md

PS3='Please select your license type: '
options=("MIT" "BSD" "Empty")
select opt in "${options[@]}"
do
    case $opt in
        "MIT")
            echo "# LICENSE
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
