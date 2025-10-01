#!/bin/bash
src1=$(ls src1)

printenv | grep ALLURE_

for file in $src1
do 
    cp ./src1/${file} allure-results/
    echo "We tried ./src1/${file}"
    sleep 10
    echo "${ALLURE_LAUNCH_URL}"
done

