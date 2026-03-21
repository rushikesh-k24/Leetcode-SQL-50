# Write a solution to find the percentage of the users registered in each contest rounded to two decimals. 
  Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.

select contest_id, ROUND((Count(distinct user_id))*100/(SELECT Count( user_id ) from Users),2) as percentage
From Register 
GROUP BY contest_id
order by percentage desc, contest_id
