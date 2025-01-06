SELECT
  video_id,
  name,
  duration_in_secs,
  published_datetime,
  no_of_views,
  channel_id
FROM
  VIDEO
WHERE
  no_of_views > 100000
ORDER BY
  name;
