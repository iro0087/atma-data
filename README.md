# atma-data
Automate extraction of csv in R

## Warinig

The documentation references CONF VARIABLES at the top of the source code "script_analyse2.R"

                           #### CONF VARIABLES #####

                           #setwd(your path) #get it with getwd() function in your R shell, non needed for unix based systems

                            pattern_to_be <- "_extr.csv"

                            sep_ = ','
                            
                            val_to_stop <- list("15000", "14000", "6")
                            
                            column_name <- list("Salaire", "Salaire", "Absence") 
                            
                            list_names <- list("salaires.csv", "salaires2.csv", "salaires3.csv") # the files you want to clean
                            
                            #######################

## Usage 

- Put your files name you want to clean in the CONF VARIABLES, in **list_names** list

- **pattern_to_be** variable is the pattern that will be concatenatedto to the name of your input files for the output files

**Example:**

pattern_to_be = "_extr"

file_work.csv --> file_work_extr.csv

This work for n file in the **list_name** list

- Put the **row** asociated with the **column** (basically a cell) you want the output file bind __row by row__ the input file corresponding until it gets the cell

**Example:**

                A, B, C
                23, 33, 65
                11, 3, v
                2, E, 21

              
I want the output file to extract this csv until it gets the value **3** in the column **B**

So, i put B in **column_name** list in the CONF VARIABLES at the __index__ of the associated file.

I do the same with 3 in __val_to_stop__

## Troubleshooting

If you are on windows, you have to 

    setwd(path) 

At the begining of the script.

Where path can be see with

    getwd()

In your R shell.




