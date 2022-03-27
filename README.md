# ACMA Radiocommnuications Database (MySQL schema)

The Australian Communications and Media Authority maintains a register of radiocommunications licenses (RRL) which is available online at:
- [ACMA]https://web.acma.gov.au/rrl/register_search.main_page

The whole database can be downloaded with an Oracle DB schema. This repository is a conversion of the schema to MySQL.


## Importing Data
Data can be downloaded from the ACMA as .csv files (updated daily). Save the .csv files to the local 


```sql
LOAD DATA INFILE '/var/www/html/<filename>.csv'
INTO TABLE antenna_polarity
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```

## Empty fields
Empty fields are denoted with ,, in the .csv file, these need to be explicitly modified to NULL for import into MySQL. May need to run more than once (or include two -e options) to capture when mutiple adjacent fields are NULL.

```bash
sed -i -e 's/,,/,NULL,/g' -e 's/,,/,NULL,/g' /tmp/file.csv
```