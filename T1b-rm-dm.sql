--****PLEASE ENTER YOUR DETAILS BELOW****

--T1b-rm-dm.sql
--Student ID: 32718179
--Student Name: Kelly Victoria Wijaya

/* Comments for your marker:




*/


/*
1b(i) Create sequences 
*/
--PLEASE PLACE REQUIRED SQL STATEMENT(S) FOR THIS PART HERE


DROP SEQUENCE competitor_seq;

CREATE SEQUENCE competitor_seq START WITH 100 INCREMENT BY 1;

DROP SEQUENCE entry_seq;

CREATE SEQUENCE entry_seq START WITH 100 INCREMENT BY 1;

DROP SEQUENCE team_seq;

CREATE SEQUENCE team_seq START WITH 100 INCREMENT BY 1;


/*
1b(ii) Take the necessary steps in the database to record data.
*/
--PLEASE PLACE REQUIRED SQL STATEMENT(S) FOR THIS PART HERE


insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(entry_seq.NEXTVAL, (select carndate from carnival where carnname = 'RM Summer Series Indonesia 2022'), (select carndate from carnival where carnname = 'RM Summer Series Indonesia 2022'), 
	'Amnesty International',(select compno from competitor where compphone = '1234567890'),(select carndate from carnival where carnname = 'RM Summer Series Indonesia 2022'),
	'21K', null);

commit;

/*
1b(iii) Take the necessary steps in the database to record changes. 
*/
--PLEASE PLACE REQUIRED SQL STATEMENT(S) FOR THIS PART HERE

update entry
set eventtypecode='10K'
where entryid = 
(select entryid from entry 
where compno = (select compno from competitor where compphone = '1234567890') and carndate = (select carndate from carnival where carnname = 'RM Summer Series Indonesia 2022') and eventtypecode = '21K');

insert into team(teamid,
    teamname,
    carndate,
    teamnomembers,
    charname,
    entryid)
	values(team_seq.NEXTVAL, 'Kenya Speedstars', (select carndate from carnival where carnname = 'RM Summer Series Indonesia 2022'),1,'Beyond Blue', (select entryid from entry where compno = (select compno from competitor where compphone = '1234567890') and carndate = (select carndate from carnival where carnname = 'RM Summer Series Indonesia 2022') and eventtypecode = '10K'));

update entry
set teamid= team_seq.CURRVAL
where entryid= (select entryid from entry where compno = (select compno from competitor where compphone = '1234567890') and carndate = (select carndate from carnival where carnname = 'RM Summer Series Indonesia 2022') and eventtypecode = '10K');

commit;

/*
1b(iv) Take the necessary steps in the database to record changes. 
*/
--PLEASE PLACE REQUIRED SQL STATEMENT(S) FOR THIS PART HERE

update entry
set teamid= null where teamid=(select teamid from team where teamname='Kenya Speedstars');
delete from team where teamname='Kenya Speedstars';
delete from entry where entryid= (select entryid from entry where compno = (select compno from competitor where compphone = '1234567890') and carndate = (select carndate from carnival where carnname = 'RM Summer Series Indonesia 2022') and eventtypecode = '10K');

commit;
