#! /usr/bin/env bash

# Some variables.
slidestack="LUMI-BE-Intro-202310XX-03-access"

slidealias=( \
    "Title" \
    "WhoPays" \
    "ProjectsUsers_1" \
    "ProjectsUsers_2" \
    "ProjectManagement" \
    "FileSpaces_1" \
    "FileSpaces_2" \
    "Access" \
    "DataTransfer" \
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
    echo "Moving Dia${number}.png to ${name}.png"
    /bin/mv -f "Dia${number}.png" "${name}.png"
done

