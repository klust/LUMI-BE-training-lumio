#! /usr/bin/env bash

projectid="465000095"

training="${PWD##*/LUMI-BE-training-lumio/courses/}"
if [[ "$training" == "$PWD" ]]
then
    echo "Failed to find the name of the course."
    exit
fi

echo "Clearing data for the training '$training' from LUMI-O."

echo "- Clearing lumi-${projectid}-public..."
rclone purge "lumi-${projectid}-public:$training"
echo "- Clearing lumi-${projectid}-private..."
rclone purge "lumi-${projectid}-private:$training"
