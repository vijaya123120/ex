create database global_Terrorism;
use global_Terrorism;
SELECT * FROM TerroristAttacks1;

-- TASK 1
-- Total number of terrorist attacks, total killed, total wounded
SELECT COUNT(*) AS TotalAttacks, SUM(Killed) AS TotalKilled, SUM(Wounded) AS TotalWounded
FROM TerroristAttacks1;

-- TASK 2
-- Breakdown of terrorist attacks by year:
SELECT Year, COUNT(*) AS AttacksCount
FROM TerroristAttacks1
GROUP BY Year order by AttacksCount desc;

-- TASK 3
-- Countries with the highest number of terrorist attacks
SELECT Country,COUNT(*) as Total_Attacks from terroristattacks1 group by Country 
order by Total_Attacks desc ;

-- TASK 4
-- Regions with the highest number of terrorist attacks
SELECT Region,COUNT(*) as Total_Attacks from terroristattacks1 group by Region
order by Total_Attacks desc ;

-- TASK 5
-- states with the highest number of terrorist attacks
SELECT State,COUNT(*) as Total_Attacks from terroristattacks1 group by State
order by Total_Attacks desc ;

-- TASK 6
-- cities with the highest number of terrorist attacks
SELECT City,COUNT(*) as Total_Attacks from terroristattacks1 group by City
order by Total_Attacks desc ;

-- TASK 7
select Attack_Type ,count(Attack_Type) as Total_Attacks from terroristattacks1 group by Attack_Type
order by Total_Attacks desc;

-- Task 8
-- Most common target types of terrorist attacks
select Target_Type,count(Target_Type) as Total_Attacks from terroristattacks1 group by Target_Type
order by Total_Attacks desc;

-- task 9
-- Specific targets that are frequently attacked
SELECT Target, COUNT(*) AS AttacksCount
FROM TerroristAttacks1
GROUP BY Target
ORDER BY AttacksCount DESC;

--  task 10
-- Groups responsible for the most terrorist attacks:
SELECT Group_Name, COUNT(*) AS AttacksCount
FROM TerroristAttacks1
GROUP BY Group_Name
ORDER BY AttacksCount DESC;

-- TASK 11
-- Most attacked region and country in 2014:
SElect Country,Region ,count(*) as Attacks_counts from terroristattacks1 group by Country,Region
order by Attacks_counts desc limit 5;

-- TASK 12
-- countries starting with I letter
select distinct Country from terroristattacks1 where Country like 'i%';

-- Task 13
-- regions with a total number of terrorist attacks greater than 500.
SELECT Region, COUNT(*) AS TotalAttacks
FROM terroristattacks1
GROUP BY Region
HAVING TotalAttacks > 500;


















