DISCONNECT ALL;
DROP DATABASE DBNASE;
COMMIT;

CREATE DATABASE DBNASE ON C:
  USING CODESET IBM-1252 TERRITORY US COLLATE USING SYSTEM
  USER TABLESPACE MANAGED BY SYSTEM USING ('C:\DB2\DBNASE\TABLES')
  EXTENTSIZE 16 PREFETCHSIZE 16 OVERHEAD 10.50 TRANSFERRATE 0.33
  CATALOG TABLESPACE MANAGED BY SYSTEM USING ('C:\DB2\DBNASE\CATALOG')
  EXTENTSIZE 8 PREFETCHSIZE 8 OVERHEAD 10.50 TRANSFERRATE 0.33
  TEMPORARY TABLESPACE MANAGED BY SYSTEM USING ('C:\DB2\DBNASE\TEMP')
  EXTENTSIZE 32 PREFETCHSIZE 32 OVERHEAD 10.50 TRANSFERRATE 0.33;

CONNECT TO DBNASE;

CREATE BUFFERPOOL BP32K IMMEDIATE SIZE 250 PAGESIZE 32 K;

CREATE REGULAR  TABLESPACE TS32K PAGESIZE 32 K
  MANAGED BY DATABASE  USING ( FILE 'C:\DB2\DBNASE\TS32K' 640 )
  EXTENTSIZE 8 OVERHEAD 10.5 PREFETCHSIZE 8 TRANSFERRATE 0.33
  BUFFERPOOL BP32K DROPPED TABLE RECOVERY OFF;
  COMMENT ON TABLESPACE TS32K IS '';