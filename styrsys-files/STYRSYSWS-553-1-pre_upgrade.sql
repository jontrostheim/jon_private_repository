-- Run as sys
-- Removes records from wwv_flows_reserved due to Oracle APEX bug
-- Records may not exist, this is just a precaution
set define '&'
set verify off
accept CMP NUMBER prompt 'Enter the id for the Company Manager application : '
accept CMP_MOBILE NUMBER prompt 'Enter the id for the Company Manager Mobile application : '
DELETE FROM apex_040100.wwv_flows_reserved
WHERE id = &CMP;
DELETE FROM apex_040100.wwv_flows_reserved
WHERE id = &CMP_MOBILE;
COMMIT;