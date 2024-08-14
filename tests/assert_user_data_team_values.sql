select
    subscriber_id
from {{ ref('user_data' )}}
where subscriber_id > 6
