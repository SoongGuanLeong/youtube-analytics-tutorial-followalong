CREATE TABLE youtube_analytics_changes WITH (KAFKA_TOPIC='youtube_analytics_changes') AS
SELECT
    video_id,
    LATEST_BY_OFFSET(title) as title,
    LATEST_BY_OFFSET(comments, 2)[1] as comments_prev,
    LATEST_BY_OFFSET(comments, 2)[2] as comments_curr,
    latest_by_offset(likes, 2)[1] as likes_prev,
    latest_by_offset(likes, 2)[2] as likes_curr,
    latest_by_offset(views, 2)[1] as views_prev,
    latest_by_offset(views, 2)[2] as views_curr,
    latest_by_offset(favorites, 2)[1] as favorites_prev,
    latest_by_offset(favorites, 2)[2] as favorites_curr

FROM youtube_videos
GROUP BY video_id;