#!/bin/bash 

clear
 
echo "Sup, $USER"
 
echo ""
pwd
echo ""

echo "Testing NONE with changing threads"
for i in 1 2 3 4 5 6 7 8 9 10; do
echo "Executing with $i number of threads. Grid size 10 "
./gridapp 10 $i -none | grep elapsed | cut -d' ' -f4 >> ./none_count.csv
done

echo "Testing NONE with changing size"
for i in 2 3 4 5 6 7 8 9 10; do
echo "Executing with grid size $i and 10 number of threads. "
./gridapp $i 10 -none | grep elapsed | cut -d' ' -f4 >> ./none_size.csv
done


echo""
echo""
echo "FINISHED EXECUTING: "
echo""
echo " ./gridapp 10 [1-10] -none "
echo " ./gridapp [1-10] 10 -none "
echo "#####################"
echo""
echo""

 
echo "Testing GRID with changing thread"
for i in 1 2 3 4 5 6 7 8 9 10; do
echo "Executing with $i number of threads. Grid size 10 "
./gridapp 10 $i -grid | grep elapsed | cut -d' ' -f4  >> ./grid_count.csv
done
 
echo "Testing GRID with changing size"
for i in 2 3 4 5 6 7 8 9 10; do
echo "Executing with grid size $i and 10 number of threads. "
./gridapp $i 10 -grid | grep elapsed | cut -d' ' -f4  >> ./grid_size.csv
done
 
 
echo""
echo""
echo "FINISHED EXECUTING: "
echo""
echo " ./gridapp 10 [1-10] -grid "
echo " ./gridapp [1-10] 10 -grid "
echo "#####################"
echo""
echo"" 
 
echo "Testing ROW with changing thread"
for i in 1 2 3 4 5 6 7 8 9 10; do
echo "Executing with $i number of threads. Grid size 10 "
./gridapp 10 $i -row | grep elapsed | cut -d' ' -f4 >> ./row_count.csv
done
 
echo "Testing ROW with changing size"
for i in 2 3 4 5 6 7 8 9 10; do
echo "Executing with grid size $i and 10 number of threads. "
./gridapp $i 10 -row | grep elapsed | cut -d' ' -f4  >> ./row_size.csv
done
 
 
echo""
echo""
echo "FINISHED EXECUTING: "
echo""
echo " ./gridapp 10 [1-10] -row "
echo " ./gridapp [1-10] 10 -row "
echo "#####################"
echo""
echo""
echo" done."
echo""


echo "Testing CELL with changing thread"
for i in 1 2 3 4 5 6 7 8 9 10; do
echo "Executing with $i number of threads. Grid size 10 "
./gridapp 10 $i -cell | grep elapsed | cut -d' ' -f4 >> ./cell_count.csv
done
 
echo "Testing CELL with changing size"
for i in 2 3 4 5 6 7 8 9 10; do
echo "Executing with grid size $i and 10 number of threads. "
./gridapp $i 10 -cell | grep elapsed | cut -d' ' -f4 >> ./cell_size.csv
done
 
 
echo""
echo""
echo "FINISHED EXECUTING: "
echo""
echo " ./gridapp 10 [1-10] -cell "
echo " ./gridapp [1-10] 10 -cell "
echo "#####################"
echo""

