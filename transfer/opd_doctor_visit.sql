SELECT "OAPREGDTE" AS "visit_thdate", "OAPREGDTE" - 5430000 AS "visit_date", "OAPFRMTIM" * 100 AS "visit_time", "OAPHN" AS "hn", "OAPVN" * 100 + "OAPSEQNO" AS "vn", "OAPSEQNO" AS "vn_id", "OAPDIVCOD" AS "div_id", "OAPDRCOD" AS "doctor_id", "OAPCRDSTS" AS "card_status", NOW( ) AS "update_time" FROM "TRHPFV5"."OPDAPPV5PF" AS "OPDAPPV5PF" WHERE ( ( "OAPREGDTE" >= '25601225' ) )