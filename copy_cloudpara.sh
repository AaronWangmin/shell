#!/bin/bash
#echo "Hello World !"

sourceString="/home/slam/20200928131810_TUDETIAN_SHANGHAI_AFA1119_cloud.para"
targetString="/home/slam/75_6/AD50"

sourceArray=($(ls $sourceString -r))
targetArray=($(ls $targetString -r))

countOfSource=${#sourceArray[*]}
countOfTarget=${#targetArray[*]}

echo "the count of source: ${#sourceArray[*]}"
echo "the count of target: ${#targetArray[*]}"

sourceStart=0
targetStart=0

while(($targetStart<11))
do
    echo $targetStart:  ${targetArray[$targetStart]}

    echo "slam" | sudo cp $sourceString $targetString/${targetArray[$targetStart]}

    echo "slam" | sudo mv $targetString/${targetArray[$targetStart]}/*cloud.para $targetString/${targetArray[$targetStart]}/${targetArray[$targetStart]}_cloud.para

#   echo "slam" | sudo rm $targetString/${targetArray[$targetStart]}/*cloud.para

    let targetStart++
    let sourceStart++ 
done

sourceStart=0
while(($sourceStart<countOfSource))
do
    echo $sourceStart:  ${sourceArray[$sourceStart]}	
    let sourceStart++
done


#sudo cp /home/slam/20200928131810_TUDETIAN_SHANGHAI_AFA1119_cloud.para /home/slam/75_6/AD50/20201008110030_WANGMIN_SHANGHAI_AFA1119
#sudo mv 
