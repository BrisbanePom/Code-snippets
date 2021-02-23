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
