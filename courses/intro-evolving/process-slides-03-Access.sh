#! /usr/bin/env bash

# Some variables.
slidestack="LUMI-BE-Intro-evolving-03-Access"

slidealias=( \
    "Title" \
    "WhoPays" \
    "ProjectsUsers_1" \
    "ProjectsUsers_2" \
    "ProjectManagement" \
    "FileSpacesUser" \
    "FileSpacesProject" \
    "FileSpacesQuota" \
    "FileSpacesFurtherInfo" \
    "Access" \
    "OpenOnDemand_01" \
    "OpenOnDemand_02" \
    "OpenOnDemand_03" \
    "OpenOnDemand_04" \
    "OpenOnDemand_05" \
    "OpenOnDemand_06" \
    "OpenOnDemand_07" \
    "OpenOnDemand_08" \
    "OpenOnDemand_09" \
    "DataTransfer" \
    "LUMIOWhatIs_1" \
    "LUMIOWhatIs_2" \
    "LUMIOAccessing" \
    "LUMIOAccessingKeyGeneration" \
    "LUMIOCredentialsWeb_01" \
    "LUMIOCredentialsWeb_02" \
    "LUMIOCredentialsWeb_03" \
    "LUMIOCredentialsWeb_04" \
    "LUMIOCredentialsWeb_05" \
    "LUMIOCredentialsWeb_06" \
    "LUMIOCredentialsWeb_07" \
    "LUMIOConfiguringTools" \
    "LUMIORclone" \
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
else
    echo "Processing slides in public/$training/img/$slidestack..."
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

