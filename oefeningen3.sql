use Planten
go

--Vraag_1
select SOORT
from PLANTEN
group by SOORT

--Vraag_2
select*
from BESTEL

--Vraag_3
select AVG(PRIJS) as 'Gemidelde prijs',SOORT
from PLANTEN
group by SOORT

--Vraag_4
select  SOORT,KLEUR
from PLANTEN
group by SOORT,KLEUR


--Vraag_5
select Kleur,AVG(prijs) as 'gemiddelde'
from PLANTEN
where SOORT='VAST'
group by KLEUR
order by gemiddelde desc

--Vraag_6
SELECT distinct(LEV_CODE),DATEDIFF(day,B_DATUM,L_DATUM)as 'day'
from BESTEL

--Vraag_7
select SOORT,AVG(PRIJS)as 'Gemiddelde Prijs'
from PLANTEN
where KLEUR!='Geel'
group by SOORT


--Vraag_8
select ART_CODE
from OFFERTES
group by ART_CODE 

--Vraag_9
select soort,AVG(PRIJS) as 'Gemiddelde',count(SOORT) as quantity
from PLANTEN
group by soort
having count(SOORT)>10

--Vraag_10
select LEV_CODE,sum(OFF_PRIJS)as 'TotalPrijs', count(LEV_CODE) as 'Quantity',sum(OFF_PRIJS)/count(LEV_CODE) as 'AvePerCode'
from OFFERTES
group by LEV_CODE
having sum(OFF_PRIJS)/count(LEV_CODE)>6


--Vraag_11
select ART_LEV,sum(BEST_PR) as 'Sum'
from BESTREG
group by ART_LEV
order by sum(BEST_PR) 

--Vraag_12
select PLANTENNM,BL_B,HOOGTE,KLEUR
from PLANTEN
where KLEUR!='null'
order by BL_B,HOOGTE,KLEUR

--Vraag_13(Not correct)
select SOORT,MIN(PRIJS)
from PLANTEN
group by soort


--Vraag_14
select (BL_E-BL_B) as 'Aantal Maanden',count(BL_E-BL_B) as 'Aantal planten'
from PLANTEN
group by ((BL_E-BL_B))

--Vraag_15
select ROUND(PRIJS,0) as 'RoundPrijs'
from PLANTEN
where ROUND(PRIJS,0)>=1
group by ROUND(PRIJS,0)



select *
from BESTREG

