# 1) Find the number of corona patients who faced shortness of breath.
SELECT COUNT(*) FROM covid_sql WHERE Shortness_of_breath = 'True' AND Corona = 'Positive';

# 2) Find the number of negative corona patients who have fever and sore_throat. 
SELECT COUNT(*) FROM covid_sql WHERE Fever = 'True' AND Sore_throat = 'True' AND Corona = 'Negative';

# 3) Group the data by month and rank the number of positive cases.
SELECT COUNT(*) as Positive_cases, month(Test_date) from covid_sql where 
Corona = 'Positive' group by month(Test_date) order by Positive_cases desc;

# 4) Find the female negative corona patients who faced cough and headache.
SELECT Ind_ID from covid_sql where Corona = 'Negative' AND Sex = 'Female' 
and Cough_symptoms = 'True' and Headache = 'True';

# 5) How many elderly corona patients have faced breathing problems?
SELECT COUNT(*) from covid_sql where Corona = 'Positive' AND Age_60_above = 'Yes' AND Shortness_of_breath = 'True';

# 6) Which three symptoms were more common among COVID positive patients?
SELECT COUNT(*) from covid_sql where Corona = 'Positive' and Cough_symptoms = 'True'; # 6064
SELECT COUNT(*) from covid_sql where Corona = 'Positive' and Fever = 'True'; # 5040
SELECT COUNT(*) from covid_sql where Corona = 'Positive' and Sore_throat = 'True'; # 1359
SELECT COUNT(*) from covid_sql where Corona = 'Positive' and Shortness_of_breath = 'True'; # 979
SELECT COUNT(*) from covid_sql where Corona = 'Positive' and Headache = 'True'; # 2005
# From observing the counts we can find that Cough_symptoms, Fever, Headache are 
# more common in covid positive patients.

# 7) Which symptom was less common among COVID negative people?
SELECT COUNT(*) from covid_sql where Corona = 'Negative' and Cough_symptoms = 'True'; 
SELECT COUNT(*) from covid_sql where Corona = 'Negative' and Fever = 'True'; 
SELECT COUNT(*) from covid_sql where Corona = 'Negative' and Sore_throat = 'True'; 
SELECT COUNT(*) from covid_sql where Corona = 'Negative' and Shortness_of_breath = 'True'; 
SELECT COUNT(*) from covid_sql where Corona = 'Negative' and Headache = 'True'; 
# Ans: By observing the counts in every case, we can find less common symptom in covid negative people.

# 8) What are the most common symptoms among COVID positive males whose known contact was abroad? 
SELECT COUNT(*) from covid_sql where Sex = 'Male' and Corona = 'Positive' and Known_contact = 'Abroad' 
and Shortness_of_breath = 'True'; # 84
SELECT COUNT(*) from covid_sql where Sex = 'Male' and Corona = 'Positive' and Known_contact = 'Abroad' 
and Cough_symptoms = 'True'; # 532
SELECT COUNT(*) from covid_sql where Sex = 'Male' and Corona = 'Positive' and Known_contact = 'Abroad' 
and Fever = 'True'; # 407
SELECT COUNT(*) from covid_sql where Sex = 'Male' and Corona = 'Positive' and Known_contact = 'Abroad' 
and Headache = 'True'; # 129
SELECT COUNT(*) from covid_sql where Sex = 'Male' and Corona = 'Positive' and Known_contact = 'Abroad' 
and Sore_throat = 'True'; # 87

# Ans: Most common symptoms are found to be Cough_symptoms and Fever in covid positive males.



