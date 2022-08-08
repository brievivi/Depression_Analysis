SELECT COUNT(*)
FROM Persons;
SELECT COUNT(Depressed)
FROM Persons
WHERE Depressed = 0;
SELECT COUNT(Depressed)
FROM Persons
WHERE Depressed = 1;

SELECT Age
FROM Persons
GROUP BY Age
ORDER BY Age ASC;
SELECT COUNT(Depressed)
FROM Persons
WHERE Depressed = 1
AND Age <54;
SELECT COUNT(Depressed)
FROM Persons
WHERE Depressed = 1
AND Age >54;

SELECT COUNT(Depressed)
FROM Persons
WHERE Depressed = 1
AND Age <35;
SELECT COUNT(Depressed)
FROM Persons
WHERE Depressed = 1
AND Age BETWEEN 35 AND 54;
SELECT COUNT(Depressed)
FROM Persons
WHERE Depressed = 1
AND Age BETWEEN 17 AND 35;

SELECT MIN(Gained_asset)
FROM Persons;
SELECT MAX(Gained_asset)
FROM Persons;
SELECT MIN(Save_Asset)
FROM Persons;
SELECT MAX(Save_Asset)
FROM Persons;

SELECT*FROM Persons
WHERE Gained_asset = 325112;
SELECT*FROM Persons
WHERE Gained_asset = 99127548;


SELECT*FROM Persons
ORDER BY Gained_asset ASC;

SELECT COUNT(*) FROM Persons
WHERE Depressed = 1
AND Gained_Asset <49726330;
SELECT COUNT(*) FROM Persons
WHERE Depressed = 1
AND Gained_Asset >49726330;

SELECT COUNT(*) FROM Persons
WHERE Depressed = 1
AND Save_Asset <50049862;
SELECT COUNT(*) FROM Persons
WHERE Depressed = 1
AND Save_Asset >50049862;

SELECT COUNT(*) FROM Persons
WHERE Save_Asset <50049862;
SELECT COUNT(*) FROM Persons
WHERE Save_Asset >50049862;

SELECT Incoming_Agriculture
FROM Persons;
SELECT
MIN(incoming_agriculture)
FROM Persons;
SELECT
MAX(incoming_agriculture)
FROM Persons;

SELECT*FROM Persons
WHERE incoming_Agriculture = 325112;
SELECT*FROM Persons
WHERE incoming_Agriculture = 99789095;

SELECT COUNT(*)
FROM Persons
WHERE incoming_Agriculture <50057103.5
AND Depressed = 1;
SELECT COUNT(*)
FROM Persons
WHERE incoming_Agriculture >50057103.5
AND Depressed = 1;
/*same percentage of depressed people in both groups
not enough information to detect a pattern in agriculture
*/

SELECT Total_Members
FROM Persons
GROUP BY Total_Members
ORDER BY Total_Members ASC;

SELECT COUNT(*) Total_Members
FROM Persons
WHERE Total_Members <6;
SELECT COUNT(*) Total_Members
FROM Persons
WHERE Total_Members >6;

SELECT COUNT(*) Total_Members
FROM Persons
WHERE Total_Members >6
AND Depressed = 1;
SELECT COUNT(*) Total_Members
FROM Persons
WHERE Total_Members >6
AND Depressed = 0;

SELECT COUNT(*) Total_Members
FROM Persons
WHERE Total_Members <6
AND Depressed = 1;
SELECT COUNT(*) Total_Members
FROM Persons
WHERE Total_Members <6
AND Depressed = 0;

SELECT ROUND (AVG(save_Asset), 2)
FROM Persons
WHERE Total_Members >6;
SELECT ROUND(AVG(save_Asset), 2)
FROM Persons;
SELECT COUNT(*) FROM Persons
WHERE save_asset >30863301.42
AND Depressed = 1;

SELECT ROUND (AVG(Gained_Asset), 2)
FROM Persons
WHERE Total_Members >6;
SELECT ROUND(AVG(Gained_Asset), 2)
FROM Persons;
SELECT COUNT(*) FROM Persons
WHERE gained_asset >36695169.9
AND Depressed = 1;
/*depressed people's biggest factors
gained and saved assets are below the median 
family size is larger than 6 people
*/
