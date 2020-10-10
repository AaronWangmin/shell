#!/bin/bash
#echo "Hello World !"

# 1th step of 3: setup the the File director of source and target 
sourceString="/home/slam/50/50" 
targetString="/home/slam/75_6/AD50"

sourceArray=($(ls $sourceString -r))
targetArray=($(ls $targetString -r))

countOfSource=${#sourceArray[*]}
countOfTarget=${#targetArray[*]}

echo "the count of source: ${#sourceArray[*]}"
echo "the count of target: ${#targetArray[*]}"

# 2th step of 3:setup the the start  of source and target
sourceStart=0
targetStart=11

# 3th step of 3:setup the the end  of target
while(($targetStart<64))
do
    echo $targetStart:  ${targetArray[$targetStart]}

    echo "slam" | sudo cp $sourceString/${sourceArray[$sourceStart]}/*.ASC $targetString/${targetArray[$targetStart]}

    #echo "slam" | sudo rm $targetString/${targetArray[$targetStart]}/*.ASC

    let targetStart++
    let sourceStart++ 
done

sourceStart=0
while(($sourceStart<countOfSource))
do
    echo $sourceStart:  ${sourceArray[$sourceStart]}	
    let sourceStart++
done
