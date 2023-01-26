-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 

SELECT backers_count, outcome, cf_id 
FROM campaign
WHERE outcome = 'live'
ORDER BY backers_count DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.

SELECT COUNT(cf_id),cf_id FROM backers
GROUP BY cf_id
ORDER BY COUNT(cf_id) DESC; 

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

SELECT co.first_name,co.last_name,co.email,ca.goal - ca.pledged as "REMAINING GOAL AMOUNT"
INTO email_contacts_remaining_goal_amount
FROM contacts as co
INNER JOIN campaign as ca
ON co.contact_id = ca.contact_id
WHERE outcome = 'live'
ORDER BY "REMAINING GOAL AMOUNT" DESC;

-- Check the table

SELECT * FROM email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 



-- Check the table


