#!/bin/bash

echo 'select one option:'
echo '1.add new task to temp'
echo '2.show task'
echo '3.remove last task'
echo '4.save temp to task file'
echo '5.exit'
echo '*******************'
while [ true ]
do
read -p "Enter number of option:" input

if [ $input == 1 ]
then
   read -p "Enter your task:" task
   echo $task >> temp.txt
elif [ $input == 2 ]
then
   cat temp.txt
elif [ $input == 3 ]
then
   sed -i '$d' temp.txt
elif [ $input == 4 ]
then
   cp temp.txt task.txt
elif [ $input == 5 ]
then
   exit
else
   echo 'invalid input'
fi
done
read readkey
