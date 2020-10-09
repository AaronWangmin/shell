#!/bin/bash
#echo "Hello World !"

sourceArray=($(ls /home/slam/BASE_INFO -r))
targetArray=($(ls /media/slam/98480e07-d16d-4044-8d1c-73c059e1998a -r))


countOfSource=${#sourceArray[*]}
countOfTarget=${#targetArray[*]}

echo "the count of source: ${#sourceArray[*]}"
echo "the count of target: ${#targetArray[*]}"

i=4
while(($i<15))
do
    echo $i:  ${targetArray[$i]} 
    echo "slam" | sudo cp /home/slam/BASE_INFO/* /media/slam/98480e07-d16d-4044-8d1c-73c059e1998a/${targetArray[$i]}/07_BASE_INFO
  
    let ++i
done





