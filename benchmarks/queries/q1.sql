select
   count(l_returnflag),count(l_linestatus)
from
    lineitem
where 
    l_returnflag = 'R' 