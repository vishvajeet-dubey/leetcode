SELECT 
    tweet_id
FROM 
    tweets
WHERE 
    content IS NOT NULL 
    AND LENGTH(content) > 15;