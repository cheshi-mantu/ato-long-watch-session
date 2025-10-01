#!/bin/bash
src1=$(ls src1)

if [ -z $1 ]; then
    DELAY=5
else
    DELAY=$1
fi

printenv | grep ALLURE_

for file in $src1
do 
    cp ./src1/${file} allure-results/
    echo "We tried ./src1/${file}"
    echo "I'm tired, I need to cooldown for ${DELAY} seconds"
    sleep ${DELAY}
    echo "${ALLURE_LAUNCH_URL}"
done

