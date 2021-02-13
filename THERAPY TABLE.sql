USE FEARS_DB;



CREATE TABLE ther19q1 
(primaryid bigint NOT NULL,
 caseid bigint,
 dsg_drug_seq int,
 Start_dt date,
 end_dt date,
 dur VARCHAR(10),
 dur_cod VARCHAR(20),
CONSTRAINT ther_pk PRIMARY KEY (primaryid,dsg_drug_seq),
CONSTRAINT drug_fk2 FOREIGN KEY (primaryid)
	REFERENCES drug19q1(primaryid));

describe ther19q1;
