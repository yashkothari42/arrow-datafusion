select
    sum(l_quantity),
    sum(l_extendedprice) ,
    sum(l_extendedprice * (1 - l_discount)) ,
    sum(l_extendedprice * (1 - l_discount) * (1 + l_tax)) ,
    avg(l_quantity),
    avg(l_extendedprice) ,
    avg(l_discount) ,
    count(*)
from
    lineitem
where
    l_shipdate <= date '1998-09-02'