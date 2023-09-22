# atma-data
Automate extraction of csv in R

## Usage 

- Put your files you want to clean in the CONF VARIABLES, in **list_names** list

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


