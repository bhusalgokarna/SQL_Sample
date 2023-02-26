use Planten
go
select * 
from Planten
go

select PLANTENNM,SOORT,KLEUR
FROM Planten
WHERE kLEUR='Blauw'-- print only bleu color 

select PLANTENNM
from Planten
--where PLANTENNM Like'r%'--all which start with R....
where PLANTENNM Like'%r'--all which finish with with R....
--where PLANTENNM Like'%r%'--all which has atleast 1 r....

select soort
from Planten

select distinct soort--print only single time...
from Planten

select KLEUR,HOOGTE,SOORT
from Planten
where HOOGTE>100 and SOORT='heester'

select count(1)--use always 1 instead of *, it works faster....................
from Planten

select *
from Planten
where HOOGTE between 100 and 200 and SOORT is not null

select*
from Planten
where KLEUR is null

select*
from Planten
where SOORT in('boom','heester') -- or where soort ='boom',soort=heester

select KLEUR,HOOGTE
from Planten
where HOOGTE>100 and soort='heester'
order by HOOGTE desc       --sorting assending(order by ) or decending(order by hoogte desc)

select[ART_CODE] as 'Article Code',[PLANTENNM] as 'name',[KLEUR] as Color
from Planten
where SOORT in('boom','heester');   --Goed prictice to write ;.........

SELECT('Soort : ' +SOORT + 'Naam : '+PLANTENNM) as 'plantInfo'     --To Print lika in a c#
from Planten

