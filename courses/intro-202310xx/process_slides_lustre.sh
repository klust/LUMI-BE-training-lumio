#! /usr/bin/env bash

# Some variables.
slidestack="LUMI-BE-Intro-202310XX-10-lustre"

slidealias=( \
    "Title" \
    "FileSystemLumi" \
    "LustreBuildingBlocks1" \
    "LustreBuildingBlocks2" \
    "LustreFileStriping" \
    "LustreFileAccess" \
    "LustreParallelismKey" \
    "LustreDetermineParameters" \
    "LustreManageStriping1" \
    "LustreManageStriping2" \
    "LustreManageStriping3" \
    "LustreManageStriping4" \
    "LustreMDS" \
    "LumiLustreOnLumi" \
    "LumiStorageAreas" \
    "LumiObjectStorage" \
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

