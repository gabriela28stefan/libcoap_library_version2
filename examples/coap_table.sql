PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE SENSORS_DATA(ID INT PRIMARY KEY     NOT NULL,TEMP            INT    NOT NULL,LIGHT           INT    NOT NULL);
INSERT INTO "SENSORS_DATA" VALUES(1,26,0);
INSERT INTO "SENSORS_DATA" VALUES(2,27,83);
INSERT INTO "SENSORS_DATA" VALUES(3,27,82);
INSERT INTO "SENSORS_DATA" VALUES(47813,26,94);
INSERT INTO "SENSORS_DATA" VALUES(14267,26,94);
INSERT INTO "SENSORS_DATA" VALUES(23240,26,93);
INSERT INTO "SENSORS_DATA" VALUES(33575,26,92);
INSERT INTO "SENSORS_DATA" VALUES(6041,26,93);
INSERT INTO "SENSORS_DATA" VALUES(41496,26,93);
INSERT INTO "SENSORS_DATA" VALUES(35332,26,93);
INSERT INTO "SENSORS_DATA" VALUES(2090,26,93);
INSERT INTO "SENSORS_DATA" VALUES(21919,26,93);
INSERT INTO "SENSORS_DATA" VALUES(46901,26,5);
INSERT INTO "SENSORS_DATA" VALUES(59870,26,3);
INSERT INTO "SENSORS_DATA" VALUES(1914,26,3);
INSERT INTO "SENSORS_DATA" VALUES(63394,26,55);
INSERT INTO "SENSORS_DATA" VALUES(18679,26,80);
INSERT INTO "SENSORS_DATA" VALUES(25325,26,4);
INSERT INTO "SENSORS_DATA" VALUES(46436,26,2);
INSERT INTO "SENSORS_DATA" VALUES(51516,26,64);
INSERT INTO "SENSORS_DATA" VALUES(65162,26,9);
INSERT INTO "SENSORS_DATA" VALUES(54801,26,93);
INSERT INTO "SENSORS_DATA" VALUES(50881,26,32);
INSERT INTO "SENSORS_DATA" VALUES(2407,26,84);
INSERT INTO "SENSORS_DATA" VALUES(36082,26,93);
INSERT INTO "SENSORS_DATA" VALUES(2989,26,83);
INSERT INTO "SENSORS_DATA" VALUES(45295,26,83);
INSERT INTO "SENSORS_DATA" VALUES(15870,26,83);
INSERT INTO "SENSORS_DATA" VALUES(65203,26,8);
INSERT INTO "SENSORS_DATA" VALUES(30536,26,83);
INSERT INTO "SENSORS_DATA" VALUES(6483,26,83);
INSERT INTO "SENSORS_DATA" VALUES(17555,26,83);
INSERT INTO "SENSORS_DATA" VALUES(63011,26,83);
INSERT INTO "SENSORS_DATA" VALUES(41582,26,83);
INSERT INTO "SENSORS_DATA" VALUES(2712,26,83);
INSERT INTO "SENSORS_DATA" VALUES(4347,26,83);
INSERT INTO "SENSORS_DATA" VALUES(45654,26,83);
INSERT INTO "SENSORS_DATA" VALUES(12211,26,83);
INSERT INTO "SENSORS_DATA" VALUES(61797,26,83);
INSERT INTO "SENSORS_DATA" VALUES(3908,26,83);
INSERT INTO "SENSORS_DATA" VALUES(6862,26,83);
INSERT INTO "SENSORS_DATA" VALUES(39601,26,83);
INSERT INTO "SENSORS_DATA" VALUES(15913,26,83);
INSERT INTO "SENSORS_DATA" VALUES(33923,26,83);
INSERT INTO "SENSORS_DATA" VALUES(48551,26,83);
INSERT INTO "SENSORS_DATA" VALUES(13494,26,54);
INSERT INTO "SENSORS_DATA" VALUES(30823,26,54);
INSERT INTO "SENSORS_DATA" VALUES(33213,26,45);
INSERT INTO "SENSORS_DATA" VALUES(39854,26,47);
INSERT INTO "SENSORS_DATA" VALUES(27348,26,61);
INSERT INTO "SENSORS_DATA" VALUES(32353,26,60);
INSERT INTO "SENSORS_DATA" VALUES(17156,26,61);
INSERT INTO "SENSORS_DATA" VALUES(46083,26,61);
INSERT INTO "SENSORS_DATA" VALUES(32765,26,62);
INSERT INTO "SENSORS_DATA" VALUES(31302,26,53);
INSERT INTO "SENSORS_DATA" VALUES(53826,26,47);
INSERT INTO "SENSORS_DATA" VALUES(25127,26,46);
INSERT INTO "SENSORS_DATA" VALUES(22143,26,47);
INSERT INTO "SENSORS_DATA" VALUES(11400,26,35);
INSERT INTO "SENSORS_DATA" VALUES(16252,26,35);
INSERT INTO "SENSORS_DATA" VALUES(21535,26,35);
INSERT INTO "SENSORS_DATA" VALUES(21537,26,34);
INSERT INTO "SENSORS_DATA" VALUES(36460,26,34);
INSERT INTO "SENSORS_DATA" VALUES(55551,26,34);
INSERT INTO "SENSORS_DATA" VALUES(6255,26,13);
INSERT INTO "SENSORS_DATA" VALUES(13423,26,13);
INSERT INTO "SENSORS_DATA" VALUES(46808,26,11);
CREATE TABLE DATA(MAC CHAR(20) PRIMARY KEY     NOT NULL,TEMP            INT    NOT NULL,LIGHT           INT    NOT NULL);
INSERT INTO "DATA" VALUES('C41100FFFF2E2100',26,231);
INSERT INTO "DATA" VALUES('C31100FFFF2E2100',25,268);
CREATE TABLE COAP(MAC CHAR(20) NOT NULL,TEMP            INT    NOT NULL,LIGHT           INT    NOT NULL);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,254);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,254);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,254);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,237);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,238);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,237);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,213);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,214);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,213);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,53);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,198);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,44);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,227);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,84);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,33);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,156);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,170);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,158);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,171);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,160);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,172);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,15);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,169);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,155);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,170);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,156);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,169);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,156);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,169);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,156);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,168);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,155);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,169);
INSERT INTO "COAP" VALUES('C41100FFFF2E2100',26,153);
INSERT INTO "COAP" VALUES('C31100FFFF2E2100',25,168);
COMMIT;