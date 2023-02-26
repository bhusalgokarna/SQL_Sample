use Planten
go


--vraag_1
select LEV_CODE,LEV_NAAM,ADRES,WOONPL
from LEVERAN
where WOONPL='AALSMEER';
go

--Vraag_2
select ART_CODE,PLANTENNM,PRIJS
from Planten
order by PLANTENNM;
go

select *
from Planten

--Vraag_3
select ART_CODE,PLANTENNM,BL_E
from Planten
where BL_B=3;


--Vraag_4
select ART_CODE,ART_LEV,LEV_CODE
from OFFERTES
order by ART_CODE

--Vraag_5
select SOORT,HOOGTE
from Planten
where SOORT='WATER'
order by HOOGTE desc

--VRAAG_6
select distinct KLEUR
from Planten


--Vraag_7
select KLEUR
from Planten
where KLEUR is null

--Vraag_8
select distinct SOORT
from Planten

--Vraag_9
select ART_CODE,PLANTENNM,KLEUR, HOOGTE, BL_B
from Planten
where KLEUR='GEEL' and SOORT='vast'

--Vraag_10
select *
from Planten
where PRIJS>=10 and SOORT!='BOOM' and SOORT!='Klim'and SOORT!='water';

--Vraag_11
select*
from Planten
where BL_B=6 And KLEUR='geel'
and SOORT!='Klim'

--Vraag_12
select ART_CODE,PLANTENNM,HOOGTE
from Planten
where HOOGTE<=60 and KLEUR='gemengd'

--Vraag_13
select *
from LEVERAN
where WOONPL!='Hillegom'

--Vraag_14
select ART_CODE,PLANTENNM,KLEUR,HOOGTE
from Planten
where KLEUR='onbekend'

--Vraag_15
select ART_CODE,PLANTENNM,SOORT, BL_B,BL_E
from Planten
where BL_B>=8 and BL_E<=10 

--Vraag_16(Niet correct..)
select ART_CODE,PLANTENNM,SOORT, BL_B,BL_E
from Planten
where BL_B>=10 or BL_B=10;

--Vraag_17
select *
from Planten
where PRIJS between 3 and 5 and SOORT='Vast'

--Vraag_18
select ART_CODE,PLANTENNM,SOORT, BL_B
from Planten
where BL_B =3 or BL_B=4 or BL_B=9


--Vraag_19
select ART_CODE,PLANTENNM,SOORT
from Planten
where PLANTENNM like '%Boom%'

--Vraag_20
select ART_CODE,PLANTENNM
from Planten
where PLANTENNM like '__N%'

--Vraag_21
select ART_CODE,PLANTENNM,SOORT
from Planten
where SOORT= '1-JARIG' or SOORT='2-JARIG'



--Vraag_22
select PLANTENNM,SOORT,KLEUR,HOOGTE,BL_B
from Planten
where SOORT!='BOOM' and SOORT!='HEESTER' and HOOGTE between 100 and 200 and KLEUR in('ROOD','BLAUW') and BL_B<8;


--Vraag_23
select ART_CODE,PLANTENNM
from Planten
where PLANTENNM like '%Kruid'

--Vraag_24
select ART_CODE,PLANTENNM
from Planten
where PLANTENNM like 'L%%E'

--Vraag_25
select ART_CODE,PLANTENNM
from Planten
where PLANTENNM like'M%%A' or PLANTENNM like 'A%%M'or PLANTENNM like 'A%%A' or PLANTENNM like 'M%%M'

--Vraag_26
select ART_CODE,PLANTENNM
from Planten
where LEN(PLANTENNM)=5;

--Vraag_27
select ART_CODE,PLANTENNM
from Planten
where LEN(PLANTENNM)>=5;