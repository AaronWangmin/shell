#!/bin/bash
#echo "Hello World !"

sourceString="/home/slam/gps_asc_09"
targetString="/media/slam/98480e07-d16d-4044-8d1c-73c059e1998a"

sourceArray=($(ls $sourceString -r))
targetArray=($(ls $targetString -r))


#sourceArray=($(ls /home/slam/gps_asc_09 -r))
#targetArray=($(ls /media/slam/98480e07-d16d-4044-8d1c-73c059e1998a -r))


countOfSource=${#sourceArray[*]}
countOfTarget=${#targetArray[*]}

echo "the count of source: ${#sourceArray[*]}"
echo "the count of target: ${#targetArray[*]}"

sourceStart=0
targetStart=16

while(($targetStart<69))
do
    echo $targetStart:  ${targetArray[$targetStart]}

#    echo "slam" | sudo cp /home/slam/gps_asc_09/${sourceArray[$sourceStart]} /media/slam/98480e07-d16d-4044-8d1c-73c059e1998a/${targetArray[$targetStart]}/02_INS_RAW
    let targetStart++
    let sourceStart++ 
done

sourceStart=0
while(($sourceStart<countOfSource))
do
    echo $sourceStart:  ${sourceArray[$sourceStart]}	
    let sourceStart++
done







