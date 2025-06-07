CREATE STREAM youtube_videos (
  video_id VARCHAR KEY,
  title VARCHAR,
  likes INTEGER,
  comments INTEGER,
  views INTEGER,
  favorites INTEGER,
  thumbnail VARCHAR
) WITH (
  KAFKA_TOPIC = 'youtube_videos',
  PARTITIONS = 1,
  VALUE_FORMAT = 'json'
);