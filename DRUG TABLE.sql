USE FEARS_DB;

CREATE TABLE drug19q1 
(primaryid bigint NOT NULL,
 caseid bigint ,
 drug_seq int ,
 role_cod VARCHAR(10),
 drugname VARCHAR(100),
 prod_ai VARCHAR(100),
 val_vbm int ,
 route VARCHAR(50),
 dose_vbm VARCHAR(50),
 cum_dose_chr DECIMAL(10),
 cum_dose_unit VARCHAR(10),
 dechal VARCHAR(5),
 rechal VARCHAR(5),
 lot_num VARCHAR(5),
 exp_dt VARCHAR(5),
 nda_num int,
 dose_amt DECIMAL(10),
 dose_unit VARCHAR(5),
 dose_form VARCHAR(50),
 dose_freq VARCHAR(50),
 CONSTRAINT drug_pk PRIMARY KEY (primaryid,drug_seq),
 CONSTRAINT demo_fk1 FOREIGN KEY (primaryid)
	REFERENCES demo19q1(primaryid));
 describe drug19q1;
