# This file is generated and can be overwritten.
# This is generated base on demand.csv
suppressWarnings(library("v2viz"))
library(dplyr)
library(stringr)

refine_dataframe <-function(df) {
  df_new <- df %>% 
      mutate_all(funs(as.character)) %>%
      mutate(`store` = as.integer(`store`)) %>%
      mutate(`sales` = as.integer(`sales`)) %>%
      mutate(`date` = lubridate::mdy(`date`)) %>%
      mutate(`item` = stringr::str_replace_all(`item`, stringr::fixed("1"), "T-shirts")) %>%
      mutate(`item` = stringr::str_replace_all(`item`, stringr::fixed("2"), "Formal Shirts")) %>%
      mutate(`item` = stringr::str_replace_all(`item`, stringr::fixed("3"), "Jeans")) %>%
      mutate(`item` = stringr::str_replace_all(`item`, stringr::fixed("4"), "Trousers")) %>%
      mutate(`item` = stringr::str_replace_all(`item`, stringr::fixed("5"), "Blazers")) %>%
      mutate(`item` = stringr::str_replace_all(`item`, stringr::fixed("6"), "Jackets")) %>%
      mutate(`item` = stringr::str_replace_all(`item`, stringr::fixed("7"), "Shoes")) 
  return (df_new)
}

# output file if NULL return df, otherwise, write to file 
refine_file <- function (input, output=NULL, overwrite="FALSE") { 
  if (is.na(overwrite)) { overwrite = "FALSE"}
  if (is.na(output)) { output = NULL}
  if(!file.exists(input)) { 
    return (paste(input, "file does not exist")); 
  } 
  if (!is.null(output) && file.exists(output) && !(overwrite == "TRUE")) { 
    return (paste(output, "already exists.")); 
  } 
  df <- read.csv(input, check.names=FALSE, stringsAsFactors=FALSE) 
  df <- refine_dataframe(df) 
  if (!is.null(output)) { 
    write.csv(df, file = output, row.names=FALSE) 
    return(paste("Writing to", output, "file is complete")) 
  } else { 
    return (df) 
  } 
}

# main entry for Rscript
args <- commandArgs(trailingOnly = TRUE)
opts<-c();
for (arg in args) {
   x <- lapply(strsplit(arg, split="="), trimws);
   opts[x[[1]][1]] <-x[[1]][2];
}
# validate
required <- c(opts['input']);
missingRequired <- any(is.na(required));
if (missingRequired) {
   print("Missing required parameter");
} else {
   refine_file(opts['input'], opts['output'], opts['overwrite']);
}
