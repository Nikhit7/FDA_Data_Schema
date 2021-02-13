USE FEARS_DB;

CREATE TABLE indi19q1 (
  primaryid bigint NOT NULL,
  caseid bigint ,
  indi_drug_seq int ,
  indi_pt VARCHAR(100),
CONSTRAINT indi_pk PRIMARY KEY (primaryid,indi_drug_seq),
CONSTRAINT drug_fk1 FOREIGN KEY (primaryid)
	REFERENCES drug19q1(primaryid));
 