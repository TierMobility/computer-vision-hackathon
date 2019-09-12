#!/bin/bash

source ./setupEnv.sh

while getopts :l:r: option; do
        case "${option}" in
            l) LOCAL_PATH=${OPTARG};;
            r) REMOTE_PATH=${OPTARG};;
        esac
    done

if [ -n "$LOCAL_PATH" ] && [ -n "$REMOTE_PATH" ]
then
    ABSOLUTE_REMOTE_PATH=/notebooks/data/$REMOTE_PATH
    echo "Uploading folder $LOCAL_PATH to $ABSOLUTE_REMOTE_PATH"
    sshpass -p $CONTAINER_ROOT_PASSWORD ssh $CONTAINER_USER@$HOST -p $((20000+$TEAM_ID)) "mkdir -p $ABSOLUTE_REMOTE_PATH"
    sshpass -p $CONTAINER_ROOT_PASSWORD scp -r -P $((20000+$TEAM_ID)) $LOCAL_PATH $CONTAINER_USER@$HOST:$ABSOLUTE_REMOTE_PATH
else
    echo "Usage: ./uploadFolder.sh -l <LOCAL_PATH> -r <REMOTE_PATH>"
fi