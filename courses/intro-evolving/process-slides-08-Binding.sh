#! /usr/bin/env bash

# Some variables.
slidestack="LUMI-BE-Intro-evolving-08-Binding"

slidealias=( \
    "Title" \
    "WhatAbout" \
    "WhenDone" \
    "WhyNeedThis" \
    "CoreNumbering" \
    "GPUNumbering_1" \
    "GPUNumbering_2" \
    "GPUNumberingRemarks" \
    "SlurmTaskDistribution_1" \
    "SlurmTaskDistribution_2" \
    "SlurmTaskCPU" \
    "SlurmTaskCPUMasks" \
    "SlurmTaskCPUExamples" \
    "SlurmTaskGPU" \
    "MPICHRankRedistribution" \
    "OpenMPBinding" \
    "OpenMPBindingPlaces" \
    "OpenMPBindingProcBind" \
    "ROCRGPU" \
    "ROCRGPUMap_1" \
    "ROCRGPUMap_2" \
    "ROCRGPURing" \
    "ROCRMechanism" \
    "ROCRMechanismLinearGCD1" \
    "ROCRMechanismLinearGCD2" \
    "ROCRMechanismLinearCCD1" \
    "ROCRMechanismLinearCCD2" \
    "ROCRMechanismLinearCCD7" \
    "ROCRMechanismGreenRing1" \
    "ROCRMechanismGreenRing2" \
    "ROCRMechanismGreenRing3" \
    "ROCRMechanismAllocateByResource" \
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
