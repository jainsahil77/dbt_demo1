
    
    

select
    subscriber_id as unique_field,
    count(*) as n_records

from "dev"."public"."user_data"
where subscriber_id is not null
group by subscriber_id
having count(*) > 1


