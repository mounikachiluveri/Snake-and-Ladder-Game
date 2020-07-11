#!/bin/bash -x
echo "=============Welcome to Snake and ladder program=============="
NO_PLAY=0
LADDER=1
SNAKE=2
positionOfPlayer=0
chance=1
WINNING_POSITION=100
dieResult=0
checkOptions=0
POSITION=0
     function diceRoll()
                        {
                          dieResult=$((RANDOM % 6 + 1))
                          checkOptions=$((RANDOM % 3))
                                   case $checkOptions in
                                         $NO_PLAY)
                                                   positionOfPlayer=$((positionOfPlayer+0));;
                                         $LADDER)

                                                    if [ $((positionOfPlayer+$dieResult)) -gt $WINNING_POSITION ]
                                                    then
                                                            positionOfPlayer=$((positionOfPlayer-$dieResult))
                                                    else
                                                            positionOfPlayer=$((positionOfPlayer+$dieResult))
                                                    fi;;

                                         $SNAKE)

                                                    if [ $((positionOfPlayer-$dieResult)) -lt $POSITION ]
                                                    then
                                                           positionOfPlayer=$POSITION
                                                    else
                                                           positionOfPlayer=$((positionOfPlayer-$dieResult))
                                                    fi;;
                                   esac

                         }


    function switchToPlayer()
                           {
                               while [ $positionOfPlayer -le $WINNING_POSITION ]
                               do
                                       if [ $chance -eq 1 ]
                                       then
                                           diceRoll
                                            echo "Player position" $positionOfPlayer
                                                     if [ $positionOfPlayer -eq $WINNING_POSITION ]
                                                     then

                                                             echo "player win"
                                                      break
                                                      fi
                                     fi
                            done
                         }
switchToPlayer
