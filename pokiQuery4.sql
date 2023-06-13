select name
From ( SELECT Name, ROW_NUMBER() OVER (ORDER BY Name) AS row_num FROM Author) AS subquery WHERE row_num <= 76;