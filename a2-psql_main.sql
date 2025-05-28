-- 1.Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'

INSERT INTO rangers(name,region) VALUES('Derek Fox','Coastal Plains');



--2.Count unique species ever sighted.

SELECT COUNT(DISTINCT species_id) AS unique_species_count FROM sightings;

--3.Find all sightings where the location includes "Pass".
SELECT * FROM sightings
 WHERE location LIKE '%Pass%';

--4.List each ranger's name and their total number of sightings
SELECT name, COUNT(*) AS total_sightings
FROM rangers 
JOIN sightings  ON rangers.ranger_id = sightings.ranger_id
GROUP BY name; 

--5.List species that have never been sighted.
--6.Show the most recent 2 sightings.
--7.Update all species discovered before year 1800 to have status 'Historic'.
--8.Label each sighting's time of day as 'Morning', 'Afternoon', or 'Evening'.
--9.Delete rangers who have never sighted any species
