#Code snippets that are useful


#Dplyr + Tidyr constructs
#===================================================================================
dfX <- dfY %>%
  #Pivot Wider / Pivot Longer
    pivot_wider(names_from = DescriptorField, values_from = ValueField)
    pivot_longer(names_to = "Descriptor", values_to = "Value", cols=3:4)
  #Replace NAs with a numerical value
    replace_na(list(N = 0, Y = 0))
  #Case / When
    mutate(Type = case_when(
                            height > 200 | mass > 200 ~ "large",
                            species == "Droid"        ~ "robot",
                            TRUE                      ~ "other"
                          )
           )
  #Coalesce
   mutate(Name = coalesce(Name1, Name2, Name3))
  #Remove all fields of a particular type
    select_if(~!is.numeric(.))

  #Half finished / uncategorised...
  distinct(FileID, .keep_all = TRUE) %>% 
  mutate_at("Value1",as.character) %>% 
  mutate_at(c("Val1", "Val2", "Val3"), factor)
  mutate(across...)

#Lubridate stuff
#===================================================================================

#Create integer of number of months difference between two dates
 mutate(Month_Relative = round(as.numeric(difftime(Date1, Date2, units = "days")*12/365.25))) 

#First day of month
floor_date(full.date, "month")

#Read in a "01-May-2010" format character string
 dmy(acc_org_fnd_dt)

#Purrr constructs
#===================================================================================


#Function template
#===================================================================================
fctn.XYZ = function(Param1,
                  Param2 = param2.values)
{
  
  #Code goes in here
  Output <- Param1
    
  return(Output)
}





#General Utilities
#===================================================================================


#Hide dplyr summarisation warning
options(dplyr.summarise.inform=F) 

#Remove all objects from the environment
rm(list = ls())

#Copy dataframe to clipboard for pasting to Excel
write.table(dfX, "clipboard-20000", sep="\t", row.names=FALSE) 
