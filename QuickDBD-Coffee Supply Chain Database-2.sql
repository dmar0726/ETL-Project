-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7caRSp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "USDA_PSD"
(
    "Country" VARCHAR(30) NOT NULL,
    "Market_Year" INT NOT NULL,
    "Calendar_Year" INT NOT NULL,
    "Month" INT NOT NULL,
    "Attribute_ID" INT NOT NULL,
    "Attribute_Description" VARCHAR(150) NOT NULL,
    "Unit_ID" INT NOT NULL,
    "Unit_Description" VARCHAR(100) NOT NULL,
    "Value" INT NOT NULL,
    CONSTRAINT "pk_USDA_PSD" PRIMARY KEY (
        "Country","Calendar_Year","Attribute_Description"
     )
);

CREATE TABLE "Growing_Countries"
(
    "country" VARCHAR(30) NOT NULL,
    "latitude" INT NOT NULL,
    "longitude" INT NOT NULL
);

CREATE TABLE "Coffee_Farms_Quality"
(
    "Species" VARCHAR(30) NOT NULL,
    "Variety" VARCHAR(100) NOT NULL,
    "Farm_Name" VARCHAR(100) NOT NULL,
    "Country" VARCHAR(30) NOT NULL,
    "Region" VARCHAR(100) NOT NULL,
    "Altitude" VARCHAR(30) NOT NULL,
    "Company" VARCHAR(100) NOT NULL,
    "Mill" VARCHAR(100) NOT NULL,
    "Producer" VARCHAR(100) NOT NULL,
    "In-Country_Partner" VARCHAR(100) NOT NULL,
    "Harvest_Year" VARCHAR(30) NOT NULL,
    "Processing_Method" VARCHAR(100) NOT NULL,
    "Aroma" INT NOT NULL,
    "Flavor" INT NOT NULL,
    "Aftertaste" INT NOT NULL,
    "Acidity" INT NOT NULL,
    "Body" INT NOT NULL,
    "Balance" INT NOT NULL,
    "Uniformity" INT NOT NULL,
    "Clean_Cup" INT NOT NULL,
    "Sweetness" INT NOT NULL,
    "Cupper_Point" INT NOT NULL,
    "Total_Cup_Points" INT NOT NULL,
    "Quality_Score" INT NOT NULL,
    "Moisture" INT NOT NULL,
    "Category_One_Defects" INT NOT NULL,
    "Quakers" INT NOT NULL,
    "Color" VARCHAR(30) NOT NULL,
    "Category_Two_Defects" INT NOT NULL,
    "Expiration_of_Certification" VARCHAR(100) NOT NULL,
    CONSTRAINT "pk_Coffee_Farms_Quality" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "US_Coffee_Imports"
(
    "Country" VARCHAR(30) NOT NULL,
    "US_Dollars" INT NOT NULL,
    "Percent_change_from_2014" INT NOT NULL
);

CREATE TABLE "Growing_Countries_Consumption"
(
    "1990/91" INT NOT NULL,
    "1991/92" INT NOT NULL,
    "1992/93" INT NOT NULL,
    "1993/94" INT NOT NULL,
    "1994/95" INT NOT NULL,
    "1995/96" INT NOT NULL,
    "1996/97" INT NOT NULL,
    "1998/99" INT NOT NULL,
    "1999/00" INT NOT NULL,
    "2000/01" INT NOT NULL,
    "2001/02" INT NOT NULL,
    "2002/03" INT NOT NULL,
    "2003/04" INT NOT NULL,
    "2004/05" INT NOT NULL,
    "2005/06" INT NOT NULL,
    "2006/07" INT NOT NULL,
    "2007/08" INT NOT NULL,
    "2008/09" INT NOT NULL,
    "2009/10" INT NOT NULL,
    "2010/11" INT NOT NULL,
    "2011/12" INT NOT NULL,
    "2012/13" INT NOT NULL,
    "2013/14" INT NOT NULL,
    "2014/15" INT NOT NULL,
    "2015/16" INT NOT NULL,
    "2016/17" INT NOT NULL,
    "2017/18" INT NOT NULL,
    "2018/19" INT NOT NULL,
    "Country" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_Growing_Countries_Consumption" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "Growing_Countries_Exports"
(
    "1990" INT NOT NULL,
    "1991" INT NOT NULL,
    "1993" INT NOT NULL,
    "1994" INT NOT NULL,
    "1995" INT NOT NULL,
    "1996" INT NOT NULL,
    "1997" INT NOT NULL,
    "1998" INT NOT NULL,
    "1999" INT NOT NULL,
    "2000" INT NOT NULL,
    "2001" INT NOT NULL,
    "2002" INT NOT NULL,
    "2003" INT NOT NULL,
    "2004" INT NOT NULL,
    "2005" INT NOT NULL,
    "2006" INT NOT NULL,
    "2007" INT NOT NULL,
    "2008" INT NOT NULL,
    "2009" INT NOT NULL,
    "2010" INT NOT NULL,
    "2011" INT NOT NULL,
    "2012" INT NOT NULL,
    "2013" INT NOT NULL,
    "2014" INT NOT NULL,
    "2015" INT NOT NULL,
    "2016" INT NOT NULL,
    "2017" INT NOT NULL,
    "2018" INT NOT NULL,
    "Producer" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_Growing_Countries_Exports" PRIMARY KEY (
        "Producer"
     )
);

CREATE TABLE "Import_Countries_Consumption"
(
    "1990" INT NOT NULL,
    "1991" INT NOT NULL,
    "1993" INT NOT NULL,
    "1994" INT NOT NULL,
    "1995" INT NOT NULL,
    "1996" INT NOT NULL,
    "1997" INT NOT NULL,
    "1998" INT NOT NULL,
    "1999" INT NOT NULL,
    "2000" INT NOT NULL,
    "2001" INT NOT NULL,
    "2002" INT NOT NULL,
    "2003" INT NOT NULL,
    "2004" INT NOT NULL,
    "2005" INT NOT NULL,
    "2006" INT NOT NULL,
    "2007" INT NOT NULL,
    "2008" INT NOT NULL,
    "2009" INT NOT NULL,
    "2010" INT NOT NULL,
    "2011" INT NOT NULL,
    "2012" INT NOT NULL,
    "2013" INT NOT NULL,
    "2014" INT NOT NULL,
    "2015" INT NOT NULL,
    "2016" INT NOT NULL,
    "2017" INT NOT NULL,
    "2018" INT NOT NULL,
    "Country" VARCHAR(30) NOT NULL
);

CREATE TABLE "Import_Countries_Total_Import"
(
    "1990" INT NOT NULL,
    "1991" INT NOT NULL,
    "1993" INT NOT NULL,
    "1994" INT NOT NULL,
    "1995" INT NOT NULL,
    "1996" INT NOT NULL,
    "1997" INT NOT NULL,
    "1998" INT NOT NULL,
    "1999" INT NOT NULL,
    "2000" INT NOT NULL,
    "2001" INT NOT NULL,
    "2002" INT NOT NULL,
    "2003" INT NOT NULL,
    "2004" INT NOT NULL,
    "2005" INT NOT NULL,
    "2006" INT NOT NULL,
    "2007" INT NOT NULL,
    "2008" INT NOT NULL,
    "2009" INT NOT NULL,
    "2010" INT NOT NULL,
    "2011" INT NOT NULL,
    "2012" INT NOT NULL,
    "2013" INT NOT NULL,
    "2014" INT NOT NULL,
    "2015" INT NOT NULL,
    "2016" INT NOT NULL,
    "2017" INT NOT NULL,
    "2018" INT NOT NULL,
    "Country" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_Import_Countries_Total_Import" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "Import_Countries_Inventory"
(
    "1990" INT NOT NULL,
    "1991" INT NOT NULL,
    "1993" INT NOT NULL,
    "1994" INT NOT NULL,
    "1995" INT NOT NULL,
    "1996" INT NOT NULL,
    "1997" INT NOT NULL,
    "1998" INT NOT NULL,
    "1999" INT NOT NULL,
    "2000" INT NOT NULL,
    "2001" INT NOT NULL,
    "2002" INT NOT NULL,
    "2003" INT NOT NULL,
    "2004" INT NOT NULL,
    "2005" INT NOT NULL,
    "2006" INT NOT NULL,
    "2007" INT NOT NULL,
    "2008" INT NOT NULL,
    "2009" INT NOT NULL,
    "2010" INT NOT NULL,
    "2011" INT NOT NULL,
    "2012" INT NOT NULL,
    "2013" INT NOT NULL,
    "2014" INT NOT NULL,
    "2015" INT NOT NULL,
    "2016" INT NOT NULL,
    "2017" INT NOT NULL,
    "2018" INT NOT NULL,
    "Holding_Entity" VARCHAR(30) NOT NULL
);

ALTER TABLE "Growing_Countries" ADD CONSTRAINT "fk_Growing_Countries_country" FOREIGN KEY("country")
REFERENCES "Coffee_Farms_Quality" ("Country");

ALTER TABLE "Coffee_Farms_Quality" ADD CONSTRAINT "fk_Coffee_Farms_Quality_Species_Country_Harvest_Year" FOREIGN KEY("Species", "Country", "Harvest_Year")
REFERENCES "USDA_PSD" ("Attribute_Description", "Country", "Calendar_Year");

ALTER TABLE "US_Coffee_Imports" ADD CONSTRAINT "fk_US_Coffee_Imports_Country" FOREIGN KEY("Country")
REFERENCES "Import_Countries_Total_Import" ("Country");

ALTER TABLE "Growing_Countries_Consumption" ADD CONSTRAINT "fk_Growing_Countries_Consumption_Country" FOREIGN KEY("Country")
REFERENCES "USDA_PSD" ("Country");

ALTER TABLE "Growing_Countries_Exports" ADD CONSTRAINT "fk_Growing_Countries_Exports_Producer" FOREIGN KEY("Producer")
REFERENCES "USDA_PSD" ("Country");

ALTER TABLE "Import_Countries_Consumption" ADD CONSTRAINT "fk_Import_Countries_Consumption_Country" FOREIGN KEY("Country")
REFERENCES "Import_Countries_Total_Import" ("Country");

ALTER TABLE "Import_Countries_Total_Import" ADD CONSTRAINT "fk_Import_Countries_Total_Import_Country" FOREIGN KEY("Country")
REFERENCES "Growing_Countries_Exports" ("Producer");

ALTER TABLE "Import_Countries_Inventory" ADD CONSTRAINT "fk_Import_Countries_Inventory_Holding_Entity" FOREIGN KEY("Holding_Entity")
REFERENCES "Import_Countries_Total_Import" ("Country");

