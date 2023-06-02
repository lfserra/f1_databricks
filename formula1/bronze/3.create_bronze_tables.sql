-- Databricks notebook source
-- MAGIC %md
-- MAGIC ##### Create Bronze Tables
-- MAGIC 1. create tables for all csv files
-- MAGIC 2. folder path - abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.circuits;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.circuits (
  circuitId INT,
  circuitRef STRING,
  name STRING,
  location STRING,
  country STRING,
  lat FLOAT,
  lng FLOAT,
  atl INT,
  url STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/circuits.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.constructor_results;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.constructor_results (
  constructorResultsId INT,
  raceId INT,
  constructorId INT,
  points FLOAT,
  status STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/constructor_results.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.constructor_standings;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.constructor_standings (
  constructorStandingsId INT,
  raceId INT,
  constructorId INT,
  points FLOAT,
  position INT,
  positionText STRING,
  wins INT
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/constructor_standings.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.constructors;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.constructors (
  constructorId INT,
  constructorRef STRING,
  name STRING,
  nationality STRING,
  url STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/constructors.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.drivers_standings;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.drivers_standings (
  driverStandingsId INT,
  raceId INT,
  driverId INT,
  points FLOAT,
  position INT,
  positionText STRING,
  wins INT
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/drivers_standings.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.drivers;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.drivers (
  driverId INT,
  driverRef STRING,
  number INT,
  code STRING,
  forename STRING, 
  surname STRING,
  dob DATE,
  nationality STRING,
  url STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/drivers.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.lap_times;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.lap_times (
  raceId INT,
  driverId INT,
  lap INT,
  postion INT,
  time STRING,
  milliseconds INT
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/lap_times.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.pit_stops;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.pit_stops (
  raceId INT,
  driverId INT,
  stop INT,
  lap INT,
  time STRING,
  duration STRING,
  milliseconds INT
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/pit_stops.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.qualifying;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.qualifying (
  qualifyId INT,
  raceId INT,
  driverId INT,
  constructorId INT,
  number INT,
  position INT,
  q1 STRING,
  q2 STRING,
  q3 STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/qualifying.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.races;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.races (
raceId INT,
year INT,
round INT,
circuitId INT,
name STRING,
date DATE,
time STRING,
url STRING,
fp1_date DATE,
fp1_time STRING,
fp2_date DATE,
fp2_time STRING,
fp3_date DATE,
fp3_time STRING,
quali_date DATE,
quali_time STRING,
sprint_date DATE,
spring_time STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/races.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.results;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.results (
  resultId INT,
  raceId INT,
  driverId INT,
  constructorId INT,
  number INT,
  grid INT,
  position INT,
  positionText STRING,
  positionOrder INT,
  points INT,
  laps INT,
  time STRING,
  milliseconds INT,
  fastestLap INT,
  rank INT,
  fastestLapTime STRING,
  fastestLapSpeed FLOAT,
  statusId STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/results.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.sprint_results;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.sprint_results (
  sprintResultId INT,
  raceId INT,
  driverId INT,
  constructorId INT,
  number INT,
  grid INT,
  position INT,
  positionText STRING,
  positionOrder INT,
  points INT,
  laps INT,
  time STRING,
  milliseconds INT,
  fastestLap INT,
  fastestLapTime STRING,
  statusId STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/sprint_results.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.seasons;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.seasons (
  year INT,
  url STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/seasons.csv");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_databricks.bronze.status;

CREATE TABLE IF NOT EXISTS formula1_databricks.bronze.status (
  statusId INT,
  status STRING
)
USING csv
OPTIONS (path "abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/status.csv");
