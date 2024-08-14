
  
    

  create  table
    "dev"."public"."user_data_department__dbt_tmp"
    
    
    
  as (
    


select user_df.*,dal_df.department,CURRENT_DATE as run_date from "dev"."public"."user_data" as user_df left outer join "dev"."public"."department" as dal_df
on user_df.department_id = dal_df.id
  );
  