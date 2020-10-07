#!/bin/bash
#echo "Hello World !"

targetArray=($(ls /home/slam/75_6/AD50 -r))
sourceArray=($(ls /home/slam/50/50 -r))

i=0
while(($i<53))
do
    echo $i:  ${targetArray[$i]}
    echo "slam" | sudo cp /home/slam/50/50/${sourceArray[$i]}/*.ASC /home/slam/75_6/AD50/${targetArray[$i]}
    let ++i
done

k=0
while(($k<53))
do
    echo $k:  ${sourceArray[$k]}
    let k++
done



