#!/bin/bash

while true
do

 read -p "Please enter 1 for running apachee container, 2 for numPy, 3 for Pandas or 4 for jupyter notes: " user
 if [ $user -eq "1" ];
 then
   cd ApacheDocker
   docker build . -t apachee-server
   echo "=============================================================================================================================== "
   echo "=============================================================================================================================== "
   echo "The existing docker images on the system are: "
   echo "`docker images`"
   echo "You can run the command \"docker run -d -t --name <alias of the docker> <image id>\" in order to run the container"
   echo "Then hit the command \" docker exec -it <alias of the docker> bash\" to open an interacted bash shell with the container"
   break
 elif [ $user -eq "2" ];
 then
  cd NymPyDocker
  docker build . -t numpy
   echo "=============================================================================================================================== "
   echo "=============================================================================================================================== "
   echo "The existing docker images on the system are: "
   echo "`docker images`"
   echo "You can run the command \"docker run -d -t --name <alias of the docker> <image id>\" in order to run the container"
   echo "Then hit the command \" docker exec -it <alias of the docker> bash\" to open an interacted bash shell with the container"
  break
 elif [ $user -eq "3" ];
 then
  cd PandaDocker
  docker build . -t panda
   echo "=============================================================================================================================== "
   echo "=============================================================================================================================== "
   echo "The existing docker images on the system are: "
   echo "`docker images`"
   echo "You can run the command \"docker run -d -t --name <alias of the docker> <image id>\" in order to run the container"
   echo "Then hit the command \" docker exec -it <alias of the docker> bash\" to open an interacted bash shell with the container"
  break
 elif [ $user -eq "4" ];
 then
  cd JupiterNotebooks
  docker build . -t jupyternotebooks
  docker run -it -p 8888:8888 jupyternotebooks
  echo "=============================================================================================================================== "
  echo "=============================================================================================================================== "
  echo "The existing docker images on the system are: "
  echo "`docker images`"
  echo "You can run the command \"docker run -d -t --name <alias of the docker> <image id>\" in order to run the container"
  echo "Then hit the command \" docker exec -it <alias of the docker> bash\" to open an interacted bash shell with the container"
  break
else
   echo "Please choose a number from the list"
  break 
fi
done
