#!/bin/bash -x
echo "=============Welcome to Snake and ladder program=============="
positionOfPlayer=0
     function diceRoll()
                  {
                      #while((1))
                      #do
                          dieResult=$((RANDOM % 6 + 1))
                          positionOfPlayer=$(($positionOfPlayer+$dieResult))
                          echo "positionOfPlayer:$positionOfPlayer"
                     #done
                  }
       diceRoll
