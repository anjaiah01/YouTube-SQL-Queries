SELECT
  COUNT(*) AS premium_users_count
FROM
  USER
WHERE
  premium_membership = 1;
