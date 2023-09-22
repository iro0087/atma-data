#### CONF VARIABLES #####

#setwd(your path) #get it with getwd() function in your R shell, non needed for unix based systems

pattern_to_be <- "_extr.csv"

sep_ = ','

val_to_stop <- list("15000", "14000", "6")

column_name <- list("Salaire", "Salaire", "Absence") 

list_names <- list("salaires.csv", "salaires2.csv", "salaires3.csv") # the files you want to clean

#######################

list_ <- list()

list_names_output <- list()

len_ = 0

for (i in list_names){

  tr <- gsub(".csv", pattern_to_be, list_names[len_+1])

  list_names_output[[len_+1]] <- tr

  file_to_add <- read.csv(list_names[[len_+1]], sep=sep_)

  list_[[len_+1]] <- file_to_add

  len_ = len_ + 1
  
}

stop = 0

for (i in 1:len_){ 
  
  tableau <- list_[i]
  
  name <- list_names_output[[i]]
  
  name <- paste(name)
  
  z <- do.call(rbind.data.frame, tableau)  

  df <- data.frame(z[1,]) 
 
  len2_ <- nrow(z)

  col_to_search <- colnames(list_[[i]])

  col_pos = 1

  col_pos2 = 1

  stop2 = 0

  print(column_name[[i]])

  for (ib in col_to_search){

       if (col_to_search[col_pos2] != column_name[[i]] && stop2 == 0){

               col_pos = col_pos + 1

               stop2 = 1

       } 

  col_pos2 = col_pos2 + 1

  }

  print(z[,col_pos])

  print(val_to_stop[[i]])

  print(typeof(val_to_stop[[i]]))

  i2 = 2

  while (stop == 0 && i2 < len2_)
  {
   
    df2 <- z[i2,]
    
    df <- rbind(df, df2)

    to_compare <- as.character(z[i2, col_pos]) 

    if (to_compare == val_to_stop[[i]]){
     
      print(z[i2, col_pos]) 

      stop = 1
      
    }
    
    i2 = i2 + 1
    
  }

  stop = 0

  print(name)

  write.csv(df, name, row.names=FALSE)    
  
  rm(df)
 
}






