--****PLEASE ENTER YOUR DETAILS BELOW****

--T3-rm-mods.sql
--Student ID: 32718179
--Student Name: Kelly Victoria Wijaya

/* Comments for your marker:




*/


/*
3(a) Changes to live database 1
*/
--PLEASE PLACE REQUIRED SQL STATEMENTS FOR THIS PART HERE

ALTER TABLE ENTRY ADD constraint unique_compno_carndate unique (compno,carndate);

commit;

/*
3(b) Changes to live database 2
*/
--PLEASE PLACE REQUIRED SQL STATEMENTS FOR THIS PART HERE

ALTER TABLE entry ADD (
    ElapsedTime NUMBER(5, 2)
);

COMMENT ON COLUMN ENTRY.ELAPSEDTIME is
'elapsed time = entryfinishtime - entrystarttime in minutes';
UPDATE entry set ElapsedTime=(entryfinishtime - entrystarttime)*1440;

commit;

/*
3(c) Changes to live database 3
*/
--PLEASE PLACE REQUIRED SQL STATEMENTS FOR THIS PART HERE

CREATE TABLE CompEmerContact (
CompNo number(4) not null, 
EmerConPhone Char(10) not null);

Comment on Column CompEmerContact.CompNo is 
'Competitor Registration Number';

Comment on Column CompEmerContact.EmerConPhone is 
'Emergency Contact Phone Number';

INSERT INTO CompEmerContact
select compno, emerconphone from competitor;

ALTER TABLE CompEmerContact ADD Constraint CompEmerContact_PK primary key (CompNo,EmerConPhone);
ALTER TABLE CompEmerContact ADD Constraint CompEmerContact_Competitor_FK foreign key (CompNo) references competitor (CompNo);
ALTER TABLE CompEmerContact ADD Constraint CompEmerContact_EmerContact_FK foreign key (EmerConPhone) references EmerContact (EmerConPhone);
ALTER TABLE Competitor Drop Column EmerConPhone;

commit;
