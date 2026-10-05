
select title_id
from {{ 'netflix_titles_cleansed' }}
having count (*) >1

