
## requête un peu plus complexe qui permet de déterminer, par client et sur la période allant du 1er janvier 2019 au 31 décembre 2019, 

##les ventes meuble et déco réalisées


SELECT client_id, sum(meuble) as ventes_meuble, sum(deco) as ventes_deco
FROM (
	SELECT t.client_id, 
		case when pn.product_type='MEUBLE' then t.prod_price*t.prod_qty else 0 as meuble,
		case when pn.product_type='DECO' then t.prod_price*t.prod_qty else 0 as deco
	FROM TRANSACTIONS t
	LEFT JOIN PRODUCT_NOMENCLATURE pn
	ON pn.product_id = t.prod_id
	WHERE t.date between '2020-01-01' and '2020-12-31'
)
GROUP BY client_id