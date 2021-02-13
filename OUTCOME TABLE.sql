USE FEARS_DB;

CREATE TABLE outc19q1 (
  primaryid bigint ,
  caseid bigint ,
  outc_cod VARCHAR(10),
CONSTRAINT drug_pk PRIMARY KEY (primaryid,outc_cod),
CONSTRAINT demo_fk2 FOREIGN KEY (primaryid)
	REFERENCES demo19q1(primaryid));  
    
DESCRIBE OUTC19Q1;

