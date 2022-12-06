# Managing the raw data

1- Downloaded CSV files and imported them to a PostgreSQL database.
2- Combined all 3 trips data CSV files into a single table called "trips" and named the stations data "stations".
3- Created a column called "id" for the "trips" table to serve as primary key and be able to manage the rows.
4- Ran the query "DELETE FROM trips WHERE duration_in_seconds<10" to remove all the entries for trips that were less than 10 seconds as indicated.
5- Ran the query "DELETE FROM trips WHERE covered_distance_in_meters<10" to remove all the entries for trips that traveled less than 10 meters.
6- Marked all columns for the table "trips" as "not null" to uncover the columns with empty rows (null values).
7- Only "covered_distance_in_meters" had null values so ran the query: 
"DELETE FROM trips WHERE covered_distance_in_meters is null"
This removed all the columns with null values and I was able to mark the column "covered_distance_in_meters" as "Not null".
8- Implemented foreign key constraints on the table "trips" for the columns "departure_station_id" and "return_station_id" to the "station_id" column in the "stations" table. This to bring to the surface the trips whose departure and return stations we have no location of.

 
