#Code snippets that are useful


#Utilities

#Hide dplyr summarisation warning
options(dplyr.summarise.inform=F) 

#Remove all objects from the environment
rm(list = ls())

#Copy dataframe to clipboard for pasting to Excel
write.table(dfX, "clipboard-20000", sep="\t", row.names=FALSE) 
