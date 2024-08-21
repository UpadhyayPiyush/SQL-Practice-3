select geoId, sum(amount) from sales
group by GeoID;

select p.Salesperson, sum(s.Amount) as Total, p.Location
from sales s
join people p on p.SPID=s.SPID
group by p.Salesperson, p.Location
order by Total desc
LIMIT 5;

select sum(s.Amount)as total, pr.Product
from sales s
join products pr on pr.PID=s.PID
group by pr.Product
order by total desc
Limit 10;
