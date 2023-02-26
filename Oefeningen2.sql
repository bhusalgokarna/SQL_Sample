use Planten
go

select LEN(LEV_NAAM)
from LEVERAN

select AVG(PRIJS),SOORT
from PLANTEN
where SOORT='WATER'
Group by soort

select MAX(HOOGTE) as Resultaat
from PLANTEN
where SOORT ='BOOM' 

select MAX(OFF_PRIJS) as 'Max', MIN(OFF_PRIJS) as 'Min', AVG(OFF_PRIJS) as 'Gemiddel'
from OFFERTES
where LEV_CODE=013

select min(OFF_PRIJS) as 'Resultaat'
from OFFERTES
where ART_CODE=123

select BESTELNR,ART_LEV,BEST_PR
from BESTREG

select *,(PRIJS+PRIJS*0.05) as 'VerhogePrijs'
from PLANTEN
where SOORT='HEESTER'

select sum(BEDRAG) as 'TotaalBedrag'
from BESTEL
where LEV_CODE=004

select SUM(AANTAL) as 'Totaal Stuk'
from BESTREG
where ART_LEV='B111'


select *
from BESTREG

select SUM(BEST_PR*AANTAL) as 'Totaal bedrag'
from BESTREG
where  ART_LEV='B331'


