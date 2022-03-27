# ACMA Radiocommnuications Database (MySQL schema)

The Australian Communications and Media Authority maintains a register of radiocommunications licenses (RRL) which is available online at:
[ACMA] https://web.acma.gov.au/rrl/register_search.main_page

The whole database can be downloaded with an Oracle DB schema. This repository is a conversion of the schema to MySQL.

## Assumptions
Oracle VARCHAR2(n) converted to MySQL VARCHAR(n)
Oracle NUMBER converted to MySQL decimal(30,2)
