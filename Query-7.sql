SELECT
  name,
  published_datetime,
  no_of_views
FROM
  VIDEO
WHERE
  name LIKE '%esport%'
  AND no_of_views > 100000
  AND published_datetime BETWEEN '2018-01-01'
  AND '2020-12-31'
ORDER BY
  no_of_views DESC,
  published_datetime DESC;
