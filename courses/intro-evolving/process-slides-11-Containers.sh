#! /usr/bin/env bash

# Some variables.
slidestack="LUMI-BE-Intro-evolving-11-Containers"

slidealias=( \
    "Title" \
    "ContainersIntro" \
    "ContainersNotProvide" \
    "ContainersCanDoOnLUMI" \
    "ContainersStoragePython" \
    "ContainersManaging_1" \
    "ContainersManaging_2" \
    "ContainersExamplePull_1" \
    "ContainersExamplePull_2" \
    "ContainersExamplePull_3" \
    "ContainersManaging_3" \
    "ContainersInteractingShell" \
    "ContainersExampleShell" \
    "ContainersInteractingExec" \
    "ContainersExampleExec" \
    "ContainersInteractingRun" \
    "ContainersExampleRun" \
    "ContainersInteracting" \
    "ContainersRunning" \
    "ContainersEnvironmentEnhancement_1" \
    "ContainersEnvironmentEnhancement_2" \
    "ContainersEnvironmentEnhancement_3" \
    "ContainersExampleWrapper_1" \
    "ContainersExampleWrapper_2" \
    "ContainersExampleWrapper_3" \
    "ContainersExampleWrapper_4" \
    "ContainersExampleWrapper_5" \
    "ContainersExampleWrapper_6" \
    "ContainersEnvironmentEnhancement_4" \
    "ContainersExtendVenv" \
    "ContainersExtendVenvDemo1" \
    "ContainersExtendVenvDemo2" \
    "ContainersExtendVenvDemo3_1" \
    "ContainersExtendVenvDemo3_2" \
    "ContainersExtendVenvDemo3_3" \
    "ContainersExtendVenvDemo3_4" \
    "ContainersExtendVenvDemo4_1" \
    "ContainersExtendVenvDemo4_2" \
    "ContainersExtendVenvDemo4_3" \
    "ContainersExtendVenvDemo5" \
    "ContainersLimitations" \
    "Questions" \
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

