datadir = data

$(datadir)/SalaryRatios.csv: $(datadir)/AverageTeacherSalary.csv $(datadir)/AverageAnnualWages.csv
	cd $(dir $@); \
	Rscript calc_ratios.R

clean:
	rm -f $(datadir)/SalaryRatios.csv
