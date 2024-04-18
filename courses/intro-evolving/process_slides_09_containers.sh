#! /usr/bin/env bash

# Some variables.
slidestack="LUMI-BE-Intro-evolving-09-containers"

slidealias=( \
    "Title" \
    "ContainersIntro" \
    "ContainersNotProvide" \
    "ContainersCanDoOnLUMI" \
    "ContainersManaging_1" \
    "ContainersExamplePull_1" \
    "ContainersExamplePull_2" \
    "ContainersExamplePull_3" \
    "ContainersManaging_2" \
    "ContainersInteracting" \
    "ContainersExampleShell" \
    "ContainersExampleExec" \
    "ContainersExampleRun" \
    "ContainersRunning" \
    "ContainersEnvironmentEnhancement_1" \
    "ContainersEnvironmentEnhancement_2" \
    "ContainersExampleWrapper_1" \
    "ContainersExampleWrapper_2" \
    "ContainersExampleWrapper_3" \
    "ContainersExampleWrapper_4" \
    "ContainersExampleWrapper_5" \
    "ContainersExampleWrapper_6" \
    "ContainersPrebuiltAI" \
    "RunningAiComplicated" \
    "RunningAIEasyBuild_1" \
    "RunningAIEasyBuild_2" \
    "RunningAIExampleNoEasyBuild_1" \
    "RunningAIExampleNoEasyBuild_2" \
    "RunningAIExampleNoEasyBuild_3" \
    "RunningAIExampleEasyBuild" \
    "ExtendingCotainr" \
    "ExtendingSingularityBuild" \
    "ExtendingPVenv_1" \
    "ExtendingPVenv_2" \
    "ContainersLimitations" \
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
