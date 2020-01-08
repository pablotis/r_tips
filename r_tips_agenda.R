#install.packages("taskscheduleR")
library(taskscheduleR)
myscript <- system.file("extdata", "r_tips_bot.R", package = "taskscheduleR")


## Run every day at the same time on 09:10, starting from tomorrow on
## Mark: change the format of startdate to your locale if needed (e.g. US: %m/%d/%Y)
taskscheduler_create(taskname = "r_tips_diario", rscript = myscript, 
                     schedule = "DAILY", starttime = "09:10", startdate = format(Sys.Date(), "%d/%m/%Y"))


