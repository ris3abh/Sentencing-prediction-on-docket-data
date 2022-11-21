library(dplyr) # for general cleaning functions
library(stringr) # for string manipulations
library(magrittr) # for the '%<>% function

df_offenses_disposition <- read.csv(file = 'data/offenses_dispositions_v3.csv')


df_offenses_disposition <- df_offenses_disposition%>%
  mutate(
    min_period = NA,
    max_period = NA,
    
)



df_offenses_disposition[,c("min_period","max_period")] <- clean_dispositions_periods(df_offenses_disposition$period,df_offenses_disposition$min_period,df_offenses_disposition$max_period)


# df_offenses_disposition[,c("min_period","max_period")]

df_offenses_disposition <- df_offenses_disposition%>%
  mutate(
    numeric_min_period = clean_period_to_days(min_period),
    numeric_max_period = clean_period_to_days(max_period),
    
  )

# df_offenses_disposition$numeric_min_period <- clean_period_to_days(df_offenses_disposition$min_period)
# df_offenses_disposition$numeric_max_period <- clean_period_to_days(df_offenses_disposition$max_period)

View(head(df_offenses_disposition,50))

write.csv(df_offenses_disposition,"data/offenses_dispositions_v3_clean.csv", row.names = FALSE)
