#!/bin/bash

start_month=$1
end_month=$2
 i=$start_month
while [ $i -le $end_month ]; do
       cal -m "$i"
       i=$((i+1))
done
