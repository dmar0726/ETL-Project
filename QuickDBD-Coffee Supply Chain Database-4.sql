-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7caRSp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Countries"
(
    "Country_Name" VARCHAR(30) NOT NULL,
    "Country_Code" INT NOT NULL,
    CONSTRAINT "pk_Countries" PRIMARY KEY (
        "Country_Name"
     )
);

CREATE TABLE "Coffee_Farms_Quality"
(
    "Species" VARCHAR(30) NOT NULL,
    "Variety" VARCHAR(100),
    "Farm_Name" VARCHAR(100),
    "Country" VARCHAR(30),
    "Region" VARCHAR(100),
    "Altitude" VARCHAR(30),
    "Owner" VARCHAR(100),
    "Company" VARCHAR(100),
    "Mill" VARCHAR(100),
    "Producer" VARCHAR(100),
    "In-Country_Partner" VARCHAR(100) NOT NULL,
    "Harvest_Year" VARCHAR(30),
    "Processing_Method" VARCHAR(100),
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
    "Quakers" INT,
    "Color" VARCHAR(30),
    "Category_Two_Defects" INT NOT NULL,
    "Expiration_of_Certification" VARCHAR(100) NOT NULL
);

CREATE TABLE "US_Coffee_Imports"
(
    "Country" VARCHAR(30) NOT NULL,
    "US_Dollars" INT NOT NULL,
    "Percent_change_from_2014" INT NOT NULL
);

CREATE TABLE "Growing_Countries_Consumption"
(
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
    "Country" VARCHAR(30) NOT NULL
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
    "Country" VARCHAR(30) NOT NULL
);

CREATE TABLE "Import_Countries_Consumption"
(
    "1990" INT,
    "1991" INT,
    "1993" INT,
    "1994" INT,
    "1995" INT,
    "1996" INT,
    "1997" INT,
    "1998" INT,
    "1999" INT,
    "2000" INT,
    "2001" INT,
    "2002" INT,
    "2003" INT,
    "2004" INT,
    "2005" INT,
    "2006" INT,
    "2007" INT,
    "2008" INT,
    "2009" INT,
    "2010" INT,
    "2011" INT,
    "2012" INT,
    "2013" INT,
    "2014" INT,
    "2015" INT,
    "2016" INT,
    "2017" INT,
    "2018" INT,
    "Country" VARCHAR(30) NOT NULL
);

CREATE TABLE "Import_Countries_Total_Import"
(
    "1990" INT,
    "1991" INT,
    "1993" INT,
    "1994" INT,
    "1995" INT,
    "1996" INT,
    "1997" INT,
    "1998" INT,
    "1999" INT,
    "2000" INT,
    "2001" INT,
    "2002" INT,
    "2003" INT,
    "2004" INT,
    "2005" INT,
    "2006" INT,
    "2007" INT,
    "2008" INT,
    "2009" INT,
    "2010" INT,
    "2011" INT,
    "2012" INT,
    "2013" INT,
    "2014" INT,
    "2015" INT,
    "2016" INT,
    "2017" INT,
    "2018" INT,
    "Country" VARCHAR(30) NOT NULL
);

CREATE TABLE "Import_Countries_Inventory"
(
    "1990" INT,
    "1991" INT,
    "1993" INT,
    "1994" INT,
    "1995" INT,
    "1996" INT,
    "1997" INT,
    "1998" INT,
    "1999" INT,
    "2000" INT,
    "2001" INT,
    "2002" INT,
    "2003" INT,
    "2004" INT,
    "2005" INT,
    "2006" INT,
    "2007" INT,
    "2008" INT,
    "2009" INT,
    "2010" INT,
    "2011" INT,
    "2012" INT,
    "2013" INT,
    "2014" INT,
    "2015" INT,
    "2016" INT,
    "2017" INT,
    "2018" INT,
    "Country" VARCHAR(30) NOT NULL
);

ALTER TABLE "Coffee_Farms_Quality" ADD CONSTRAINT "fk_Coffee_Farms_Quality_Country" FOREIGN KEY("Country")
REFERENCES "Countries" ("Country_Name");

ALTER TABLE "US_Coffee_Imports" ADD CONSTRAINT "fk_US_Coffee_Imports_Country" FOREIGN KEY("Country")
REFERENCES "Countries" ("Country_Name");

ALTER TABLE "Growing_Countries_Consumption" ADD CONSTRAINT "fk_Growing_Countries_Consumption_Country" FOREIGN KEY("Country")
REFERENCES "Countries" ("Country_Name");

ALTER TABLE "Growing_Countries_Exports" ADD CONSTRAINT "fk_Growing_Countries_Exports_Producer" FOREIGN KEY("Producer")
REFERENCES "Countries" ("Country_Name");

ALTER TABLE "Import_Countries_Consumption" ADD CONSTRAINT "fk_Import_Countries_Consumption_Country" FOREIGN KEY("Country")
REFERENCES "Countries" ("Country_Name");

ALTER TABLE "Import_Countries_Total_Import" ADD CONSTRAINT "fk_Import_Countries_Total_Import_Country" FOREIGN KEY("Country")
REFERENCES "Countries" ("Country_Name");

ALTER TABLE "Import_Countries_Inventory" ADD CONSTRAINT "fk_Import_Countries_Inventory_Holding_Entity" FOREIGN KEY("Holding_Entity")
REFERENCES "Countries" ("Country_Name");

