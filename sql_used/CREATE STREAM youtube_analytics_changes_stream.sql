CREATE STREAM youtube_analytics_changes_stream (
  title VARCHAR,
  comments_prev INTEGER,
  comments_curr INTEGER,
  likes_prev INTEGER,
  likes_curr INTEGER,
  views_prev INTEGER,
  views_curr INTEGER,
  favorites_prev INTEGER,
  favorites_curr INTEGER
) WITH (
  KAFKA_TOPIC='youtube_analytics_changes',
  PARTITIONS = 1,
  VALUE_FORMAT = 'json'
);
