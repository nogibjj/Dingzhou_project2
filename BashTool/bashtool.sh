 #!/bin/bash

while read line
do
  # read csv file
  col1=$(echo ${line} | cut -d , -f 1)
  col2=$(echo ${line} | cut -d , -f 2)
  col3=$(echo ${line} | cut -d , -f 3)
  col4=$(echo ${line} | cut -d , -f 4)
  col5=$(echo ${line} | cut -d , -f 5)
  col6=$(echo ${line} | cut -d , -f 6)

  # get data
  echo "date:$col1 county:$col2 state:$col3 fips:$col4 cases:$col5 deaths:$col6" >> rec.txt
done < $1

# count how many cases in Illinois, Cook
grep 2020-02 covid_data.csv | awk -F "," '{if($2=="Cook" && $3=="Illinois") sum+=$5} END {print sum}'  >> new.txt 
