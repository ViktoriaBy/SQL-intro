--Find the sum of totals in the invoice table grouped by billing_state.
SELECT Sum(total), billing_state FROM invoice GROUP BY billing_state

--Find the average track length (in milliseconds) by album. Order the table by the averages.
SELECT avg(milliseconds), album_id FROM track GROUP BY album_id ORDER BY 1

--Find a count of how many albums the artists with the ids 8 and 22 have respectively. Use COUNT, WHERE/IN, and GROUP BY
SELECT count(*),artist_id FROM album WHERE artist_id in(8, 22) GROUP BY artist_id

