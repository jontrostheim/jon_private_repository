
STARTUP NOMOUNT
CREATE CONTROLFILE REUSE DATABASE "XE" NORESETLOGS  NOARCHIVELOG
    MAXLOGFILES 16
    MAXLOGMEMBERS 3
    MAXDATAFILES 100
    MAXINSTANCES 8
    MAXLOGHISTORY 292
LOGFILE
  GROUP 1 'E:\styrsys\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_1_7846RWX2_.LOG'  SIZE 50M BLOCKSIZE 512,
  GROUP 2 'E:\styrsys\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_2_7846RXP2_.LOG'  SIZE 50M BLOCKSIZE 512
-- STANDBY LOGFILE
DATAFILE
  'E:\styrsys\ORADATA\XE\SYSTEM.DBF',
  'E:\styrsys\ORADATA\XE\UNDOTBS1.DBF',
  'E:\styrsys\ORADATA\XE\SYSAUX.DBF',
  'E:\styrsys\ORADATA\XE\USERS.DBF',
  'E:\styrsys\ORADATA\XE\APEX_5237924301881770.DBF',
  'E:\styrsys\ORADATA\XE\APEX_8007615431557429.DBF'
CHARACTER SET AL32UTF8
;
-- Commands to re-create incarnation table
-- Below log names MUST be changed to existing filenames on
-- disk. Any one log file from each branch can be used to
-- re-create incarnation records.
-- ALTER DATABASE REGISTER LOGFILE 'E:\styrsys\FAST_RECOVERY_AREA\XE\ARCHIVELOG\2012_08_06\O1_MF_1_1_%U_.ARC';
-- ALTER DATABASE REGISTER LOGFILE 'E:\styrsys\FAST_RECOVERY_AREA\XE\ARCHIVELOG\2012_08_06\O1_MF_1_1_%U_.ARC';
-- Recovery is required if any of the datafiles are restored backups,
-- or if the last shutdown was not normal or immediate.
RECOVER DATABASE
-- Database can now be opened normally.
ALTER DATABASE OPEN;
-- Commands to add tempfiles to temporary tablespaces.
-- Online tempfiles have complete space information.
-- Other tempfiles may require adjustment.
ALTER TABLESPACE TEMP ADD TEMPFILE 'E:\styrsys\ORADATA\XE\TEMP.DBF';

--
-- -----------------Bytt ut e:\styrsys med katalogen som er satt opp på server maskinen hvor oracle er installert