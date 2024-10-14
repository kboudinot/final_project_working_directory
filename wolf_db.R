# Assignment 6 - Building your final project database

# Load libraries----
library(DBI)
library(RSQLite)

# Create database----
wolf_db <- dbConnect(SQLite(),"wolf.db")

# Create tables----
## First table
dbExecute(wolf_db,
          "CREATE TABLE wolf_identification (
          UI_ID varchar NOT NULL PRIMARY KEY,
          mort_tag real);")

## Second table
dbExecute(wolf_db,
          "CREATE TABLE harvest_data (
          mort_tag real,
          sex varchar,
          age real,
          mortality age ,
          kill_date date,
          harvest_year varchar,
          GMU varchar,
          kill_location varchar,
          days_hunted char,
          latitude varchar,
          longitude varchar,
          method varchar,
          region varchar,
          saw_wolves varchar,
          tooth_taken varchar,
          weapon varchar
          FOREIGN KEY (mort_tag) REFERENCES wolf_identification(mort_tag));")

## Third table
dbExecute(wolf_db,
          "CREATE TABLE life_history_data (
          UI_ID,
          natal_pack varchar,
          pack varchar,
          GMU varchar,
          pedigree varchar,
          region varchar,
          disperser varchar
          FOREIGN KEY (UI_ID) REFERNCES wolf_identification(UI_ID));")
