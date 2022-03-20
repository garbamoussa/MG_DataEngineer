
## requête SQL simple permettant de trouver le chiffre d ’affaires (le montant total des ventes)
## jour par jour, du 1er janvier 2019 au 31 décembre 2019



SELECT date, SUM(prod_price*prod_qty) as ventes
FROM TRANSACTIONS
WHERE date between '2019-01-01' and '2019-12-31'
GROUP BY date
ORDER BY date ASC