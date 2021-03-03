#Code snippets that are useful


#Dplyr + Tidyr constructs
#===================================================================================
dfX <- dfY %>%
  pivot_wider(names_from = DescriptorField, values_from = ValueField) %>%
  replace_na(list(N = 0, Y = 0))
  mutate(Type = case_when(
                          height > 200 | mass > 200 ~ "large",
                          species == "Droid"        ~ "robot",
                          TRUE                      ~ "other"
                        )
         )


#Lubridate stuff
#===================================================================================

#Create integer of number of months difference between two dates
mutate(Month_Relative = round(as.numeric(difftime(Date1, Date2, units = "days")*12/365.25))) 



#Purrr constructs
#===================================================================================


#Function template








#General Utilities
#===================================================================================


#Hide dplyr summarisation warning
options(dplyr.summarise.inform=F) 

#Remove all objects from the environment
rm(list = ls())

#Copy dataframe to clipboard for pasting to Excel
write.table(dfX, "clipboard-20000", sep="\t", row.names=FALSE) 
