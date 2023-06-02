-- Databricks notebook source
-- MAGIC %md
-- MAGIC ##### Create the external locations required for this project
-- MAGIC 1. Bronze
-- MAGIC 2. Silver
-- MAGIC 3. Gold

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databricksf1ucextdl_bronze
 URL 'abfss://bronze@databricksf1ucextdl.dfs.core.windows.net/'
 WITH (STORAGE CREDENTIAL `databricks-ext-storage-credential`);

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databricksf1ucextdl_silver
 URL 'abfss://silver@databricksf1ucextdl.dfs.core.windows.net/'
 WITH (STORAGE CREDENTIAL `databricks-ext-storage-credential`);

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databricksf1ucextdl_gold
 URL 'abfss://gold@databricksf1ucextdl.dfs.core.windows.net/'
 WITH (STORAGE CREDENTIAL `databricks-ext-storage-credential`);

-- COMMAND ----------


