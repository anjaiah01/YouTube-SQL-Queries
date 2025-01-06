SELECT
  gender,
  COUNT(*) AS total_users
FROM
  USER
WHERE
  premium_membership = 1
GROUP BY
  gender;
