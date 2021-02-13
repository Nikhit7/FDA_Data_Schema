DROP DATABASE IF EXISTS FEARS_DB;
CREATE DATABASE FEARS_DB;
USE FEARS_DB;


DROP TABLE IF EXISTS demo19q1,drug19q1,indi19q1,outc19q1,reac19q1,rpsr19q1,ther19q1;

CREATE TABLE demo19q1
 (primaryid bigint NOT NULL,
  caseid bigint ,
  caseversion int ,
  i_f_code VARCHAR(5),
  event_dt date,
  mfr_dt date,
  init_fda_dt date,
  fda_dt date,
  rept_cod VARCHAR(5),
  auth_num VARCHAR(100),
  mfr_num VARCHAR(100),
  mfr_sndr VARCHAR(100),
  lit_ref text,
  age int,
  age_cod VARCHAR(5),
  age_grp VARCHAR(5),
  sex  VARCHAR(5),
  e_sub VARCHAR(5),
  wt decimal(10),
  wt_cod VARCHAR(10),
  rept_dt date,
  to_mfr VARCHAR(5),
  occp_cod VARCHAR(5),
  reporter_country VARCHAR(5),
  occr_country VARCHAR(5),
  CONSTRAINT demo_pk PRIMARY KEY (primaryid)) ;

describe demo19q1;