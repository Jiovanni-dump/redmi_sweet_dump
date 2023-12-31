/*
  Copyright (c) 2023 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 39);


DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '257';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '257';
DELETE FROM qcril_emergency_source_escv_nw_table where MCC = '257';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '257';

INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('257','112','','');

INSERT INTO qcril_emergency_source_escv_nw_table VALUES('257','01','101',4);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('257','01','102',1);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('257','01','103',2);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('257','01','104',8);


INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('257','01','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('257','01','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('257','01','103','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('257','01','104','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('257','01','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('257','01','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('257','02','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('257','04','112','','');

COMMIT TRANSACTION;
