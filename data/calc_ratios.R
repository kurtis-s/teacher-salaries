avg_wages <- read.csv('AverageAnnualWages.csv', header=TRUE)
teacher_sals <- read.csv('AverageTeacherSalary.csv', header=TRUE)
merged_data <- merge(avg_wages, teacher_sals, by="country")

#Create a new column for the ratio of teacher salary to average annual wages
merged_data$ratio <- merged_data$avg_teacher_sal/merged_data$avg_annual_wage
merged_data <- merged_data[order(merged_data$ratio),]

write.csv(merged_data, file="SalaryRatios.csv", row.names=FALSE)
#barplot(merged_data$ratio, names.arg=merged_data$country, las=3, ylim=c(0,2))