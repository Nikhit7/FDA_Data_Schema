USE FEARS_DB;


CREATE TABLE rpsr19q1
(primaryid bigint NOT NULL,
 caseid bigint,
 rpsr_cod VARCHAR(10),
CONSTRAINT rspr_pk PRIMARY KEY (primaryid,rpsr_cod),
CONSTRAINT demo_fk4 FOREIGN KEY (primaryid)
	REFERENCES demo19q1(primaryid));

describe rpsr19q1;
