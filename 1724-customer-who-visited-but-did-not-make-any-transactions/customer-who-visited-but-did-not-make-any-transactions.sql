# Write your MySQL query statement below
select v.customer_id , count(*) as count_no_trans from visits v
left join transactions on v.visit_id = transactions.visit_id
where transactions.transaction_id is null
group by v.customer_id
