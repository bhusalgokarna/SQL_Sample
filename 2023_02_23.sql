use Planten
go

select COUNT(Kleur)-- Hier need to be check because if fild is with null then he will not count.....
from Planten

select count(1)-- hier he will count All data
from Planten

select min(Prijs)
from Planten

select MAX(Prijs)
from Planten

select AVG(HOOGTE),AVG(BL_B),AVG(BL_E)
from PLANTEN

select count(1) as 'Total Record'-- This called Alias
from Planten

select Count(HOOGTE),SOORT,KLEUR-- Groupen by Namen......
from Planten
Group by SOORT,KLEUR

select distinct (SOORT)
from Planten

select SOORT,AVG(PRIJS)
from Planten
--where AVG(PRIJS)<1
group by SOORT
having AVG(PRIJS)<1

select SOORT,AVG(HOOGTE)
from Planten
--where AVG(HOOGTE)>100-- where is not working in this case, so use having to have result.........
group by soort
having AVG(HOOGTE)<100

select *
from Planten
where KLEUR is null

select *
from Planten
where KLEUR is not null


select *
from Planten
where KLEUR = ' '


select ART_CODE, PLANTENNM,SOORT,KLEUR,HOOGTE,BL_B, BL_E,PRIJS
into plantenCopy
from PLANTEN

select *
from plantenCopy


select Isnull(KLEUR,'GEEN')
from plantenCopy


select coalesce(KLEUR,soort,'')
from plantenCopy

----Temporary Tables----Tijdelijke Tabellen.....

Create table #tijdelijk   --# make the table tijdelijke
(
Id int,
Naam varchar(30)
)
insert into #tijdelijk(Id,Naam)
values(1,'Lolita')

select *
from #tijdelijk

Create table ##tijdelijk   --# make the table tijdelijke
(
Id int,
Naam varchar(30)
)
insert into ##tijdelijk(Id,Naam)
values(1,'Kenan')

select *
from ##tijdelijk

select RTRIM('Verwijdert spaties.      ')
select LTRIM('      Hallo')
select SUBSTRING('Lolita',1,1) as initials;

select LOWER(PLANTENNM)
from Planten
select Upper(PLANTENNM)
from Planten

select *,(prijs+prijs *0.21) as 'Prijs met BTW '
from Planten

select GETDATE();

