select * from Two_wheeler
select * from customer
select * from company


select distinct model_type from Two_wheeler
	
select count (distinct model_type) from Two_wheeler
	
select count (model_type) as "count of sports" from Two_wheeler where model_type = 'Sports'
	
select model_type,count(model_type) from Two_wheeler group by model_type
