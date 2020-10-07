#!/bin/bash
#echo "Hello World !"
targetArray=($(ls /home/slam/75_6/AD50 -r))
sourceArray=($(ls /home/slam/50/50 -r))
targetNumber=1
i=1
while(($i<=53))
do
    echo $i:  ${targetArray[$i-1]}
    echo "slam" | sudo cp /home/slam/50/50/${sourceArray[$i-1]}/*.ASC /home/slam/75_6/AD50/${targetArray[$i-1]}
    let ++i
done

k=1
while(($k<=53))
do
    echo $k:  ${sourceArray[$k-1]}
    let k++
done



