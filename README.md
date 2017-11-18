## project_generator

A terminal script for creating an organized repository for a new data science project.

### Instructions

After cloning or downloading the `project_generator` repo, move the `project_generator.sh` file to the location in which you want to create your data science project. When you have the file in the location, execute the following line in the terminal:

```
bash project_generator.sh

```
Follow the instructions, you will only have to type the project name and select the type of license for your project.

### Directory Structure

After executing this script, your project directory will have the following structure:


```
├── LICENSE
├── README.md          <- A README file with a suggested structure.
├── data
│   ├── sql_queries    <- A folder for including the SQL scripts if needed.
│   ├── processed      <- The data after the wrangling process.
│   └── original            <- The original datasets.
│
├── doc               	<- A folder for including documentation for executing the analysis.
│
│
├── notebooks          <- Jupyter or Rmarkdown notebooks.
│
├── results            <- PDF, Markdown or HTML files with the results.
│   └── figures        <- Folder with the figures and plots.
│
├── src                <- Scripts and code used for the project.
	│
	├── data           <- Scripts to download or wrangle the data
	│
	├── models         <- Scripts to train models.
```

### Author and Creation Date

This script was created by @estebanangelm in 2017.