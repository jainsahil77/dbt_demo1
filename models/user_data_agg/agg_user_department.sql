{{ config(
    materialized='incremental'
) }}

select * from {{ ref('user_data_department') }}

-- {% if is_incremental() %}

--   -- this filter will only be applied on an incremental run
--   where run_date > (select max(run_date) from {{ this }})

-- {% endif %}
