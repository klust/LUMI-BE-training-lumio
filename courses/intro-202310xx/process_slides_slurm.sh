#! /usr/bin/env bash

# Some variables.
slidestack="LUMI-BE-Intro-202310XX-07-slurm"

slidealias=( \
    "Title" \
    "WhatIsSlurm" \
    "SlurmConceptsPhys" \
    "SlurmConceptsLog" \
    "BatchScheduler" \
    "Partitions_1" \
    "Partitions_2" \
    "Partitions_3" \
    "Fairness" \
)

#
# Automatically set variables
#
training="${PWD##*/LUMI-BE-training-lumio/courses/}"
if [[ "$training" == "$PWD" ]]
then
    echo "Failed to find the name of the course."
    exit
fi

#
# Do the actual work of renaming the slides
#

cd "../../public/$training/img/$slidestack"

number=0
for name in ${slidealias[@]}
do 
    number=$((number+1))
    if [ -f "Dia$number.png" ]
    then
        echo "Moving Dia${number}.png to ${name}.png"
        /bin/mv -f "Dia${number}.png" "${name}.png"
    fi
done

