#! /bin/bash
read -p "enter the day " day
read -p "enter the month " month
read -p "enter the year " year
y0=$((year - (14 - month) / 12));
x=$((y0 + (y0 / 4) - (y0 / 100) + (y0 / 400)));
m0=$((month + 12 * ((14 - month) / 12) - 2));
d0=$((day + x + ((31 * m0) / 12) % 7));
echo "y0 is " $y0;
echo "x is " $x;
echo "m0 is " $m0;
echo "d0 is " $d0;
