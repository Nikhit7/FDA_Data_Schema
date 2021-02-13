USE FEARS_DB;

CREATE TABLE reac19q1 
(primaryid bigint NOT NULL,
 caseid bigint,
 pt VARCHAR(100),
 drug_rec_act VARCHAR(100),
CONSTRAINT indi_pk PRIMARY KEY (primaryid,pt),
CONSTRAINT demo_fk3 FOREIGN KEY (primaryid)
	REFERENCES demo19q1(primaryid));

DESCRIBE reac19q1; 
