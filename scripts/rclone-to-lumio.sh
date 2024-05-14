#! /usr/bin/env bash

projectid="465000095"
bucket="training-materials-web"

training="${PWD##*/LUMI-BE-training-lumio/courses/}"
if [[ "$training" == "$PWD" ]]
then
    echo "Failed to find the name of the course."
    exit
fi

echo "Pushing data for the training '$training' to LUMI-O."

#
# Push public data
# 
directory="../../public/$training"
repo="lumi-${projectid}-public"
if [ -d $directory ]
then
    echo "Found public data for training '$training', pushing now."
    find $directory -name ".DS_Store" -exec /bin/rm '{}' \;
    rclone mkdir "$repo:$bucket/$training"
    rclone copy --bwlimit ${RCLONE_BWLIMIT:-0} "$directory" "$repo:$bucket/$training"
else
    echo "No public data found for training '$training'."
fi

#
# Push private data
# 
directory="../../private/$training"
repo="lumi-${projectid}-private"
if [ -d $directory ]
then
    echo "Found private data for training '$training', pushing now."
    find $directory -name ".DS_Store" -exec /bin/rm '{}' \;
    rclone mkdir "$repo:$bucket/$training"
    rclone copy --bwlimit ${RCLONE_BWLIMIT:-0} "$directory" "$repo:$bucket/$training"
else
    echo "No private data found for training '$training'."
fi
