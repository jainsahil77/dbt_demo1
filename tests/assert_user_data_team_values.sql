select
    department_id
from {{ ref('user_data' )}}
where department_id > 6
