-- Work related fatality analysis

create database work_fatality;

select * from fatalities;

-- Task 1
/* What is the number of reported incidents?

The task is to calculate the total number of incidents reported in the given dataset. */

select count(*) as Incidents_reported from fatalities;

-- Task 2

/* What is the year to year change for the number of fatal incidents?

The task is to calculates the year-to-year percentage changes(Round it of to nearest whole number)
 in the number of fatalities for each incident year, excluding the year 2022. */
 
select year(incident_date) as year, count(*) as n_fat,
lag(count(*), 1) over (order by year(incident_date)) as prev,
round(((count(*) - lag(count(*),1) over (order by year(incident_date)))/lag(count(*),1) over (order by year(incident_date))) * 100) as y2y
from fatalities
where year(incident_date) < 2022
group by year;


-- Task 3
/* What is the number of fatalities that received a citation?

The task is to calculates the total number of fatalities that recieved a citation. */

select  citation, count(*) as count
from fatalities
group by citation;

-- Task 4 

/* What day of the week has the most fatalities and what is the overall percentage?

The task is to calculates day of the week that reported more number of fatalities and percentage(Rounds the percentage to two decimal places). */

select day_of_week, count,round((count*100/(select COUNT(*) from fatalities)),2) as percentage
from ( select day_of_week,count(*) as count 
from fatalities
group by day_of_week
order by count desc) a
;

-- Task 5

/* What is the number of fatalities involving welding?

The task is to calculates the total number of fatalities during welding. */

select description from fatalities;

select count(description) as welding_fatalities
from fatalities
where description like '%weld%';

-- Task 6

/*Select the last 5 from the previous query

The task is to calculates the last 5 fatalities during welding. */

select *
from fatalities
where description like '%weld%'
order by incident_date desc
limit 5;

-- Task 7 

/* Select the top 5 states with the most fatal incidents.

The task is to calculates the top 5 states which have most fatal incidents. */

select state,count(*) as fatal_count
from fatalities
group by state
order by fatal_count desc
limit 5;

-- Task 8

/* What are the top 5 states that had the most workplace fatalities from stabbings?

The task is to calculates the top 5 states which have most fatal incidents happed from stabbing. */

select state,count(*) as stab_counts
from fatalities
where description like '%stabb%'
group by state
order by stab_counts desc
limit 5;

-- Task 9
/* What are the top 10 states that had the most workplace fatalities from shootings?

The task is to calculates the top 10 states which have most fatal incidents happed from shooting. */

select state,count(*) as shoot_counts
from fatalities
where description like '%shot%'
group by state
order by shoot_counts desc
limit 10;

-- Task 10
/* What is the total number of shooting deaths per year?

The task is to calculates the total number of deaths caused by shooting each year.(In Decreasing order) */

select * from fatalities;

select year(incident_date) as year,count(*) as shooting_deaths
from fatalities
where description like '%shot%'
group by year
order by shooting_deaths desc;


