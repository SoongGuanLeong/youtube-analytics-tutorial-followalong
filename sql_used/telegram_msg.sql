INSERT INTO telegram_output_stream
SELECT
'{chat_id}' as `chat_id`,
CONCAT('Likes Changed for', title, ' - ', cast(likes_prev as string), ':', cast(likes_curr as string)) as `text`
FROM  YOUTUBE_ANALYTICS_CHANGES_STREAM
where LIKES_CURR <> LIKES_PREV;

-- replace {chat_id} with your telegram chat id