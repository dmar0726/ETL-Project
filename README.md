## ETL-Project by Autumn Demonet, Ai-Jiuan Wu & David Marobella ##

# Project Proposal:
Compile a PostgreSQL database (Coffee_db) that will trace the global supply chain of coffee from the growing countries to the import countries from 1990 to 2018.  Our database captures:
  1. The quality of the coffee produced from select farms from growing countries.
  2. The amount of coffee consumed and exported from growing countries.
  3. The amount of coffee imported, consumed and stored from importing countries. 

# Packages Used:
1. Pandas
2. QuickDatabaseDiagrams:
3. Our ERD: https://app.quickdatabasediagrams.com/#/d/7caRSp
4. PgAdmin/PostgreSQL database (Coffee_db)

# Data Sources:
1. Growing Countries Excel Sheet: https://www.kaggle.com/albyati/coffee-growing-countries
2. US_Coffee_Imports: http://www.worldstopexports.com/coffee-imports-by-country/ 
3. Historical Data on Total Production/Imports/Exports/etc: http://www.ico.org/new_historical.asp
4. Coffee Quality Institute Database: Review on various arabica and robusta coffee beans produced from individual farms located in different growing countries.  https://github.com/jldbc/coffee-quality-database

# Description of ETL Process:

# Autumn Demonet: (autumn-ico-data folder)
1. In 5 individual Jupyter notebooks (domestic_consumption_ico_clean.ipynb, exports_ico_clean.ipynb, import_consumption_ico.ipynb, imports_ico_clean.ipynb and inventories_ico_clean.ipynb) cleaned data sourced from the International Coffee Organization and imported CSVs to DataFrames:
2. Dropped rows with all null values to clear Excel sheet formatting.
3. Dropped rows with incompatible data (ex: descriptions of data, groupings).
4. Cleaned up Country Name columns to match country_codes.csv.
5. Reset indices to years.
6. Exported cleaned CSVs and uploaded to GitHub:
  domestic_consumption_ico_clean.csv
  exports_ico_clean.csv
  import_consumption_ico.csv
  imports_ico.csv
  inventories_ico.csv
7. Created DataFrame to assign Country Codes:
  Source: http://www.statvision.com/webinars/Countries%20of%20the%20world.xls 
  Data is public domain from US government, compiled by combining information from files at: http://gsociology.icaap.org/dataupload.html
  Pulled data from Country column to create country_codes.csv

# Ai-Jiuan Wu: (ETL-AJ folder)
Cleaned 2 raw csv files previously scrapped from Coffee Quality Institute Database in a single Jupyter notebook (CoffeeQuality.ipynb):
1. Imported arabica_ratings_raw.csv and robusta_ratings_raw.csv to 2 separate DataFrames titled arabica_df and robusta_df.  
2. Dropped 19 columns with null or irrelevant data from both DataFrames (i.e. ‘view_certificate_1’, ‘NA.1’, ‘Certification Body’, and ‘Certification Address’) .
3. Renamed certain columns for each dataframe, allowing the column titles to match between the two dataframes.   Joined the arabica_df with the robusta_df into a single dataframe titled merged_df.
4. Converted 8 columns to str prior to formatting the associated data points.  Formatted corresponding data for each of the 8 columns for consistency.  The changes include:
 a. ‘Species’: Deleted extra "b'' from Arabica and Rubusta.
 b. ‘Total Cup Points’: Deleted “Sample” from each data point and converted data to float format.
 c. ‘Moisture’: Deleted “%” from each data point and converted data to float format.
 d. ‘Category One Defects’: Deleted “full defects” from each data point and converted data to int format.
 e. ‘Category Two Defects’: Deleted “full defects” from each data point and converted data to int format.
 f. ‘Harvest Year’: Deleted month and/or date from certain data points, allowing only the year to be reported (as YYYY or YYYY/YYYY).
 g. ‘Altitude’: Deleted units (i.e. meters, feet and diff language variants) from each data point, allowing altitude to be reported (as NNNN or NNNN-NNNN).           Converted certain data reported in feet to meters.  Deleted ‘nonsense’/incomplete data points.
 h. ‘Countries’: Converted 4 country names to match country_codes.csv.
5. Exported cleaned CSV  and uploaded to GitHub (Coffee_Quality_FINAL.csv).

Constructed ERD of the 8 final CSV tables.
1. See https://app.quickdatabasediagrams.com/#/d/7caRSp.
2. Created a table schema for each of the CSV files, including specific data types, primary keys and foreign keys (QuickDBD-Coffee Supply Chain Database (1).png).
3. Generated initial Postgres SQL script to create a PostgreSQL database in PgAdmin (QuickDBD-Coffee Supply Chain Database-4.sql).

# David Marobella: (ETL_DM  & Resources folders)
1. Cleaned Coffee Data.csv
2. Cleaned Coffee Database (1).csv
   a. Removed ‘Purchase Link’ and ‘Description’ columns.
3. Cleaned PSD Coffee Data.csv 
   a. This file was not used in our final SQL.
   b. Exported cleaned CSVs and uploaded to GitHub.
      Coffee_Data_df_FINAL.csv
      Coffee_Database_transformed_FINAL.csv (Not used)
      PSD_Coffee_Data_transformed_FINAL.csv (Not used)
4. Modified QuickDBD-Coffee Supply Chain Database-4.sql to create final PostgreSQL (Coffee_db.sql).
5. Created jupyter notebook (to_SQL.ipynb) to load all 8 cleaned csv files to SQL (see Table below).


# Table Schema Name -> CSV File Name
  Countries -> country_codes.csv
  Coffee_Farms_Quality -> Coffee_Quality_Final.csv
  Growing_Countries_Consumption -> domestic_consumption_ico_clean.csv
  Growing_Countries_Exports -> exports_ico_clean.csv
  Import_Countries_Total_Import -> imports_ico.csv
  Import_Countries_Inventory -> inventories_ico.csv
  Import_Countries_Consumption -> import_consumption.csv
  US_Coffee_Imports -> Coffee_Data_df_FINAL.csv



