--****PLEASE ENTER YOUR DETAILS BELOW****

--T1a-rm-insert.sql
--Student ID: 32718179
--Student Name: Kelly Wijaya

/* Comments for your marker:





*/


/*
1(a) Load selected tables with your own additional test data
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
	values(1, to_date('20191221 10:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20191221 10:30:05',' YYYYMMDD HH:MI:SS'), 
	'RSPCA', 1, to_date('20191221','YYYYMMDD'),
	'10K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(2, to_date('20191221 10:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20191221 10:48:05',' YYYYMMDD HH:MI:SS'), 
	'RSPCA', 2, to_date('20191221','YYYYMMDD'),
	'10K', null);


insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(3, to_date('20191221 10:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20191221 11:30:20',' YYYYMMDD HH:MI:SS'),  
	'RSPCA', 3, to_date('20191221','YYYYMMDD'),
	'10K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(26, to_date('20191221 10:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20191221 11:31:05',' YYYYMMDD HH:MI:SS'),  
	'RSPCA', 14, to_date('20191221','YYYYMMDD'),
	'10K', null);


insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(4, to_date('20200404 11:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200404 11:30:05',' YYYYMMDD HH:MI:SS'),  
	'RSPCA', 4, to_date('20200404','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(5, to_date('20200404 11:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200404 11:35:05',' YYYYMMDD HH:MI:SS'),   
	'RSPCA', 5, to_date('20200404','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(6, to_date('20200404 11:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200404 11:40:10',' YYYYMMDD HH:MI:SS'), 
	'RSPCA', 6, to_date('20200404','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(7, to_date('20200404 11:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200404 11:54:05',' YYYYMMDD HH:MI:SS'),  
	'RSPCA', 7, to_date('20200404','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(24, to_date('20200908 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200908 08:54:15',' YYYYMMDD HH:MI:SS'), 
	'Salvation Army', 2, to_date('20200908','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(25, to_date('20200908 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200908 08:44:05',' YYYYMMDD HH:MI:SS'), 
	'Salvation Army', 18, to_date('20200908','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(27, to_date('20200908 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200908 08:42:15',' YYYYMMDD HH:MI:SS'), 
	'Salvation Army', 17, to_date('20200908','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(8, to_date('20200908 12:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200908 12:34:05',' YYYYMMDD HH:MI:SS'), 
	'RSPCA', 14, to_date('20200908','YYYYMMDD'),
	'3K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(9, to_date('20200908 12:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200908 12:44:05',' YYYYMMDD HH:MI:SS'), 
	'RSPCA', 9, to_date('20200908','YYYYMMDD'),
	'3K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(10, to_date('20200908 12:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20200908 12:42:45',' YYYYMMDD HH:MI:SS'),  
	'RSPCA', 10, to_date('20200908','YYYYMMDD'),
	'3K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(11, to_date('20210206 09:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 09:44:05',' YYYYMMDD HH:MI:SS'),  
	'Beyond Blue', 11, to_date('20210206','YYYYMMDD'),
	'21K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(12, to_date('20210206 09:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 09:41:05',' YYYYMMDD HH:MI:SS'),
	'Beyond Blue', 12, to_date('20210206','YYYYMMDD'),
	'21K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(13, to_date('20210206 09:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 09:34:05',' YYYYMMDD HH:MI:SS'), 
	'Beyond Blue', 13, to_date('20210206','YYYYMMDD'),
	'21K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(14, to_date('20210206 09:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 09:44:15',' YYYYMMDD HH:MI:SS'), 
	'Beyond Blue', 14, to_date('20210206','YYYYMMDD'),
	'21K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(29, to_date('20210206 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 08:54:05',' YYYYMMDD HH:MI:SS'),
	'Salvation Army', 2, to_date('20210206','YYYYMMDD'),
	'42K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(15, to_date('20210206 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 08:24:49',' YYYYMMDD HH:MI:SS'),
	'Salvation Army', 15, to_date('20210206','YYYYMMDD'),
	'42K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(16, to_date('20210206 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 08:46:05',' YYYYMMDD HH:MI:SS'),
	'Salvation Army', 16, to_date('20210206','YYYYMMDD'),
	'42K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(17, to_date('20210206 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 08:32:05',' YYYYMMDD HH:MI:SS'), 
	'Salvation Army', 17, to_date('20210206','YYYYMMDD'),
	'42K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(18, to_date('20220220 07:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20220220 07:42:05',' YYYYMMDD HH:MI:SS'), 
	'Amnesty International', 18, to_date('20220220','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(19, to_date('20220220 07:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20220220 07:32:35',' YYYYMMDD HH:MI:SS'), 
	'Amnesty International', 19, to_date('20220220','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(20, to_date('20220220 07:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20220220 07:52:15',' YYYYMMDD HH:MI:SS'), 
	'Amnesty International', 20, to_date('20220220','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(21, to_date('20220220 07:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20220220 07:32:45',' YYYYMMDD HH:MI:SS'), 
	'Amnesty International', 10, to_date('20220220','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(30, to_date('20220220 07:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20220220 07:52:15',' YYYYMMDD HH:MI:SS'), 
	'Amnesty International', 14, to_date('20220220','YYYYMMDD'),
	'5K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(22, to_date('20210206 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 08:48:15',' YYYYMMDD HH:MI:SS'),
	'Amnesty International', 5, to_date('20210206','YYYYMMDD'),
	'21K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(23, to_date('20210206 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 08:46:25',' YYYYMMDD HH:MI:SS'), 
	'Amnesty International', 8, to_date('20210206','YYYYMMDD'),
	'21K', null);

insert into entry(entryid,
    entrystarttime,
    entryfinishtime,
    charname,
    compno,
    carndate,
    eventtypecode,
    teamid)
	values(28, to_date('20210206 08:00:00','YYYYMMDD HH:MI:SS'), 
	to_date('20210206 08:36:45',' YYYYMMDD HH:MI:SS'), 
	'Amnesty International', 1, to_date('20210206','YYYYMMDD'),
	'21K', null);

insert into team(teamid,
    teamname,
    carndate,
    teamnomembers,
    charname,
    entryid)
	values(1, 'Bulldogs Rules', to_date('20191221','YYYYMMDD'),4,'RSPCA',3);

update entry
set teamid=1
where entryid in (1,2,3,26);

insert into team(teamid,
    teamname,
    carndate,
    teamnomembers,
    charname,
    entryid)
	values(2, 'Love Actually', to_date('20200404','YYYYMMDD'),4,'RSPCA',7);

update entry
set teamid=2
where entryid in (4,5,6,7);

insert into team(teamid,
    teamname,
    carndate,
    teamnomembers,
    charname,
    entryid)
	values(3, 'Love Actually', to_date('20200908','YYYYMMDD'),3,'RSPCA',10);

update entry
set teamid=3
where entryid in (8,9,10);

insert into team(teamid,
    teamname,
    carndate,
    teamnomembers,
    charname,
    entryid)
	values(4, 'Wildcats High', to_date('20210206','YYYYMMDD'),4,'Beyond Blue',13);

update entry
set teamid=4
where entryid in (11,12,13,29);

insert into team(teamid,
    teamname,
    carndate,
    teamnomembers,
    charname,
    entryid)
	values(5, 'Shinning Star', to_date('20210206','YYYYMMDD'),4,'Salvation Army',17);

update entry
set teamid=5
where entryid in (14,15,16,17);

insert into team(teamid,
    teamname,
    carndate,
    teamnomembers,
    charname,
    entryid)
	values(6, 'Golden Roosters', to_date('20220220','YYYYMMDD'),4,'Amnesty International',19);

update entry
set teamid=6
where entryid in (18,19,20,30);

insert into team(teamid,
    teamname,
    carndate,
    teamnomembers,
    charname,
    entryid)
	values(7, 'Golden Roosters', to_date('20210206','YYYYMMDD'),4,'Amnesty International',21);

update entry
set teamid=7
where entryid in (21,22,23,28);

insert into team(teamid,
    teamname,
    carndate,
    teamnomembers,
    charname,
    entryid)
	values(8, 'Varsity Blue', to_date('20200908','YYYYMMDD'),3,'Amnesty International',24);

update entry
set teamid=8
where entryid in (24,25,27);

commit;