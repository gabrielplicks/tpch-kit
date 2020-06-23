#!/bin/bash

mkdir 1/

./dbgen -s 1 -U 10000

mv delete.* 1/
mv lineitem.tbl.u* 1/
mv orders.tbl.u* 1/

