#! /usr/bin/env bash

# Some variables.
slidestack="LUMI-BE-Intro-evolving-02-CPE"

slidealias=( \
    "Title" \
    "WhyKnow" \
    "OperatingSystem" \
    "LowNoiseMode" \
    "ProgrammingModels" \
    "DevelopmentEnvironment" \
    "AMDTools" \
    "CrayCompilingEnv" \
    "ScientificLibraries" \
    "CrayMPI" \
    "CrayMPIGPU" \
    "Lmod" \
    "CompilerWrappers" \
    "SelectingCPEVersion" \
    "TargetModules" \
    "PrgEnvCompilerModules" \
    "GettingHelp" \
    "ChatGPT" \
    "OtherModules" \
    "WarningLibraryPath" \
    "WarningOrderMatters" \
    "NoteWrappers" \
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
    echo "Moving Dia${number}.png to ${name}.png"
    /bin/mv -f "Dia${number}.png" "${name}.png"
done

