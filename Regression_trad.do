clear
// Randomization test
//log using "/Users/riccardodalcero/Library/CloudStorage/OneDrive-UniversitaCattolicaSacroCuore-ICATT/Materials/RA
// /Data/log.log"

// Importing dataset
import excel using "dati gruppo.xlsx", firstrow clear 
rename età age
label variable age "age"
rename peso weight
label variable weight "weight"

gen thunderbeat=.
replace thunderbeat=1 if Tradizionale == 0
replace thunderbeat=0 if Tradizionale == 1
est clear
eststo: reg freq_card_0 Maropitant#thunderbeat  weight age
eststo: reg freq_resp_0 Maropitant#thunderbeat  weight age
eststo: reg freq_card_1 Maropitant#thunderbeat  weight age
eststo: reg freq_resp_1 Maropitant#thunderbeat  weight age
eststo: reg freq_card_2 Maropitant#thunderbeat  weight age
eststo: reg freq_resp_2 Maropitant#thunderbeat  weight age
esttab using "./latex/REG.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
est clear
eststo: reg etco_3      Maropitant#thunderbeat  weight age
eststo: reg freq_card_3 Maropitant#thunderbeat  weight age
eststo: reg freq_resp_3 Maropitant#thunderbeat  weight age
eststo: reg vap_3       Maropitant#thunderbeat  weight age
eststo: reg PAS_3       Maropitant#thunderbeat  weight age
eststo: reg PAD_3       Maropitant#thunderbeat  weight age
eststo: reg PAM_3       Maropitant#thunderbeat  weight age
esttab using "./latex/REG2.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
est clear
eststo: reg etco_4      Maropitant#thunderbeat  weight age
eststo: reg freq_resp_4 Maropitant#thunderbeat  weight age
eststo: reg alog_4      Maropitant#thunderbeat  weight age
eststo: reg alog_MAC_4  Maropitant#thunderbeat  weight age
eststo: reg vap_4       Maropitant#thunderbeat  weight age
eststo: reg PAS_4       Maropitant#thunderbeat  weight age
eststo: reg PAD_4       Maropitant#thunderbeat  weight age
eststo: reg PAM_4       Maropitant#thunderbeat  weight age
eststo: reg freq_card_4 Maropitant#thunderbeat  weight age
esttab using "./latex/REG3.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
est clear
eststo: reg etco_5      Maropitant#thunderbeat  weight age
eststo: reg freq_resp_5 Maropitant#thunderbeat  weight age
eststo: reg alog_5      Maropitant#thunderbeat  weight age
eststo: reg alog_MAC_5  Maropitant#thunderbeat  weight age
eststo: reg vap_5       Maropitant#thunderbeat  weight age
eststo: reg PAS_5       Maropitant#thunderbeat  weight age
eststo: reg PAD_5       Maropitant#thunderbeat  weight age
eststo: reg PAM_5       Maropitant#thunderbeat  weight age
eststo: reg freq_card_5 Maropitant#thunderbeat  weight age
esttab using "./latex/REG4.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
est clear
eststo: reg etco_6      Maropitant#thunderbeat  weight age
eststo: reg freq_resp_6 Maropitant#thunderbeat  weight age
eststo: reg alog_6      Maropitant#thunderbeat  weight age
eststo: reg alog_MAC_6  Maropitant#thunderbeat  weight age
eststo: reg vap_6       Maropitant#thunderbeat  weight age
eststo: reg PAS_6       Maropitant#thunderbeat  weight age
eststo: reg PAD_6       Maropitant#thunderbeat  weight age
eststo: reg PAM_6       Maropitant#thunderbeat  weight age
esttab using "./latex/REG5.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
est clear
eststo: reg etco_7      Maropitant#thunderbeat  weight age
eststo: reg freq_resp_7 Maropitant#thunderbeat  weight age
eststo: reg alog_7      Maropitant#thunderbeat  weight age
eststo: reg alog_MAC_7  Maropitant#thunderbeat  weight age
eststo: reg vap_7       Maropitant#thunderbeat  weight age
eststo: reg PAS_7       Maropitant#thunderbeat  weight age
eststo: reg PAD_7       Maropitant#thunderbeat  weight age
eststo: reg PAM_7       Maropitant#thunderbeat  weight age
esttab using "./latex/REG6.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
est clear
eststo: reg freq_card_8 Maropitant#thunderbeat  weight age
eststo: reg etco_8      Maropitant#thunderbeat  weight age
eststo: reg freq_resp_8 Maropitant#thunderbeat  weight age
eststo: reg alog_8      Maropitant#thunderbeat  weight age
eststo: reg alog_MAC_8  Maropitant#thunderbeat  weight age
eststo: reg vap_8       Maropitant#thunderbeat  weight age
eststo: reg PAS_8       Maropitant#thunderbeat  weight age
eststo: reg PAD_8       Maropitant#thunderbeat  weight age
eststo: reg PAM_8       Maropitant#thunderbeat  weight age
eststo: reg freq_card_8 Maropitant#thunderbeat  weight age
esttab using "./latex/REG7.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
est clear
eststo: reg freq_card_9 Maropitant#thunderbeat  weight age
eststo: reg etco_9      Maropitant#thunderbeat  weight age
eststo: reg freq_resp_9 Maropitant#thunderbeat  weight age
eststo: reg alog_9      Maropitant#thunderbeat  weight age
eststo: reg alog_MAC_9  Maropitant#thunderbeat  weight age
eststo: reg vap_9       Maropitant#thunderbeat  weight age
eststo: reg PAS_9       Maropitant#thunderbeat  weight age
eststo: reg PAD_9       Maropitant#thunderbeat  weight age
eststo: reg PAM_9       Maropitant#thunderbeat  weight age
eststo: reg freq_card_9 Maropitant#thunderbeat  weight age
esttab using "./latex/REG8.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
est clear
eststo: reg freq_card_10 Maropitant#thunderbeat  weight age
eststo: reg etco_10      Maropitant#thunderbeat  weight age
eststo: reg freq_resp_10 Maropitant#thunderbeat  weight age
eststo: reg alog_10      Maropitant#thunderbeat  weight age
eststo: reg alog_MAC_10  Maropitant#thunderbeat  weight age
eststo: reg vap_10       Maropitant#thunderbeat  weight age
eststo: reg PAS_10       Maropitant#thunderbeat  weight age
eststo: reg PAD_10       Maropitant#thunderbeat  weight age
eststo: reg PAM_10       Maropitant#thunderbeat  weight age
eststo: reg freq_card_10 Maropitant#thunderbeat  weight age
esttab using "./latex/REG9.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
est clear
eststo: reg freq_card_11 Maropitant#thunderbeat  weight age
eststo: reg etco_11      Maropitant#thunderbeat  weight age
eststo: reg freq_resp_11 Maropitant#thunderbeat  weight age
eststo: reg alog_11      Maropitant#thunderbeat  weight age
eststo: reg alog_MAC_11  Maropitant#thunderbeat  weight age
eststo: reg vap_11       Maropitant#thunderbeat  weight age
eststo: reg PAS_11       Maropitant#thunderbeat  weight age
eststo: reg PAD_11       Maropitant#thunderbeat  weight age
eststo: reg PAM_11       Maropitant#thunderbeat  weight age
esttab using "./latex/REG10.tex", replace  ///
   b(3) se(3)  label star(* 0.10 ** 0.05 *** 0.01) ///
 booktabs  ///
 title("Regression")   ///
addnotes(" ")
