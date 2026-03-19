#! /usr/bin/env bash

# Some variables.
slidestack="LUMI-BE-Intro-evolving-12-FormerAIContainers"

slidealias=( \
    "Title" \
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

