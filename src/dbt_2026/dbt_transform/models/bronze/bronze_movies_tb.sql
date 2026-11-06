
with raw_data as (
    select
    cast(movie_id as integer) as movie_id,
    title  as title_raw,
    genres as genres_raw
    from {{ source('movies_schema', 'movies_tb') }}
)
select * 
from raw_data