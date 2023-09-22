# Work-Related-Fatality-Study-An-In-depth-Analysis-using-Python-and-MySQL
About the project: The Work-Related Fatality Study is a comprehensive analysis of fatal incidents that occurred in various workplaces. The project aims to examine and understand the factors contributing to work-related fatalities, identify trends and patterns, and provide insights to improve workplace safety measures.
Columns:

The data consists of the incidanta that occured from the period 23/06/2009 to 02/01/2017.

1. ID: This column represents a unique identifier assigned to each incident. It helps in distinguishing and referencing specific incidents in the dataset.

2. Incident Date: This column records the date when the fatal incident occurred. It provides a chronological timeline for analyzing the incidents over a specific period.

3. Day of the Week: This column captures the day of the week corresponding to the incident date. It helps in examining whether certain days of the week have a higher frequency of work-related fatalities.

4. City: This column contains the name of the city where the incident took place. It provides geographical information about the location of the incident.

5. State: This column records the state where the incident occurred. It helps in analyzing work-related fatalities based on different states and identifying regional trends.

6. Description: This column provides a detailed description of the incident, including the circumstances, causes, and contributing factors. It helps in understanding the nature of the incidents and identifying common themes or risks.

7. Plan: This column indicates any existing safety plans or protocols that were in place at the workplace. It helps in evaluating the effectiveness of safety measures and identifying areas for improvement.

8. Citation: This column captures information about any citations issued by regulatory authorities, such as OSHA, in relation to the incident. It indicates whether violations of safety regulations were identified and recorded.

9. Unnamed : This column contains 0 for all the rows. And it is not required for the analysis.

Project Description: 
This project trained me how to use SQL to analyze a real-world database, how to extract the most useful information from the dataset, how to pre-process the data using Python for improved performance, and how to use a structured query language to retrieve useful information from the database.

Module 1: Cleaning the dataset

Module 2: Run SQL queries 

Dataset used: fatality.csv

After cleaning, the dataset : fatalities_cleaned.csv

Analysis done using Python file : work_related_fatality.ipynb

Insights drawn using SQL file : work_related_fatality.sql

# Insights: 

- The dataset comprises a total of 14,914 reported workplace incidents.
- Among these, 3,345 fatalities received citations, indicating safety violations.
- The day with the highest number of fatalities, at 18.29%, was 'Tuesday.'
- There were 79 fatalities associated with welding incidents.
- Over the last three years, there were a total of five welding-related fatalities: two in 2021 and 2020 each, and one in 2019.
- The top 5 states with the highest numbers of fatal incidents are Texas, California, Florida, New York, and Illinois.
- The leading states for workplace fatalities due to stabbings are Texas, Kentucky, California, Illinois, and Washington.
- States with the most workplace fatalities from shootings, in descending order, include Indiana, California, Texas, New York, Florida, Kentucky, Oregon, Nevada, Illinois, and Washington.
- The analysis also includes an annual count of shooting deaths, with the highest number recorded in 2021, totaling 38.
