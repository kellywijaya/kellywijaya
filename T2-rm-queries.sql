--****PLEASE ENTER YOUR DETAILS BELOW****

--T2-rm-queries.sql
--Student ID: 32718179
--Student Name: Kelly Victoria Wijaya

/* Comments for your marker:




*/


/*
2(a) Query 1
*/
--PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE

select lpad(to_Char(t3.carndate,'fmDy dd Month yyyy'),23) carnival_date, t4.carnname, t5.eventtypedesc, t1.compfname ||' '|| t1.complname fullname
from competitor t1, entry t2, event t3, carnival t4, eventtype t5
where t1.compno=t2.compno and t2.carndate=t3.carndate
and t2.eventtypecode =t3.eventtypecode  
and t3.carndate =t4.carndate
and t5.eventtypecode = t3.eventtypecode
and compemail like '%@monash.edu'
order by t3.carndate

/*
2(b) Query 2
*/
--PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE

select lpad(to_Char(t3.carndate,'fmDy dd Month yyyy'),23) carnival_date,
t1.charname, t2.compfname ||' '|| t2.complname runner,
t4.charcontact, t5.eventtypedesc
from entry t1, competitor t2, event t3, charity t4, eventtype t5
where t1.compno=t2.compno and t1.eventtypecode=t3.eventtypecode
and t1.charname=t4.charname and t5.eventtypecode=t3.eventtypecode and t1.carndate=t3.carndate
and eventtypedesc like '42.2 Km Marathon'
order by t3.carndate

/*
2(c) Query 3
*/
--PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE

select t1.compno, t1.compfname, t1.complname, t1.compgender, 
count(case when extract(year from t2.carndate)=extract(year from sysdate)-2 
then 1 end) twoyrsback, 
count(case when extract(year from t2.carndate)=extract(year from sysdate)-1 
then 1 end) lastcalyear,
nvl(to_char(nullif(count(case when extract(year from t2.carndate)=extract(year from sysdate)-1 or
extract(year from t2.carndate)=extract(year from sysdate)-2
then 1 end),0)),'Completed No Runs') last2calendaryears
from competitor t1, entry t2
where t1.compno=t2.compno
group by t1.compno, t1.compfname, t1.complname, t1.compgender
order by last2calendaryears desc, compno

/*
2(d) Query 4
*/
--PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE

select ev.carnival_date,ev.carnname, count(en.entryid) total_entries5km from 
(select to_Char(t1.carndate,'dd-Mon-yyyy') carnival_date, t1.carnname,t3.eventtypecode
from carnival t1, event t3, eventtype t4
where t1.carndate=t3.carndate and t3.eventtypecode=t4.eventtypecode
and extract (year from t3.carndate)=2020 and eventtypedesc='5 Km Run') ev
left join entry en
on ev.carnival_date=en.carndate and en.eventtypecode=ev.eventtypecode
group by ev.carnival_date,ev.carnname

/*
2(e) Query 5
*/
--PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE

select ev.carnival_date,ev.carnname,ev.eventtypedesc from 
(select to_Char(t1.carndate,'dd-Mon-yyyy') carnival_date, t1.carnname,t3.eventtypecode,t4.eventtypedesc
from carnival t1, event t3, eventtype t4
where t1.carndate=t3.carndate and t3.eventtypecode=t4.eventtypecode)ev
left join entry en
on ev.carnival_date=en.carndate and en.eventtypecode=ev.eventtypecode
group by ev.carnival_date,ev.carnname,ev.eventtypedesc
having count(en.entryid)=0
order by to_date(carnival_date,'dd-Mon-yyyy'), eventtypedesc

/*
2(f) Query 6
*/
--PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE

select t1.teamname,to_Char(t1.carndate,'dd-Mon-yyyy') carnivaldate,
to_char(t1.entryid,'fm0000')||' '||t3.compfname||' '||t3.complname teamleader
,t1.teamnomembers
from team t1, entry t2, competitor t3 
where t1.entryid=t2.entryid and t2.compno=t3.compno
and t1.teamname in (select t1.teamname
from (select COUNT(*) as total, teamname
      from team
      group by teamname) t1,
     (select MAX(total) as maxtotal
      from (select COUNT(*) as total, teamname from team group by teamname)) t2
where t1.total = t2.maxtotal)
order by t1.teamname, t1.carndate

/*
2(g) Query 7
*/
--PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE

select t4.compfname||' '||t4.complname fullname, 
to_Char(t3.entrystarttime,'HH24:MI:SS') starttime,
to_Char(t3.entryfinishtime,'HH24:MI:SS') finishtime,
FLOOR ((t3.entryfinishtime - t3.entrystarttime)*24)
||TO_CHAR(to_date('0001-01-01','YYYY-MM-DD') 
+ (t3.entryfinishtime - t3.entrystarttime), ':MI:SS') "RUN DURATION (hh:mi:ss)"
from eventtype t1, event t2, entry t3, competitor t4
where t1.eventtypecode=t2.eventtypecode
and t2.eventtypecode=t3.eventtypecode
and t2.carndate=t3.carndate
and t3.compno=t4.compno
and eventtypedesc='5 Km Run'
and t2.carndate=to_date('2020-09-08','YYYY-MM-DD')
and (t3.entryfinishtime - t3.entrystarttime)>
(select avg(t3.entryfinishtime - t3.entrystarttime) 
from eventtype t1, event t2, entry t3
where t1.eventtypecode=t2.eventtypecode
and t2.eventtypecode=t3.eventtypecode
and t2.carndate=t3.carndate
and eventtypedesc='5 Km Run'
and t2.carndate=to_date('2020-04-04','YYYY-MM-DD'))
order by "RUN DURATION (hh:mi:ss)"
