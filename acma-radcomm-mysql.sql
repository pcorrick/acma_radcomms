CREATE TABLE `access_area` (
  `AREA_ID` int NOT NULL,
  `AREA_CODE` varchar(256) COLLATE utf8mb4_unicode_ci NULL,
  `AREA_NAME` varchar(256) COLLATE utf8mb4_unicode_ci NULL,
  `AREA_CATEGORY` int NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `access_area` ADD PRIMARY KEY (`AREA_ID`);
  
create table `antenna`(
 `ANTENNA_ID` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
 `GAIN` decimal(30,2) NULL,
 `FRONT_TO_BACK` decimal(30,2) NULL,
 `H_BEAMWIDTH`            decimal(30,2) NULL,
 `V_BEAMWIDTH`            decimal(30,2) NULL,
 `BAND_MIN_FREQ`          decimal(30,2) NULL,
 `BAND_MIN_FREQ_UNIT` varchar(3) COLLATE utf8mb4_unicode_ci NULL,
 `BAND_MAX_FREQ`          decimal(30,2) NULL,
 `BAND_MAX_FREQ_UNIT` varchar(3) COLLATE utf8mb4_unicode_ci NULL,
 `ANTENNA_SIZE`           decimal(30,2) NULL,
 `ANTENNA_TYPE` varchar(240) COLLATE utf8mb4_unicode_ci NULL,
 `MODEL` varchar(80) COLLATE utf8mb4_unicode_ci NULL,
 `MANUFACTURER` varchar(255) COLLATE utf8mb4_unicode_ci NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `antenna` ADD PRIMARY KEY (`ANTENNA_ID`);


create table antenna_pattern(
 `ANTENNA_ID` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
 `AZ_TYPE` varchar(15) COLLATE utf8mb4_unicode_ci NULL,
 `ANGLE_REF`              decimal(30,2) NULL,
 `ANGLE`                  decimal(30,2) NULL,
 `ATTENUATION`            decimal(30,2) NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table antenna_polarity(
 `POLARISATION_CODE` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
 `POLARISATION_TEXT` varchar(50) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table applic_text_block(
 `APTB_ID`		int NOT NULL,
 `APTB_TABLE_PREFIX` varchar(30) COLLATE utf8mb4_unicode_ci NULL,
 `APTB_TABLE_ID`          decimal(30,2) NULL,
 `LICENCE_NO` varchar(63) COLLATE utf8mb4_unicode_ci NULL,
 `APTB_DESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
 `APTB_CATEGORY` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
 `APTB_TEXT` varchar(4000) COLLATE utf8mb4_unicode_ci NULL,
 `APTB_ITEM` varchar(15) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table auth_spectrum_area(
 `LICENCE_NO` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
 `AREA_CODE` varchar(256) COLLATE utf8mb4_unicode_ci NULL,
 `AREA_NAME` varchar(256) COLLATE utf8mb4_unicode_ci NULL,
 `AREA_DESCRIPTION`       TEXT
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table auth_spectrum_freq(
 `LICENCE_NO` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
 `AREA_CODE` varchar(256) COLLATE utf8mb4_unicode_ci NULL,
 `AREA_NAME` varchar(256) COLLATE utf8mb4_unicode_ci NULL,
 `LW_FREQUENCY_START`     decimal(30,2) NULL,
 `LW_FREQUENCY_END`       decimal(30,2) NULL,
 `UP_FREQUENCY_START`     decimal(30,2) NULL,
 `UP_FREQUENCY_END`       decimal(30,2) NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table bsl(
 `BSL_NO` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
 `MEDIUM_CATEGORY` text COLLATE utf8mb4_unicode_ci NULL,
 `REGION_CATEGORY` text COLLATE utf8mb4_unicode_ci NULL,
 `COMMUNITY_INTEREST` text COLLATE utf8mb4_unicode_ci NULL,
 `BSL_STATE` text COLLATE utf8mb4_unicode_ci NULL,
 `DATE_COMMENCED` date,
 `ON_AIR_ID` varchar(511) COLLATE utf8mb4_unicode_ci NULL,
 `CALL_SIGN` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
 `IBL_TARGET_AREA` varchar(511) COLLATE utf8mb4_unicode_ci NULL,
 `AREA_CODE` varchar(256) COLLATE utf8mb4_unicode_ci NULL,
 `REFERENCE` varchar(63) COLLATE utf8mb4_unicode_ci NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bsl_area` (
  `AREA_CODE` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AREA_NAME` varchar(256) COLLATE utf8mb4_unicode_ci NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `bsl_area` ADD PRIMARY KEY (`AREA_CODE`);




CREATE TABLE `class_of_station` (
  `CODE` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(511) COLLATE utf8mb4_unicode_ci NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `class_of_station` ADD PRIMARY KEY (`CODE`);


CREATE TABLE `client` (
  `CLIENT_NO` int NOT NULL,
  `LICENCEE` varchar(201) COLLATE utf8mb4_unicode_ci NULL,
  `TRADING_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NULL,
  `ACN` varchar(100) COLLATE utf8mb4_unicode_ci NULL,
  `ABN` varchar(14) COLLATE utf8mb4_unicode_ci NULL,
  `POSTAL_STREET` varchar(600) COLLATE utf8mb4_unicode_ci NULL,
  `POSTAL_SUBURB` varchar(480) COLLATE utf8mb4_unicode_ci NULL,
  `POSTAL_STATE` varchar(36) COLLATE utf8mb4_unicode_ci NULL,
  `POSTAL_POSTCODE` varchar(72) COLLATE utf8mb4_unicode_ci NULL,
  `CAT_ID` decimal(30,2) NULL,
  `CLIENT_TYPE_ID` decimal(30,2) NULL,
  `FEE_STATUS_ID` decimal(30,2) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `client` ADD PRIMARY KEY (`CLIENT_NO`);


CREATE TABLE `client_type` (
  `TYPE_ID` int NOT NULL,
  `NAME` varchar(240) COLLATE utf8mb4_unicode_ci NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `client_type` ADD PRIMARY KEY (`TYPE_ID`);


create table device_details(
 `SDD_ID` int NOT NULL,
 `LICENCE_NO` varchar(63) COLLATE utf8mb4_unicode_ci NULL,
 `DEVICE_REGISTRATION_IDENTIFIER` varchar(63) COLLATE utf8mb4_unicode_ci NULL,
 `FORMER_DEVICE_IDENTIFIER` varchar(63) COLLATE utf8mb4_unicode_ci NULL,
 `AUTHORISATION_DATE` date,
 `CERTIFICATION_METHOD` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
 `GROUP_FLAG` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
 `SITE_RADIUS` decimal(30,2) NULL,
 `FREQUENCY` decimal(30,2) NULL,
 `BANDWIDTH` decimal(30,2) NULL,
 `CARRIER_FREQ` decimal(30,2) NULL,
 `EMISSION` varchar(63) COLLATE utf8mb4_unicode_ci NULL,
 `DEVICE_TYPE` varchar(1) COLLATE utf8mb4_unicode_ci NULL,
 `TRANSMITTER_POWER` decimal(30,2) NULL,
 `TRANSMITTER_POWER_UNIT` varchar(31) COLLATE utf8mb4_unicode_ci NULL,
 `SITE_ID` varchar(31) COLLATE utf8mb4_unicode_ci NULL,
 `ANTENNA_ID` varchar(31) COLLATE utf8mb4_unicode_ci NULL,
 `POLARISATION` varchar(3) COLLATE utf8mb4_unicode_ci NULL,
 `AZIMUTH` decimal(30,2) NULL,
 `HEIGHT` decimal(30,2) NULL,
 `TILT` decimal(30,2) NULL,
 `FEEDER_LOSS` decimal(30,2) NULL,
 `LEVEL_OF_PROTECTION` decimal(30,2) NULL,
 `EIRP` decimal(30,2) NULL,
 `EIRP_UNIT` varchar(31) COLLATE utf8mb4_unicode_ci NULL,
 `SV_ID` decimal(30,2) NULL,
 `SS_ID` decimal(30,2) NULL,
 `EFL_ID` varchar(40) COLLATE utf8mb4_unicode_ci NULL,
 `EFL_FREQ_IDENT` varchar(31) COLLATE utf8mb4_unicode_ci NULL,
 `EFL_SYSTEM` varchar(63) COLLATE utf8mb4_unicode_ci NULL,
 `LEQD_MODE` varchar(1) COLLATE utf8mb4_unicode_ci NULL,
 `RECEIVER_THRESHOLD` decimal(30,2) NULL,
 `AREA_AREA_ID` decimal(30,2) NULL,
 `CALL_SIGN` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
 `AREA_DESCRIPTION` varchar(9) COLLATE utf8mb4_unicode_ci NULL,
 `AP_ID` decimal(30,2) NULL,
 `CLASS_OF_STATION_CODE` varchar(31) COLLATE utf8mb4_unicode_ci NULL,
 `SUPPLIMENTAL_FLAG` varchar(199) COLLATE utf8mb4_unicode_ci NULL,
 `EQ_FREQ_RANGE_MIN` decimal(30,2) NULL,
 `EQ_FREQ_RANGE_MAX` decimal(30,2) NULL,
 `NATURE_OF_SERVICE_ID` varchar(3) COLLATE utf8mb4_unicode_ci NULL,
 `HOURS_OF_OPERATION` varchar(11) COLLATE utf8mb4_unicode_ci NULL,
 `SA_ID` decimal(30,2) NULL,
 `RELATED_EFL_ID` decimal(30,2) NULL,
 `EQP_ID` decimal(30,2) NULL,
 `ANTENNA_MULTI_MODE` varchar(3) COLLATE utf8mb4_unicode_ci NULL,
 `POWER_IND` varchar(14) COLLATE utf8mb4_unicode_ci NULL,
 `LPON_CENTER_LONGITUDE` decimal(30,2) NULL,
 `LPON_CENTER_LATITUDE` decimal(30,2) NULL,
 `TCS_ID` decimal(30,2) NULL,
 `TECH_SPEC_ID` varchar(63) COLLATE utf8mb4_unicode_ci NULL,
 `DROPTHROUGH_ID` varchar(63) COLLATE utf8mb4_unicode_ci NULL,
 `STATION_TYPE` varchar(511) COLLATE utf8mb4_unicode_ci NULL,
 `STATION_NAME` varchar(63) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table fee_status(
 `FEE_STATUS_ID` int NOT NULL,
 `FEE_STATUS_TEXT` varchar(100) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table industry_cat(
 `CAT_ID` int NOT NULL,
 `DESCRIPTION` varchar(240) COLLATE utf8mb4_unicode_ci NULL,
 `NAME` varchar(120) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table licence(
 `LICENCE_NO` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
 `CLIENT_NO` decimal(30,2) NULL,
 `SV_ID` decimal(30,2) NULL,
 `SS_ID` decimal(30,2) NULL,
 `LICENCE_TYPE_NAME` varchar(63) COLLATE utf8mb4_unicode_ci NULL,
 `LICENCE_CATEGORY_NAME` varchar(95) COLLATE utf8mb4_unicode_ci NULL,
 `DATE_ISSUED` date,
 `DATE_OF_EFFECT` date,
 `DATE_OF_EXPIRY` date,
 `STATUS` varchar(10) COLLATE utf8mb4_unicode_ci NULL,
 `STATUS_TEXT` varchar(256) COLLATE utf8mb4_unicode_ci NULL,
 `AP_ID` decimal(30,2) NULL,
 `AP_PRJ_IDENT` varchar(511) COLLATE utf8mb4_unicode_ci NULL,
 `SHIP_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
 `BSL_NO` varchar(31) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table licence_service(
 `SV_ID` int NOT NULL,
 `SV_NAME` varchar(63) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table licence_status(
 `STATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
 `STATUS_TEXT` varchar(511) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table licence_subservice(
 `SS_ID` int NOT NULL,
 `SV_SV_ID` decimal(30,2) NULL,
 `SS_NAME` varchar(95) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table licensing_area(
 `LICENSING_AREA_ID` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
 `DESCRIPTION` varchar(511) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table nature_of_service(
 `CODE` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
 `DESCRIPTION` varchar(511) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table reports_text_block(
 `RTB_ITEM` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
 `RTB_CATEGORY` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
 `RTB_DESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
 `RTB_START_DATE` date,
 `RTB_END_DATE` date,
 `RTB_TEXT` varchar(4000) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table satellite(
 `SA_ID` int NOT NULL,
 `SA_SAT_NAME` varchar(31) COLLATE utf8mb4_unicode_ci NULL,
 `SA_SAT_LONG_NOM` decimal(30,2) NULL,
 `SA_SAT_INCEXC` decimal(30,2) NULL,
 `SA_SAT_GEO_POS` varchar(1) COLLATE utf8mb4_unicode_ci NULL,
 `SA_SAT_MERIT_G_T` decimal(30,2) NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table site(
 `SITE_ID` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
 `LATITUDE` decimal(30,2) NULL,
 `LONGITUDE` decimal(30,2) NULL,
 `NAME` varchar(767) COLLATE utf8mb4_unicode_ci NULL,
 `STATE` varchar(80) COLLATE utf8mb4_unicode_ci NULL,
 `LICENSING_AREA_ID` decimal(30,2) NULL,
 `POSTCODE` varchar(18) COLLATE utf8mb4_unicode_ci NULL,
 `SITE_PRECISION` varchar(31) COLLATE utf8mb4_unicode_ci NULL,
 `ELEVATION` decimal(30,2) NULL,
 `HCIS_L2` varchar(31) COLLATE utf8mb4_unicode_ci NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;