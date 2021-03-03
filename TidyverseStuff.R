#Code snippets that are useful


#Dplyr + Tidyr constructs
#===================================================================================
dfX <- dfY %>%
  #Pivot Wider / Pivot Longer
    pivot_wider(names_from = DescriptorField, values_from = ValueField) %>%
  #Replace NAs with a numerical value
    replace_na(list(N = 0, Y = 0))
  #Case / When
    mutate(Type = case_when(
                            height > 200 | mass > 200 ~ "large",
                            species == "Droid"        ~ "robot",
                            TRUE                      ~ "other"
                          )
           )
  #Remove all fields of a particular type
    select_if(~!is.numeric(.))

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
