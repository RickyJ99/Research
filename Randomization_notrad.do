// Randomization test
//log using "/Users/riccardodalcero/Desktop/Research/log1.log", replace
// Importing dataset
import excel using "dati gruppo.xlsx", firstrow clear 
keep if Tradizionale==0
// Create a categorical grouping variable named "group" with labels
gen group = .
label define group 0 "Control" 1 "Treatment"
label values group group
replace group = 1 if Maropitant == 1 // Treatment
replace group = 0 if Maropitant == 0 // Control

// Generate summary statistics for età and peso by Maropitant group
tabstat età peso, by(group) statistics(mean) columns(statistics)

// Generate a t-test for the difference in means between the two groups
ttest età, by(group)

// Store the p-value from the t-test in a local macro
local p_value_età = r(p)

// Generate a t-test for the difference in means between the two groups
ttest peso, by(group)

// Store the p-value from the t-test in a local macro
local p_value_peso = r(p)

// Calculate means using summarize and store them in local macros
summarize età if group == 0, meanonly
local Mean_età_0 = r(mean)

summarize età if group == 1, meanonly
local Mean_età_1 = r(mean)

summarize peso if group == 0, meanonly
local Mean_peso_0 = r(mean)

summarize peso if group == 1, meanonly
local Mean_peso_1 = r(mean)

// Create a matrix to store the results
matrix results = (`Mean_età_0', `Mean_età_1', `p_value_età'\ `Mean_peso_0' , `Mean_peso_1' , `p_value_peso')

// Assign labels to the matrix columns
matrix colnames results = Metadone(control) Maropitant(treatment)  p-value 
matrix rownames results = Age weigth
est clear
// Print the table
matrix list results
esttab matrix(results) using "./latex/traditiona_rand_ntrad.tex", replace

// Create a histogram of età by treatment group
histogram età, by(group, title("Distribution of age by Treatment Group"))
graph export "./latex/histogram_eta_ntrad.png", replace

// Create a box plot of età by treatment group
graph box età, over(group) title("Box Plot of age by Treatment Group")
graph export "./latex/box_plot_eta_ntrad.png", replace

// Create similar plots for the variable peso
histogram peso, by(group, title("Distribution of weight by Treatment Group"))
graph export "./latex/histogram_peso_ntrad.png", replace
graph box peso, over(group) title("Box Plot of weight by Treatment Group")
graph export "./latex/box_plot_peso_ntrad.png", replace
est clear
// Probit regression to test if characteristics predict treatment
probit Maropitant età peso


// Save regression results in LaTeX format
esttab using "./latex/probit_ntrad.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression probit to check randomization")   ///
addnotes(" ")


