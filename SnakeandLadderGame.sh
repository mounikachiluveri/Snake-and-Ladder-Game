#!/bin/bash -x
echo "=============Welcome to Snake and ladder program=============="
NO_PLAY=0
LADDER=1
SNAKE=2
positionOfPlayer=0
POSITION=0
               function diceRoll()
                  {
                        while((1))
                        do
                          dieResult=$((RANDOM % 6 + 1))
                          checkOptions=$((RANDOM % 3))
                                   case $checkOptions in
                                        $NO_PLAY)
                                                   positionOfPlayer=$((positionOfPlayer+0));;
                                        $LADDER)

                                                   positionOfPlayer=$((positionOfPlayer+$dieResult));;
                                        $SNAKE)

                                                   positionOfPlayer=$((positionOfPlayer-$dieResult));;
                                     esac

                                  echo "positionOfPlayer:$positionOfPlayer"
                    done
                  }

              diceRoll
