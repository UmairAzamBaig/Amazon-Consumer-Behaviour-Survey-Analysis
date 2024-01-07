-- 1. Calculate the Average Age of Amazon Customers
SELECT Avg(age) as Avg_age_of_consumer from [ amazon];

-- 2. Count the Number of Male and Female Customers
SELECT gender, count(*) as total_gender from [ amazon] 
GROUP BY gender 
ORDER BY total_gender desc;

-- 3. Analyze Purchase Frequency by Gender
SELECT Purchase_Frequency, gender, COUNT(*) AS total_count 
FROM [ amazon] 
WHERE gender IN ('Male', 'Female') 
GROUP BY Purchase_Frequency, gender 
ORDER BY total_count desc;

-- 4. Explore Popular Purchase Categories by Gender
SELECT TOP 5 purchase_categories, gender, count(*) as total_count from [ amazon] 
WHERE gender IN ('Male', 'Female') 
GROUP BY Purchase_Categories, gender 
ORDER BY total_count desc;

-- 5. Examine the Influence of Personalized Recommendations on Purchases
SELECT Personalized_Recommendation_Frequency, gender, count(*) as total_count from [ amazon] 
WHERE gender IN ('Male', 'Female') 
GROUP BY Personalized_Recommendation_Frequency, gender 
ORDER BY total_count desc;

-- 6. Analyze Browsing Frequency
SELECT browsing_frequency, count(*) as total_count from [ amazon] 
GROUP BY Browsing_Frequency 
ORDER BY total_count desc;

-- 7. Study Product Search Methods
SELECT Product_Search_Method, count(*) as total_count from [ amazon] 
GROUP BY Product_Search_Method 
ORDER BY total_count desc;

-- 8. Analyze the Importance of Customer Reviews
SELECT Customer_Reviews_Importance, count(*) as total_count from [ amazon] 
GROUP BY Customer_Reviews_Importance 
ORDER BY total_count desc;

-- 9. Examine Cart Behavior
SELECT Add_to_Cart_Browsing, COUNT(*) AS total_count 
FROM [ amazon] 
GROUP BY Add_to_Cart_Browsing 
ORDER BY total_count desc;

-- 10. Investigate Cart Abandonment Factors
SELECT Cart_Abandonment_Factors, COUNT(*) AS total_count 
FROM [ amazon] 
GROUP BY Cart_Abandonment_Factors 
ORDER BY total_count desc;

-- 11. Analyze the Use of "Save for Later" Feature
SELECT Saveforlater_Frequency, COUNT(*) AS count 
FROM [ amazon] 
GROUP BY Saveforlater_Frequency;

-- 12. Explore Areas for Improvement as Suggested by Customers
SELECT Improvement_Areas, COUNT(*) AS total_count 
FROM [ amazon] 
GROUP BY Improvement_Areas 
ORDER BY total_count desc;

-- 13. Identify Aspects of Amazon's Services That Customers Appreciate
SELECT Service_Appreciation, COUNT(*) AS total_count 
FROM [ amazon] 
GROUP BY Service_Appreciation 
ORDER BY total_count desc;
