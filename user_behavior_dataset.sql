select * from user_behavior_dataset;
use mobile_usage;

SELECT Age, SUM('Screen On Time (hours/day)') AS Total_Screen_Time
FROM user_behavior_dataset
GROUP BY Age
ORDER BY Age;

SELECT Gender, AVG('App Usage Time (min/day)') AS Average_App_Usage
FROM user_behavior_dataset
GROUP BY Gender;

SELECT 'Operating System', AVG('Data Usage (MB/day)') AS Average_Data_Usage
FROM user_behavior_dataset
GROUP BY 'Operating System';

SELECT 'User Behavior Class', COUNT(*) AS User_Count
FROM user_behavior_dataset
GROUP BY 'User Behavior Class'
ORDER BY User_Count DESC
LIMIT 1;

SELECT 'User ID', 'Device Model', 'Battery Drain (mAh/day)'
FROM user_behavior_dataset
ORDER BY 'Battery Drain (mAh/day)' DESC
LIMIT 3;

SELECT 'Operating System', SUM('App Usage Time (min/day)') AS Total_App_Usage
FROM user_behavior_dataset
GROUP BY 'Operating System';

SELECT Gender, AVG('Number of Apps Installed') AS Avg_Apps_Installed
FROM user_behavior_dataset
GROUP BY Gender;