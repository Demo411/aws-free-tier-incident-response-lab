-- Broad activity timeline
SELECT eventTime, eventName, sourceIPAddress
FROM cloudtrail_logs
ORDER BY eventTime DESC
LIMIT 20;

-- IAM activity
SELECT eventTime, eventName, sourceIPAddress
FROM cloudtrail_logs
WHERE eventSource = 'iam.amazonaws.com'
ORDER BY eventTime DESC
LIMIT 20;

-- CreateUser detection
SELECT eventTime, eventName, sourceIPAddress
FROM cloudtrail_logs
WHERE eventName = 'CreateUser'
ORDER BY eventTime DESC
LIMIT 10;

-- Security group exposure
SELECT eventTime, eventName, sourceIPAddress
FROM cloudtrail_logs
WHERE eventName = 'AuthorizeSecurityGroupIngress'
ORDER BY eventTime DESC
LIMIT 10;
