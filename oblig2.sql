
-- Oppgave 2
-- 2a
select * from timelistelinje where timelistenr = 3;


--2b
select count(*) as antall_timelister from timeliste;


--2c
select count(*) as ikke_utbetalt from timeliste where not status = 'utbetalt';


--2d
select count(timelistenr) as antall_linjer, count(pause) as antall_pauser from timelistelinje;


--2e
select count(timelistenr) as ant_uten_pause from timelistelinje where pause IS NULL;

-- Oppgave 3
--3a
select sum(varighet)/60 as antall_timer from varighet 
INNER JOIN timeliste ON Timeliste.timelistenr = varighet.timelistenr 
where not timeliste.status = 'utbetalt';

--3b
select distinct t.timelistenr, t.beskrivelse from timeliste as t inner join timelistelinje as tj on (t.timelistenr = tj.timelistenr) where tj.beskrivelse like '%test%';

--3c
select sum(varighet)/60*200 as total_penger from varighet
INNER JOIN timeliste ON Timeliste.timelistenr = varighet.timelistenr
where timeliste.status = 'utbetalt';

--Oppgave 4
--4a
-- Natural join vil kombinere to tabeller basert p� kolonne navn og identisk innhold, og tar ikke duplikater. Mens inner join kombinerer to tabeller, og tar alle radene med.

--4b
-- Timeliste har 34 rader og når vi joiner varighet med de 34 radene i timeliste, får vi 34 i begge natural og inner join. Derfor har de to spørringene samme svar.
